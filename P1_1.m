% Ian Woodbury
% 11/03/2021
% ECE 202 Project 1 Phase 1
% Project 1: Power Series Expansion of A*cos(wt)
% Phase 1: Quickly plotting f(t) = 12cos(40t) as a truncated power series
% centered around zero

clear

clf

% ------ declaring variables and early formatting ------

format shortG   % Changes the format of the command line
n = 0:2:10; % creates steps for n coefficients in the power series
a = (-1).^(n/2)*12.*40.^n./factorial(n) % sets up function for the a 
% coefficients in the power series
t = linspace(0, 0.2, 400); % sets t as an x axis for plotting, range 0 to 
% 0.2 s

% ------ Truncated Power Series functions set up ------

f1 = a(1)*t.^n(1);      % 6 functions from taylor series as specified
f2 = f1 + a(2)*t.^n(2);
f3 = f2 + a(3)*t.^n(3);
f4 = f3 + a(4)*t.^n(4);
f5 = f4 + a(5)*t.^n(5);
f6 = f5 + a(6)*t.^n(6);

% ------ Plotting The series ------

plot(t, f1, t, f2, t, f3, t, f4, t, f5, t, f6) % plots functions
axis([-inf inf -15 15])    % sets up axis for x and y values
grid on
ax.GridAlpha = 0.3;   % Makes grid darker
xlabel("time t (s)", "Fontsize", 14) % label for x axis, units as ms for time
ylabel("f(t)", "Fontsize", 14) % label for y axis, refers to all f(t) 
% functions used above
title({"ECE 202: Project 1 Phase 1: Power series expansion of", ...
    "f(t) = 12cos(40t) using truncated sums with up to 6 non-zero terms"}, ...
"Fontsize", 20)

%Design seem to be working as the graph is correct
