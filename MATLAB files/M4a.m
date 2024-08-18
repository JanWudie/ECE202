% Ian Woodbury
% 9/19/21
% ECE 202 Fall 2021 MATLAB Exercise M4
% Plotting different graphs in terms of x(distanvce in meters) and t
% (time in s or ms) Each graph labeled in their own section

clear

% ------ Truncated Power Series ------
    
    t = linspace(0, 6, 400);    % sets x axis as time as t in seconds, 
    % with 400 points t is plotted on
    f = 1 + t/2 - (t.^2)/3;     % function of f(t) for each point given
    plot (t, f, 'LineWidth', 3) % plots function f in terms of t
    grid on     % creates grid for graph, more legible
    set(gca, 'FontSize', 14)    % sets the font size for axis values
    xlabel('t (s)', 'FontSize', 20); % labels x axis as time, w/ units
    ylabel('f(t)','FontSize', 20);  % labels y axis as function, f(t)
    title("ECE 202 MATLab Exercise M4 Part (a): \newline Truncated Power" ...
        + " Series", 'FontSize', 24)
    % creates the title for the graph, M4, and the given graph
