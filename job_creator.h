#ifndef JOB_CREATOR_H
#define JOB_CREATOR_H
#include <vector>

std::vector<int> create_jobs(int (*func), const std::vector<int>& items, int workers);
int expensive_operation(int item);
std::vector<int> expensive_job(const std::vector<int>& items);

#endif