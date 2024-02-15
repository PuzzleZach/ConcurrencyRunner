// ConcurrenyTest.h : Include file for standard system include files,
// or project specific include files.

#pragma once

#include <vector>

// TODO: Reference additional headers your program requires here.
std::vector<int> create_jobs(int(*func), const std::vector<int>& items, int workers);
int expensive_operation(int item);
std::vector<int> expensive_job(const std::vector<int>& items);