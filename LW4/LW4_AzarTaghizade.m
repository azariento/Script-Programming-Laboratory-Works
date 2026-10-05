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

