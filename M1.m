% Ian Woodbury
% 9/7/21
% ECE 202 Fall 2021 MATLAB Exercise M1
% Find final velocities of two carts colliding elastically, and
% verify the answers

clear

% ------ given info ------

% Carts #1 and #2 collide

v1i = 40;   % inital velocities for both carts, in cm/s
v2i = -30;  % #2's velocity is negative, as it moves leftward

m1 = 250;   % mass of both carts, in grams
m2 = 150;
M = m1 + m2;    % total mass of the system, in grams


% ------ calculations ------

% from academo.org
% https://academo.org/demos/one-dimensional-elastic-collisions/
% conservation of momentum : v1i*m1 + v2i*m2 = v1f*m1 + v2f*m2
% conservation of E : (1/2)*m1*v1i^2 + (1/2)*m2*v2i^2 = (1/2)*m1*v1f^2
                                                % + (1/2)*m2*v2f^2

% the following are derived on academo.org from the equations above
v1f = (2*m2*v2i + v1i*(m1-m2))/M % these are the final velocities
v2f = (2*m1*v1i + v2i*(m2-m1))/M % of #1 and #2 in cm/s


% ------- checking ------

% the check creates inital and final variables for momentum and energy,
% then a change in units variable is created, which should be equal to
% 0 if all calculations are correct

pi = v1i*m1 + v2i*m2;    % initial & final momentum
pf = v1f*m1 + v2f*m2;    % units in g*cm/s

KEi = (1/2)*m1*v1i^2 + (1/2)*m2*v2i^2; % inital and final KE of system
KEf = (1/2)*m1*v1f^2 + (1/2)*m2*v2f^2; % Note, units are erg(s)

dp = pf - pi    % change in momentum, should be 0 if v1f & v2f are correct

dKE = KEf - KEi     % change in Energy, should be 0 if answers are correct
   