% Azar Taghizade
% Variant 2
% 21.09.2026

v1 = (-pi/2:0.5:3*pi)';
v2 = v1 .^ 2;
v3 = sin (v1 + v2);
disp(v3');