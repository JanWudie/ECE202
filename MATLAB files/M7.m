% Ian Woodbury
% 11.18.2021
% ECE 202 FALL 2021 MATLAB Exercise M7
% Plotting current, voltage, and power over time from a given RL circuit,
% and given equations

clear
clf

% ------ Initial values and calculations ------

V0 = 10;    % Voltage form voltage source given in Volts(V)
L = 50;     % Inductance from inductor given in mH
R = 2;      % Resistance in resistor given in ohms
T = L/R;    % Tau values as the time constant, given in mH/ohms

% ------ Equations and graph setup ------

N = 400;                % num of intervals for the plot
tmin = 0;               % start and stop values of time (ms)
tmax = 10*T;  
dt = (tmax-tmin)/N;     % change in time between each interval (ms)

i_f = V0/R; % i after a very long time, used in graphs

t = linspace(tmin, tmax, N); % t as x-axis set from 0 to 10*Tau value, with 400
% points to make graph lookn good

i = (i_f)*(1 - exp(-t/T)); % equation for current as a function of time, i(t)

v = V0*exp(-t/T);   % equation for voltage as a function of time, v(t)

p = v.*i;   % equation for power absorbed by the inductor, as a function
% of time, p(t)

% ------ Plotting each equation ------

% legend("i(t)", "v(t)", "p(t)")

subplot(3,1,1) % sets up subplot, 3 rows, 1 column, 1st plot
plot(t, i, "r", "Linewidth", 3) % plots function in a sublot
ylabel("Current(A)",'FontSize', 14);  % creates y label for subplot
sgtitle({"ECE 202 MATLab Exercise M7: Current, Voltage,", ...
     " and Power absorbed for a charging inductor", ...
    sprintf("V_0 = %d(V), R = %d(Ohm), L = %d(mH)", V0, R, L)}, 'Fontsize', 20)
set(gca, 'FontSize', 14)    % sets the font size for axis values
grid on
axis([-inf,inf,0,6]);   % extends y axis
yticks(0:2:6)           % positions tic marks more evenly
ax.GridAlpha = 0.3;     % Makes grid darker
pbaspect([4 1 1])       % makes graph shorter
text(170, 1.2, sprintf('$$ i(t) = %d \\cdot (1-e^{-t/%d}) $$', i_f, T), ... 
    'FontSize', 14, 'Interpreter', 'latex')

subplot(3,1,2) % sets up subplot, 3 rows, 1 column, 2nd plot
plot(t, v, "g", "Linewidth", 3)
ylabel("Volts(V)",'FontSize', 14);
set(gca, 'FontSize', 14)   
grid on
ax.GridAlpha = 0.3;   
pbaspect([4 1 1])
text(170, 7, sprintf('$$ v(t) = %d \\cdot e^{-t/%d} $$', V0, T), ... 
    'FontSize', 14, 'Interpreter', 'latex')

subplot(3,1,3) % sets up subplot, 3 rows, 1 column, 3rd plot
plot(t, p, "b", "Linewidth", 3)
ylabel("Power(W)",'FontSize', 14);
set(gca, 'FontSize', 14)    
grid on
axis([-inf,inf,0,15]);
ax.GridAlpha = 0.3;   
pbaspect([4 1 1])
text(170, 8.5, '$$ p(t) = v(t) \cdot i(t) $$', ... 
    'FontSize', 14, 'Interpreter', 'latex')
xlabel("t(s)", 'FontSize', 16);

% ------ Checking ------

wabs = sum(p)*dt    % Energy absorbed in the inductor from the plot (mJ)
wf = (1/2)*L*i_f^2  % Energy stored in the inductor after a long time, (mJ)
wcheck = wabs - wf  % Check for change in energy between calculation and plotted

error = wcheck/wf*100   % Percent error calculation; under 1%, which is fine

