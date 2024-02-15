#include "ConcurrenyTest.h"
#include "vcpkg_installed/vcpkg/pkgs/concurrencpp_x64-windows/include/concurrencpp/concurrencpp.h"
#include "timer.h"
#include <iostream>
#include <vector>
#include "vcpkg_installed/vcpkg/pkgs/concurrencpp_x64-windows/include/concurrencpp/forward_declarations.h"

using namespace std;


std::vector<int> create_jobs(int (*func)(int), const std::vector<int>& items, int workers)
{
    /*
    Using concurrencpp from https://github.com/David-Haim/concurrencpp/tree/master
    We loop over our items and pass a reference to an anonymous function
    that returns our expensive operation.
    */
    std::vector<int> newitems;
    concurrencpp::runtime runtime;

    for (int i = 0; i < items.size(); i++)
    {
        auto result = runtime.thread_executor()->submit([func, &items, i]() ->  int {
            return func(items[i]);
            });
        newitems.push_back(result.get());
    }

    return newitems;
}


int expensive_operation(int item)
{
    // An expensive operation that consumes time linearly.
    int i = 0;
    while (i < 1000000)
    {
        i = i + 1;
    }
    return item * -1;
}



std::vector<int> expensive_job(const std::vector<int>& items)
{
    // Saving our expensive output to a new vector.
    std::vector<int> newitems;

    for (int i = 0; i < items.size(); i++)
    {
        int tmp = expensive_operation(items[i]);
        newitems.push_back(tmp);
    }

    return newitems;
}


int main()
{
    std::vector<int> positive_numbers;
    for (int i = 0; i < 10000; i++)
    {
        positive_numbers.push_back(i);
    }

    Timer job_track;
    create_jobs(*expensive_operation, positive_numbers, 30);

    std::cout << "Our concurrent job took " << job_track.elapsed() << " seconds\n";
    job_track.reset();

    expensive_job(positive_numbers);
    std::cout << "Our expensive job took " << job_track.elapsed() << " seconds\n";

    return 0;
}
