function plotfib(n)
  seq = fibonacci(n)

  x = [1:1:n]

  scatter(x, seq, 10, "red", "filled")
end
