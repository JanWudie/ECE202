% Ian Woodbury
% 12/13/2021
% ECE 202 Project 1 Phase 3
% Project 1: Power Series Expansion of A*cos(wt)
% Phase 3: Making the script more robust and more general

clear

clf

% ------ declaring variables and early formatting ------

format shortG   % Changes the format of the command line
A = 12; % Amplitude of the sinusoid
w = 40; % Angular frequency of the sinusoid units in Hz
terms = 6; % number of non-zero terms in the power series exspansion
n = transpose(0:2:10); % creates steps for the series as a function of terms
a = (-1).^(n/2)*A.*w.^n./factorial(n); % sets up function for the a 
% coefficients in the power series
coefficients = table(n, a) % creates table
tmin = 0; % minimum plotting value for time in ms 
tmax = 200; % maximum plotting value for time in ms
N = 400; % number of intervals to plot the power series on x axis
tms = linspace(tmin, tmax, 1 + N); % sets time as x axis from "tmin" to "tmax" with 
% "1 + N" points for plotting, units in ms
t = tms/1000; % time in seconds

% ------ Truncated Power Series functions set up ------

f1 = a(1)*t.^n(1);      % 6 functions from taylor series as specified
f2 = f1 + a(2)*t.^n(2);
f3 = f2 + a(3)*t.^n(3);
f4 = f3 + a(4)*t.^n(4);
f5 = f4 + a(5)*t.^n(5);
f6 = f5 + a(6)*t.^n(6);

% ------ Plotting The series ------

xmin = -inf;
xmax = inf;
ymin = -15;
ymax = 15;
hold on
plot([tmin,tmax], [0,0], 'k', 'LineWidth', 1)
p1 = plot(tms, f1, tms, f2, tms, f3, tms, f4, tms, f5, 'LineWidth', 2); % plots 
% functions 1 to 5
p2 = plot(tms, f6, 'LineWidth', 3); % plots functions 6
axis([xmin xmax ymin ymax])    % sets up axis for x and y values
grid on 
ax = gca; ax.GridAlpha = 0.5;   % Makes grid darker
ax.FontSize = 16;
legend([p1; p2], "up to n = "+n, 'location', 'northeastoutside', "FontSize", 20)
% creates legend for graph
xlabel("time t (ms)", "Fontsize", 20) % label for x axis, units as ms for time
ylabel("f(t)", "Fontsize", 20) % label for y axis, refers to all f(t) 
% functions used above
title({"ECE 202: Project 1 Phase 3: Power series expansion using truncated sums"  
    sprintf("of f(t) = %gcos(%gt) with up to %g non-zero terms", A, w, terms)}, ...
"Fontsize", 24)

% Design seem to be working as the graph is correct
% Graph and output match that of phase 2