% Ian Woodbury
% 9/19/21
% ECE 202 Fall 2021 MATLAB Exercise M4
% Plotting different graphs in terms of x(distanvce in meters) and t
% (time in s or ms) Each graph labeled in their own section

clear

% ------ Normalized Gaussian ------

    x = linspace(0, 10, 400); % x axis, in meters, w/ 400 points
    p = 1/(2*sqrt(pi))*exp((-(x-5).^2)/4);  % function p(x) for every point of x
    plot (x, p, ":", 'LineWidth', 3) % plots x and p(x), on a dotted line
    grid on     % creates a grid for legibility
    set(gca, 'FontSize', 14)    % sets the font size for axis values
    xlabel('x (m)', 'FontSize', 20);
    ylabel('P(x) (m^{-1})','FontSize', 20);
    title("ECE 202 MATLab Exercise M4 Part (c): \newline Normailzed" ...
        + " Gaussian Graph", 'FontSize', 24)
    % creates the title for the graph, M4, and the given graph
