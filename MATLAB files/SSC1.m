% Ian Woodbury
% 05/12/2022
% 214 SS-C1 : Understanding Convolution
% Show voltage output with and without using convolution

clear

clf

% ---- Given Values ----

R = 10;         % Resistance in Ohms
C = 2*10^-6;    % Capacitance in F
V0 = 12;        % Initial voltage in V
T = R*C;        % Time shift in s

% ---- Setting up functions ----

t = linspace(-10, 10, 400);   % time range 

%input voltage
x = V0*heaviside((t-T)/(2*T)+(1/2)) - V0*heaviside((t-T)/(2*T)-(1/2)); 
% make rect funct later
y = V0*(1-exp(-t/T));

% ---- Plotting ---- %
%for delta, use '^' as tips
plot(t, y) % plots pdf function
axis([0 10 0 20])    % sets up axis for x and y values
grid on
ax.GridAlpha = 0.3;   % Makes grid darker
xlabel("Cost($))", "Fontsize", 14) % label for x axis, 
ylabel("f(X)", "Fontsize", 14) % label for y axis, 
title("214 PS-C2", "Fontsize", 20)



