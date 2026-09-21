% Azar Taghizade
% Variant 2
% 21.09.2026

v1 = (-pi/2:0.5:3*pi)';
v2 = v1 .^ 2;
v3 = sin (v1 + v2);
disp(v3');

Z = rand(3,3);
Z(2,: ) = [];
Z = Z';

t = 0:0.002:1.5;
A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;

s = A .* sin(2*pi*f .* t);
n = sigma .* randn(size(t));
s_noisy = s + n;

selected_samples = s_noisy(s_noisy > U1);

s_filtered = s_noisy;
s_filtered(abs(s_filtered) < U2) = 0;

number_unfiltered = numel(s_noisy);

number_selected = numel(selected_samples);

minimum_voltage = min(s_filtered);
maximum_voltage = max(s_filtered);

A = input('Enter vector A with 10 elements: ');

indices = 1:10;

logical_first = indices >= 6;
logical_second = indices <= 5;

first_part = A(logical_first);
first_part = first_part(end:-1:1);

second_part = A(logical_second);

B = [first_part second_part];

disp('vector B is:');
disp(B);