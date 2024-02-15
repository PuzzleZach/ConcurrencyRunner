import concurrent.futures
from types import FunctionType as function # Could just use Any or Callable
from timer import Timer

def create_jobs(func: function, items: list, workers: int) -> list:
  """
  This function creates a pool of workers to carry out a repetitive task on a list of items.

  Keyword arguments:
  func -- The function we want to be executed against each item in our parameter list.
  items -- A list of items we want to iterate over and call func against.
  workers -- The amount of workers we want to allocate to this thread pool.
  """

  thread_results = []

  with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as exec:
    jobs = [exec.submit(func, item) for item in items]

    concurrent.futures.wait(jobs) # Wait for all the above jobs to finish processing.

    for job in jobs:
      thread_results.append(job.result())

  return thread_results

def expensive_operation(item: int) -> int:
  """
  An expensive operation that consumes time linearly.
  """
  i = 0
  while i < 100000:
    i += 1
  return item * -1

def expensive_jobs(items: list) - > list:
  """
  Simple list generator to build the results from our expensive operation.
  """
  new_items = [expensive_operation(item) for item in items)]
  return new_items
    

if __name__ == "__main__":
  # If we run this from the command line, perform our test.
  positive_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  tracking = Timer()
  tracking.start()
  negative_numbers_1 = expensive_jobs(positive_numbers)
  tracking.stop()
  
  tracking2 = Timer()
  tracking2.start()
  negative_numbers_1 = create_jobs(expensive_operation(), positive_numbers)
  tracking2.stop()

  # We should see a time difference between the 2.
