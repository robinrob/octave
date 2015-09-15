function seq = fibonacci(n)
  seq = [0 1];

  for index=3:n
    val = seq(index - 2) + seq(index - 1);
    seq = [seq val];
  end
end
