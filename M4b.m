% Ian Woodbury
% 9/19/21
% ECE 202 Fall 2021 MATLAB Exercise M4
% Plotting different graphs in terms of x(distanvce in meters) and t
% (time in s or ms) Each graph labeled in their own section

clear

% ------ Shifted Sinusoid ------

    x = linspace(-5, 5, 400);   % sets x axis as x, in meters, w/ 400 points
    g = 4*cos(3*(x-2));     % function g(x), plotting a point for every x value
    plot (x, g, 'r', 'LineWidth', 3) % % plots function g in terms of x, 
    % and the 'r' makes the plot red
    grid on % creates grid lines for legibility
    axis([-inf inf -6 6])   % makes axis -6 to 6 on the y
    set(gca, 'FontSize', 14)    % sets the font size for axis values
    xlabel('x (m)', 'FontSize', 20); % label for the x axis, w/ units
    ylabel('g(x)','FontSize', 20); % label for y axis
    title("ECE 202 MATLab Exercise M4 Part (b): \newline Shifted" ...
        + " Sinusoidal Graph", 'FontSize', 24)
    % creates the title for the graph, M4, and the given graph

