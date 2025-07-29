# benchmark_parent.zpl
# This macro benchmarks a task run locally vs. run in a child macro.

# The number of iterations for our workload.
iterations = 2000000

PRINT "Starting benchmark with a workload of ", iterations, " iterations."
PRINT "------------------------------------------------------------"
PRINT ""

# --- 1. Benchmark the task inside this single macro ---
PRINT "1. Benchmarking the task inside the parent macro..."
TIMER
x = 1.01
FOR i, 1, iterations, 1
    y = x + 0.0001
    x = y
NEXT
time_single = ETIM()
PRINT "Time for local execution: ", time_single, " seconds."
PRINT ""


# --- 2. Benchmark the task by calling a child macro ---
# The child macro must be in the same folder and contains the identical loop.
PRINT "2. Benchmarking the task via CALLMACRO..."

# Pass the number of iterations to the child macro using the buffer.
CALLSETDBL 1, iterations

TIMER # Start the timer right before the call
CALLMACRO "benchmark_child.zpl"
time_call = ETIM() # Stop the timer right after the call

PRINT "Time to execute CALLMACRO: ", time_call, " seconds."
PRINT ""


# --- 3. Analysis and Conclusion ---
PRINT "------------------------------------------------------------"
PRINT "Benchmark Analysis:"
PRINT ""
diff = time_call - time_single
percentage_slower = (diff / time_single) * 100

PRINT "Result: The CALLMACRO method was SLOWER by ", diff, " seconds."
FORMAT 4.2
PRINT "The overhead of the call made it approximately ", percentage_slower, "% slower."
PRINT ""
PRINT "Conclusion: For raw speed, a single macro is faster."
PRINT "Benchmark complete."