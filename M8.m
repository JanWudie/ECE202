% Ian Woodbury
% 11.29.2021
% ECE 202 Fall 2021 MATLAB Exercise M8
% Writing a partial fraction expansion and finding the coefficients
% From the equation R(x) = (6 + 5*x + 4*x^2)/((x - 1)*(x - 2)*(x - 3))

clear

% ------ Calculations ------

N = input("Enter the number of points visited by the function \n");
% input function for user defined number of points
x = linspace(-4, 4, N); % array of x axis values for checks

Nx = 6 + 5*x + 4*x.^2;
D1 = x - 1; % each function in the denominator
D2 = x - 2; 
D3 = x - 3;
Rx = Nx./(D1.*D2.*D3);

N = [4; 5; 6];  % column array for answers of A*c
                % values are from Nx, in reverse
A = [1, 1, 1;
   -5, -4, -3;
     6, 3, 2]; % matrix A for solving the system as seen in handwork
 
c = A\N      % gives c values in matrix

R1 = c(1)./D1;  % R1-R3 values calculated with c(n)./Dn
R2 = c(2)./D2;  % ./ function necessary here for matrix multiplication
R3 = c(3)./D3;

% ------ Checking ------ 

% subrtacts each Rn(x) value from the whole equation R(x)
% dR refers to change in R
dR = sum(abs(Rx - R1 - R2 - R3))
% This should output values close to zero, and is used to check the c
% values. If the values are really far from zero, the c values are
% incorrect, or when "NaN" prints, a 1, 2, or 3 has been tested, which
% divides the denominator by zero, making the check fail.
% Some values will trigger this, but mostly odds.
% 5, 9, 13, 17, 29, 33, 45, 113 are some examples of the check failing
