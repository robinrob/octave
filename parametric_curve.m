x = linspace(0, 10*pi, 200)';

f = [cos(x), sin(x), exp(-0.5*x)];

plot3(f(:,1), f(:,2), f(:,3), "linewidth", 4)

set(gca, "linewidth", 2, "fontsize", 20);

set(gca, "xlabel", text("string", "x", "fontsize", 30))

set(gca, "ylabel", text("string", "y", "fontsize", 30))

set(gca, "zlabel", text("string", "z","fontsize", 30))

set(gca, "zlim", [0 1.2])

text(0.9, -0.25, 0.9, "t=0", "fontsize", 30)

view(20, 30)

colormap('bone')
