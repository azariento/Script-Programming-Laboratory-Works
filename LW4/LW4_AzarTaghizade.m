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
