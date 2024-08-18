% Ian Woodbury
% 9/19/21
% ECE 202 Fall 2021 MATLAB Exercise M4
% Plotting different graphs in terms of x(distanvce in meters) and t
% (time in s or ms) Each graph labeled in their own section

clear

% ------ Truncated Power Series ------
    
    t = linspace(0, 6, 400);    % t is time in seconds
    f = 1 + t/2 - (t.^2)/3;
    plot (t, f, 'LineWidth', 3) % plots function f in terms of t
    grid on
    set(gca, 'FontSize', 14)    % sets the font size for axis values
    xlabel('time t (s)', 'FontSize', 20);
    ylabel('f(t)','FontSize', 20);
    title('ECE 202 MATLab Exercise M4', 'FontSize', 24)
    % subtitle('Truncated Power Series Graph', 'FontSize', 14)

% ------ Shifted Sinusoid ------

    x = linspace(-5, 5, 400);   % x is distance in meters
    g = 4*cos(3*(x-2)); 
    plot (x, g, 'LineWidth', 3) % % plots function g in terms of x
    grid on
    set(gca, 'FontSize', 14)    % sets the font size for axis values
    xlabel('distnace d (m)', 'FontSize', 20);
    ylabel('g(x)','FontSize', 20);
    title('ECE 202 MATLab Exercise M4', 'FontSize', 24)
    % subtitle('Shifted Sinusoid Graph', 'FontSize', 14)

% ------ Normalized Gaussian ------

    x = linspace(0, 10, 400); % x is distance in meters
    p = (1/(2*sqrt(pi)))*e^(-(x-5)^(2)/4);  
    plot (x, p, 'LineWidth', 3) % plots function p in terms of x
    grid on
    set(gca, 'FontSize', 14)    % sets the font size for axis values
    xlabel('distnace d (m)', 'FontSize', 20);
    ylabel('g(x)','FontSize', 20);
    title('ECE 202 MATLab Exercise M4', 'FontSize', 24)
    % subtitle('Normalized Gaussian Graph', 'FontSize', 14)

% ------Three Dampings for paralled RLC ------

    t = linspace(0, 40, 400); % time t, in seconds
    v1 = 16*e^(-800*t) - 4*e^(-200*t); % all 3 are equations 
    v2 = 12*e^(-500*t) - 6000*e^(-500*t); % for voltage over time
    v3 = 12*(e^(-120*t))*cos(450*t) - 5*e^(-120*t);
    plot (x, v1, v2, v3, 'LineWidth', 3) % plots all voltage equations 
    grid on                             % in terms of t(seconds)
    set(gca, 'FontSize', 14)    % sets the font size for axis values
    xlabel('distnace d (m)', 'FontSize', 20);
    ylabel('g(x)','FontSize', 20);
    title('ECE 202 MATLab Exercise M4', 'FontSize', 24)
    % subtitle('Truncated Power Series Graph', 'FontSize', 14)
