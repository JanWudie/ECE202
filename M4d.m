% Ian Woodbury
% 9/19/21
% ECE 202 Fall 2021 MATLAB Exercise M4
% Plotting different graphs in terms of x(distanvce in meters) and t
% (time in s or ms) Each graph labeled in their own section

clear

% ------Three Dampings for paralled RLC ------

    tm = linspace(0, 40, 400); % time tm, in milliseconds(ms)
    t = tm/1000;     % tm converted to seconds for calulcations in equations
    v1 = 16*exp(-800*t) - 4*exp(-200*t); % all 3 are equations 
    v2 = exp(-500*t).*(12 - 6000*t); % for voltage over time
    v3 = exp(-120*t).*(12*cos(450*t) - 5*sin(450*t));
    plot (tm, v1, 'r', tm, v2, 'g' , tm, v3, 'b', 'LineWidth', 3) % plots
    % all voltage equations in terms of tm(ms) and Voltage(V), and sets
    % the color of v1, v2, and v3 to red, green, and blue respectively
    grid on                             
    legend('OverDampened RLC', 'Critically Dampened RLC', ...
        'Underdampened RLC', 'Fontsize', 14) % legend to match each color to
    % its proper equations
    set(gca, 'FontSize', 14)    % sets the font size for axis values
    xlabel('t (ms)', 'FontSize', 20);
    ylabel('Voltage (V)','FontSize', 20);
    title("ECE 202 MATLab Exercise M4 Part (d): \newline Three Dampings" ...
        + " for parallel RLC", 'FontSize', 24)
    % creates the title for the graph, M4, and the given graph
