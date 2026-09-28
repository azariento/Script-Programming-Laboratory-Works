% Azar Taghizade
% Variant 2
% 28.09.2026

%% Task 1
x = 0:0.1:2*pi;
f1 = x.^3 + tan(x);
f2 = exp(x);
f3 = exp(3 * x);
f4 = exp(5 * x);

figure(1);
plot(x, f1, 'm-', 'LineWidth', 1.5);
grid on;
xlabel('x');
ylabel('f_1(x)');
title('f_1(x) = x^3 + tan(x)');
axis([min(x) max(x) min(f1) max(f1)]);
legend('f_1(x) = x^3 + tan(x)', 'Location', 'best');

figure(2);
plot(x, f2, 'b-o', ...
     x, f3, 'r--s', ...
     x, f4, 'g:^', ...
     'LineWidth', 1.2);
grid on;
xlabel('x');
ylabel('Function Value');
title('Exponential Functions');
axis([min(x) max(x) 0 max(f4)]);
legend('f_2(x) = e^x', ...
       'f_3(x) = e^{3x}', ...
       'f_4(x) = e^{5x}', ...
       'Location', 'northwest');

%----------------------------------------------
marks = [8  7  9 10;
         6  8  7  9;
         9 10  8  9;
         5  7  6  8;
        10  9 10  9;
         7  6  8  7];
numStudents = size(marks, 1);
maxMark = 10;

totalMarks = sum(marks, 2);

figure(3);
subplot(2,1,1);

bar(marks);

grid on;

xlabel('Student number');
ylabel('Mark');

title('Exam results of six students');

axis([0.5 numStudents + 0.5 0 maxMark + 1]);

legend('Exam 1', 'Exam 2', 'Exam 3', 'Exam 4', ...
       'Location', 'bestoutside');

subplot(2,1,2);

bar(totalMarks);

grid on;

xlabel('Student number');
ylabel('Sum of exam marks');

title('Total exam marks of each student');

axis([0.5 numStudents + 0.5 0 max(totalMarks) + 2]);


%% Complementary Task

t = 0:0.002:1.5;
A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;

s = A .* sin(2*pi*f .* t);
n = sigma .* randn(size(t));
s_noisy = s + n;

s_filtered = s_noisy;
s_filtered(abs(s_filtered) < U2) = 0;

above_U1 = s_noisy > U1;

maximum_voltage = max(s_noisy);
minimum_voltage = min(s_noisy);

max_locations = s_noisy == maximum_voltage;
min_locations = s_noisy == minimum_voltage;

figure;

subplot(2,2,1);

plot(t, s_noisy, 'k-', 'DisplayName', 'Original signal');
hold on;

plot(t, s_filtered, 'b:', 'DisplayName', 'Filtered signal');

yline(U1, '-', 'U_1', 'DisplayName', 'U_1');
yline(U2, 'r--', 'U_2', 'DisplayName', 'U_2');

grid on;

xlabel('Time (s)');
ylabel('Voltage (V)');
title('Original and Filtered Signals');

legend('Location', 'southeast');

xlim([min(t) max(t)]);

y_min_1 = min([s_noisy, s_filtered, U1, U2]);
y_max_1 = max([s_noisy, s_filtered, U1, U2]);

ylim([y_min_1 - 0.5, y_max_1 + 0.5]);

hold off;

subplot(2,1,2);

stem(t(above_U1), s_noisy(above_U1), ...
    'DisplayName', 'Samples above U_1');

hold on;

plot(t(max_locations), s_noisy(max_locations), ...
    'o', ...
    'MarkerSize', 8, ...
    'LineStyle', 'none', ...
    'DisplayName', 'Maximum voltage');

plot(t(min_locations), s_noisy(min_locations), ...
    'gd', ...
    'MarkerSize', 8, ...
    'LineStyle', 'none', ...
    'DisplayName', 'Minimum voltage');

grid on;

xlabel('Time (s)');
ylabel('Voltage (V)');
title('Original Signal Samples Exceeding U_1');

legend('Location', 'southeast');

xlim([min(t) max(t)]);

y_min_2 = min([s_noisy(above_U1), minimum_voltage, maximum_voltage]);
y_max_2 = max([s_noisy(above_U1), minimum_voltage, maximum_voltage]);

ylim([y_min_2 - 0.5, y_max_2 + 0.5]);

hold off;
