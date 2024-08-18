% Ian Woodbury
% 10/27/21
% ECE 202 Fall 2021 MATLAB Exercise M5
% Turning the product of two sinusoids into the sum of two sinusoids, 
% And graph all three functions together to show the difference
% formulas found at http://hyperphysics.phy-astr.gsu.edu/hbase/trid.html

clear

clf

% ------ Declaring Each function ------

tm = linspace(-100, 100, 400); % sets up t as the x-axis, and 400 points to
% plot each equation with, units in milliseconds(ms)
t = tm/1000; % converts tm from milliseconds to seconds for calculations

a = 80*t+1.2;     % a and b are the parts of the sinusoid, declared
b = 120*t-1.8;    % here to shorten code later on, as they will be used
% frequently
k = 15;     % constant at the beginning of the sinusoid given

f = k*cos(a).*cos(b); % the sunusoids multiplied together,
% as a function over t
f1 = (1/2)*k*cos(a+b); % f1 and f2 are partial equations to be used later,
f2 = (1/2)*k*cos(a-b); % and work as functions over t

% ------ Checking and Plotting -------

df = f-(f1+f2); % checks for the difference between the original function
% and the two sum equations as an array of values over t
% difference should come out to zero over all values of t

plot(tm, f, "r", tm, f1, "g", tm, f2, "b", tm, df, "black", "LineWidth", 3)
% plots f, f1, f2, and df in red, green, blue, and black respectively
axis([-inf inf -15 25])     % makes the axis -15 to 25, as room for a legend
grid on
ax.GridAlpha = 0.3;   % Makes grid darker
legend ('f   : Product Function', 'f1 : First Sinusoid', .... 
    'f2 : Second Sinusoid', 'df : f - (f1 + f2), should be zero', 'FontSize', 16)
% extra spaces in f's label to make semi colons line up in the legend
set(gca, 'FontSize', 14)    % sets the font size for axis values
xlabel('time t (ms)', 'FontSize', 14); % label for the x axis, w/ units
ylabel('f(t)','FontSize', 14); % label for y axis
title("ECE 202 MATLab Exercise M5: Rewriting the product \newline of two" ...
    + " sinusoids into the sum of two sinusoids", 'FontSize', 20)

% final check to prove the df array is all zero values
check_array = sum(abs(df))  % should print out zero, or a number very close to 
% zero, (due to floating point errors) if the design is correct
% abs function used to make every value summed the same sign for accuracy
% in calculations

% The graph of df shows that all values line up on the x axis, which is zero
% This proves the sum functions added equal to the product functions 
% multiplied too, as the difference between them is zero, or none
% dfcheck also comes out to a value close to zero, further proving the
% design to be successful too.






