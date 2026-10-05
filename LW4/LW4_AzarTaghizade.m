% Azar Taghizade
% Variant 2
% 05.10.2026

%% Task 1(a)

x = -2:0.05:1;
y = -2:0.05:1;

[X, Y] = meshgrid(x, y);

Z = 1 - 2*X.^2 - 3*Y.^2;

figure;
surf(X, Y, Z);

shading interp;

colormap winter;

view(70, 70);

xlabel('x');
ylabel('y');
zlabel('f(x,y)');

title('Task 1(a): f(x,y) = 1 - 2x^2 - 3y^2');

grid on;

%% Task 1(b)

rng(2);

x = (2*rand(1,200)-1).*sqrt(pi/2);
y = (2*rand(1,200)-1).*sqrt(pi/2);

x = sort(x);
y = sort(y);

[X, Y] = meshgrid(x, y);

Z = sin(X.^2 + Y.^2);

figure;
surf(X, Y, Z);

shading interp;

colormap summer;

view(41, 41);

xlabel('x');
ylabel('y');
zlabel('f(x,y)');

title('Task 1(b): f(x,y) = sin(x^2 + y^2)');

grid on;

%% Complementary Task
%% a)

x = -2:0.05:2;
y = -2:0.05:2;

[X, Y] = meshgrid(x, y);
Z = 1 - (X.^2 + Y.^2);

figure(1);
surf(X, Y, Z, 'FaceColor', [0 0 1], ...
     'EdgeColor', 'none');

view(45, 30);
camlight('headlight');
lighting gouraud;

xlabel('x');
ylabel('y');
zlabel('z');
title('a) Surface with camlight');
grid on;

%% b)

figure(2);
surf(X, Y, Z, 'EdgeColor', 'none');
hold on;

[~, contourHandle] = contour(X, Y, Z, 12, 'k', 'LineWidth', 1);
contourHandle.ZLocation = -8;

hold off;

zlim([-8.5 1.5]);
colormap(parula);
view(45, 30);

xlabel('x');
ylabel('y');
zlabel('z');
title('b) Surface with contour');
grid on;

%% c)

figure(3);
s = surf(X, Y, Z, 'FaceColor', [0.20 0.70 0.85], ...
         'EdgeColor', 'none');

alpha(s, 0.45);
view(45, 30);

xlabel('x');
ylabel('y');
zlabel('z');
title('c) Semitransparent surface');
grid on;