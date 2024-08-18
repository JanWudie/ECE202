% Ian Woodbury
% 05/12/2022
% 214 PS-C2 : Service Fees
% Part 1 : Set up the pdf and the cdf, 
% then use them to analyze service fees

clear

clf

% ---- Givens ---- %

% $20 fixed fee
% $25/hr for 1st 6 hrs
% Time is equally likely between [0,10]

p0 = 20;    % intial point of price
pm = 25;    % slope of the price over time 0<T<6

% Time span t in hours, 400 points for good graph
t = linspace(0, 10, 400);

% function of price over time in $
% heaviside functions as step function, 
% multiplied by (t-6) to create ramp function
y = p0 + pm*t - pm*(t-6).*heaviside(t-6);

% PDF:
% Pretty much 1 + impulse at t = 6hrs since t only has range to 10hrs 
f = 1 + 4*heaviside(t-6);


% ---- Plotting ---- %
subplot(2,1,1) % sets up subplot, 3 rows, 1 column, 1st plot
plot(y, f/10) % plots pdf function
axis([0 200 0 1])    % sets up axis for x and y values
grid on
ax.GridAlpha = 0.3;   % Makes grid darker
xlabel("Cost($))", "Fontsize", 14) % label for x axis, 
ylabel("% Chance", "Fontsize", 14) % label for y axis, 
title("214 PS-C2, PDF", "Fontsize", 20)

subplot(2,1,2) % sets up subplot, 3 rows, 1 column, 1st plot
plot(y, t/10) % plots cdf function
axis([0 200 0 1])    % sets up axis for x and y values
grid on
ax.GridAlpha = 0.3;   % Makes grid darker
xlabel("Cost($))", "Fontsize", 14) % label for x axis, 
ylabel("% Chance", "Fontsize", 14) % label for y axis, 
title("214 PS-C2, CDF", "Fontsize", 20)


% Chance for cost under $60 is 16%, found in CDF, or using:
% t = (60 - 20)/25 = 1.6 => 16% for chance
