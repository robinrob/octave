function plotpoly(coefficients)
  x = [-10:0.5:10];
  y = polyval(coefficients, x);

  plot(x, y, "linewidth", 5, "color", "red")

  range = max(y) - min(y);
  interval = round(range / 10);

  set(gca, "yaxislocation", "zero")
  set(gca, "xaxislocation", "zero")

  set(gca, "ytick", [min(y):interval:max(y)])
  set(gca, "ylim", [min(0, min(y)) max(y)])

  set(gca, "xtick", [-10:1:10])

  set(gca, "linewidth", 1)
  set(gca, "fontsize", 18)

  xlabel("x", "fontsize", 30)
  ylabel("y", "fontsize", 30)

  % grid on
  box("off")

  c_string = "";
  for index=1:1:length(coefficients)
    c_string = sprintf("%s %.0f x^%d +", c_string, coefficients(index), length(coefficients) - index);
  end
  c_string = c_string(1:length(c_string)-1)

  title(sprintf("x-y plot of: %s", c_string), "fontsize", 20);
end
