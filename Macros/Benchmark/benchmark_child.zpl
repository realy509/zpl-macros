# benchmark_child.zpl
# This macro contains only the workload to be called by the parent.

# Retrieve the number of iterations from the parent's buffer.
iterations = CALD(1)

# --- Workload ---
# This is the same computationally intensive task as in the parent.
x = 1.01
FOR i, 1, iterations, 1
    y = x + 0.0001
    x = y
NEXT

# This child macro produces no text output.