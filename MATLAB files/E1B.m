% Ian Woodbury
% 10/10/21
% ECE 202 Fall 2021 MATLAB Exam 1
% B: Graphing a dampened sinusoid : f(t) = Ae^(-kt)cos(wt)

% ------ given ------

% all variables from the equation given above, except t
A = 12;  % swap in 5 or 2 for graphs 2 & 3
k = 40;  % swap in 2 or 5000 for graphs 2 & 3
w = 120; % swap in 10 or 12000 for graphs 2 & 3

% ------ calculations and plotting ------

x = "Time (t) in us"; % string for the x axis label, found using if 
% statements lie below
xs = 1e6; % scale of the x axis, found the same way as x
if (3/k > 1.000e-03)
    x = "Time (t) in ms";
    xs = 1e3;
end
if (3/k >= 1)
    x = "Time (t) in s";
    xs = 1;
end
t = linspace(0, 3/k, 400); % time scale, t, units vary from s to ms to us
f = A*exp(-k*t).*cos(w*t); % function f(t), the dampened sinusoid
plot (t*xs, f, 'Linewidth', 3) % plots f(t) and t on a graph
grid on % creates grid, more legible
set(gca, 'FontSize', 14)    % sets the font size for axis values
xlabel(x, 'FontSize', 20); % labels x axis with the x label
ylabel('f(t)','FontSize', 20);  % labels y axis as function, f(t)
title('ECE 202 Exam 1 Script B: Dampened sinusoid graph 1')
