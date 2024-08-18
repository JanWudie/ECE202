% Ian Woodbury
% 12/06/2021
% ECE 202 Project 1 Phase 2
% Project 1: Power Series Expansion of A*cos(wt)
% Phase 2: Adding features to improve the output

clear

clf

% ------ declaring variables and early formatting ------

format shortG   % Changes the format of the command line
n = transpose(0:2:10); % creates steps for n coefficients in the power series
a = (-1).^(n/2)*12.*40.^n./factorial(n); % sets up function for the a 
% coefficients in the power series
coefficients = table(n, a) % creates table
tms = linspace(0, 200, 400); % sets time as x axis from 0(ms) to 200(ms) with 400
% points for plotting
t = tms/1000; % time in seconds

% ------ Truncated Power Series functions set up ------

f1 = a(1)*t.^n(1);      % 6 functions from taylor series as specified
f2 = f1 + a(2)*t.^n(2);
f3 = f2 + a(3)*t.^n(3);
f4 = f3 + a(4)*t.^n(4);
f5 = f4 + a(5)*t.^n(5);
f6 = f5 + a(6)*t.^n(6);

% ------ Plotting The series ------

hold on
plot([0,200], [0,0], 'k', 'LineWidth', 1)
p1 = plot(tms, f1, tms, f2, tms, f3, tms, f4, tms, f5, 'LineWidth', 2); % plots 
% functions 1 to 5
p2 = plot(tms, f6, 'LineWidth', 3); % plots functions 6
axis([-inf inf -15 15])    % sets up axis for x and y values
grid on
ax = gca; ax.GridAlpha = 0.5;   % Makes grid darker
ax.FontSize = 16;
legend([p1; p2], "up to n = "+n, 'location', 'northeastoutside', "FontSize", 20)
% creates legend for graph
xlabel("time t (ms)", "Fontsize", 20) % label for x axis, units as ms for time
ylabel("f(t)", "Fontsize", 20) % label for y axis, refers to all f(t) 
% functions used above
title(["ECE 202: Project 1 Phase 2: Power series expansion of f(t) = 12cos(40t)",
    "using truncated sums with up to 6 non-zero terms"], ...
"Fontsize", 24)

%Design seem to be working as the graph is correct
