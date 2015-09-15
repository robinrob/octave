function plotpoly(coefficients)
  x = linspace(-4, 4, 40);

  y = polyval(coefficients, x);

  plot(x, y, "linewidth", 5, "color", "red")

  x_interval = (max(x) - min(x)) / 20;

  y_range = max(y) - min(y);
  y_interval = round(y_range / 10);

  set(gca, "yaxislocation", "zero")
  set(gca, "xaxislocation", "zero")

  set(gca, "ytick", round(min(y):y_interval:max(y)))
  set(gca, "ylim", [min(0, min(y)) max(y)])

  set(gca, "xtick", min(x):x_interval:max(x))

  set(gca, "linewidth", 1)
  set(gca, "fontsize", 18)

  % xlabel("x", "fontsize", 20)
  % ylabel("y", "fontsize", 20)

  % grid on
  box("off")

  c_string = "";
  for index=1:1:length(coefficients)
    c_string = sprintf("%s %.0f x^%d +", c_string, coefficients(index), length(coefficients) - index);
  end
  c_string = c_string(1:length(c_string)-1);

  title(sprintf("x-y plot of: %s", c_string), "fontsize", 20);
end
