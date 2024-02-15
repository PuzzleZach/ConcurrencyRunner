import concurrent.futures
from types import FunctionType as function # Could just use Any or Callable
from timer import timer
import logging

logging.basicConfig(level=logging.DEBUG)
timer.set_level(logging.DEBUG)


@timer("create_jobs", unit='s')
def create_jobs(func: function, items: list, workers: int) -> list:
  """
  This function creates a pool of workers to carry out a repetitive task on a list of items.

  Keyword arguments:
  func -- The function we want to be executed against each item in our parameter list.
  items -- A list of items we want to iterate over and call func against.
  workers -- The amount of workers we want to allocate to this thread pool.
  """
  with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as exec:
    jobs = [exec.submit(func, item) for item in items]

    concurrent.futures.wait(jobs) # Wait for all the above jobs to finish processing.

    return [job.result() for job in jobs]


def expensive_operation(item: int) -> int:
  """
  An expensive operation that consumes time linearly.
  """
  i = 0
  while i < 1000000:
    i += 1
  return item * -1


@timer("expensive_jobs", unit='s')
def expensive_jobs(items: list) -> list:
  """
  Simple list generator to build the results from our expensive operation.
  """
  return [expensive_operation(item) for item in items]
    

if __name__ == "__main__":
  # If we run from the command line, perform our test.
  positive_numbers = [x for x in range(10000)]

  create_jobs(expensive_operation, positive_numbers, 30)
  expensive_jobs(positive_numbers)

  # We should see a time difference between the 2.