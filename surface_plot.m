x = [-2:0.1:2]
y = x

[X Y] = meshgrid(x,y)

Z = X.^2 - Y.^2

surface(X, Y, Z, "linewidth", 4)

set(gca, "linewidth", 2, "fontsize", 20, "xlim", [-2 2])

set(gca, "xlabel", text("string", "x", "fontsize", 30))

set(gca, "ylabel", text("string", "y", "fontsize", 30))

text(-3.2, 1, 3, "f(x,y)", "fontsize", 30)

line([0 0], [0 1], [0 2], "linewidth", 5, "color", "red")

text(-0.5, 1.5, 1.8, "Saddle point", "fontsize", 25)

view(35,30)

colormap('bone')
