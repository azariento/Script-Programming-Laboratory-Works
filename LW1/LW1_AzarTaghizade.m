% Azar Taghizade
% EDIfu-25/2
% 14.09.2026
% https://github.com/azariento/Script-Programming-Laboratory-Works/commit/1f67258b81989140e0eb0e1fd7715899f4e39acb

%% Mandatory Task

% Example Code
x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]    |    F_2 [-x-]')

% Using help-search methods
help sin
doc sin
help title

% Examining linspace, size and max
doc linspace
doc size
doc max

%% Complementary Task

% SLast digit of Student ID
N = 2;

% Creating Vector
v = (N+1):0.5:(N+4);

% Creating 3x3 matrix
A = [N   N+1 N+2;
     N+3 N+4 N+5;
     N+6 N+7 N+8];

% Selecting green spaces
first_diagram = A(3,2);
second_diagram = A(2:3,1:2);
third_diagram = A([1 3],[1 3]);

% Concatenate matrix A with the vector
v_modified = v(1:3);
combined = [A; v_modified];