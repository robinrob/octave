x = [-5.5:0.1:1]

c1 = [2 10.1 0 6]

c2 = [2 10.1 -10.1 6]

f1 = polyval(c1, x);

f2 = polyval(c2, x);

plot(x, f1, "linewidth", 5, x, f2, "linewidth", 5, "color", "red")
