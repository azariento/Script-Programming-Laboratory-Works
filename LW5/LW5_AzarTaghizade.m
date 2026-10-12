% Azar Taghizade
% Variant 2
% 12.10.2026

%% Task 1(a)
students = struct('name', 'Azar', ...
                  'surname', 'Taghizade', ...
                  'group', 'EDIfu-25/2', ...
                  'examResults', [10 10 10; 10 10 10]);

disp('Student 1 information:');
disp(students(1));
disp('Student 1 exam results:');
disp(students(1).examResults);

%% Task 1(b)
students(2) = struct('name', 'Said', ...
                     'surname', 'Mansimov', ...
                     'group', 'EKfu-25/1', ...
                     'examResults', [7 8 9; 8 7 10]);

students(3) = struct('name', 'Harun', ...
                     'surname', 'Babazada', ...
                     'group', 'STfu-26/1', ...
                     'examResults', [9 9 10; 8 9 10]);

disp('Student 2 information:');
disp(students(2));

disp('Student 3 information:');
disp(students(3));

%% Task 1(c)
students(2).examResults(1, 2) = 10;

disp('Student 2 exam results after editing:');
disp(students(2).examResults);

%% Task 2
format bank;

loanSizes = (10000:1000:20000)';
rates = [0.10 0.15 0.20];

loanTable = zeros(length(loanSizes), 4);

loanTable(:, 1) = loanSizes;

for k = 1:3
    loanTable(:, k+1) = loanSizes * rates(k);
end

disp('      Loan(EUR)    Bank 1 (10%)  Bank 2 (15%)  Bank 3 (20%)');
disp(loanTable);
