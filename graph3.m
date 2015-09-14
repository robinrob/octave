x = [-5.5:0.1:1]

c1 = [2 10.1 0 6]

c2 = [2 10.1 -10.1 6]

f1 = polyval(c1, x);

f2 = polyval(c2, x);

plot(
  x, f1, "linewidth", 5,
  x, f2, "linewidth", 5, "color", "red"
)


set(gca, "xlim", [-5.5 1])

set(gca, "xlabel", text("string", "x"))

set(gca, "ylabel", text("string", "f(x)"))

set(gca, "title", text("string","My favorite polynomial"))

set(gca, "linewidth", 2)


line([-5.16 -4], [-2 -15], "linewidth", 2)

text(-3.9, -23, "root of f_1(x)")

line([0 0], [5 -15], "linewidth", 2)

text(-1.0, -22, "local minimum of\nf_1(x) and f_2(x)")

legend("f(x)")

set(gca, "ytick", [-40:15:60])

grid on

h=figure(1)

W = 8; H = 6;
set(h,'PaperUnits','inches')
set(h,'PaperOrientation','portrait');
set(h,'PaperSize',[H,W])
set(h,'PaperPosition',[0,0,W,H])

FN = findall(h,'-property','FontName');
set(FN,'FontName','/Library/Fonts/Arial');

FS = findall(h,'-property','FontSize');
set(FS,'FontSize',8);

print(h,'-dpng','-color','graph3.png')
