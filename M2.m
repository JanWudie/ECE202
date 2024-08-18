% Ian Woodbury
% 9/15/21
% ECE 202 Fall 2021 MATLAB Exercise M2
% 2 carts, 1&2 collide, and cart 1 has a velocity of zero after the
% collision. Find the mass of cart 1, and verify your answers

clear

% ------ given info ------

% Carts #1 and #2 collide

v1i = 30;   % inital velocities for both carts, in cm/s
v2i = -30;  % #2's velocity is negative, as it moves leftward

m2 = 150;   % mass of cart 2, in grams

v1f = 0;    %final velocity of cart 1, cm/s

% ------ calculations ------


% Below is the equation derived from the handwork, to solve for mass
m1 = m2*(2*v2i - v1f - v1i)/(v1f - v1i) % mass of cart 1, in grams

M = m1 + m2;                        % add M to solve v2f easier, in grams

v2f = (2*m1*v1i + v2i*(m2-m1))/M    % final velocity of #2 in cm/s


% ------- checking ------

% the check creates inital and final variables for momentum and energy,
% then a change in units variable is created, which should be equal to
% 0 if all calculations are correct

pi = v1i*m1 + v2i*m2;    % initial & final momentum
pf = v1f*m1 + v2f*m2;    % units in g*cm/s

KEi = (1/2)*m1*v1i^2 + (1/2)*m2*v2i^2; % inital and final Energy(KE) of 
KEf = (1/2)*m1*v1f^2 + (1/2)*m2*v2f^2; % the system. Note, units are erg(s)

dp = pf - pi    % change in momentum, should be 0 if v1f & v2f are correct

dKE = KEf - KEi     % change in KE, should be 0 if answers are correct

v1check = (2*m2*v2i + v1i*(m1-m2))/M - v1f% this checks to make sure 1's 
% final velocity is 0 by calculating it again and subtracting v1f, in cm/s.
% Named v1check,  since v1f is taken, it is kinda long, 
% but it's used only once

% All checks result in zero, so KE and momentum are conserved, and cart 1's 
% final velocity is still 0
% The v1check is really important though, because if the design ends up
% with v1f > 0, all the work will be wrong. It's important to check for the
% given here to make sure all the answers are correct and accurate,
% otherwise, the value for v2f, amd m1 could both be off
% Therefore, the design was successful in its intention.