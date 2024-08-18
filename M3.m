% Ian Woodbury
% 9/15/21
% ECE 202 Fall 2021 MATLAB Exercise M3
% Three carts colliding elastically, find the resulting velocities of each
% collision, and determine where collisions occur and between which carts
% check to confirm answers, and print velocities of each collision

clear

% ------ Given info ------

m = [240, 60, 300];     % the masses of 1,2,3, repectively, in grams
vi = [36, 9, -45];       % the initial velocities in cm/s, not labeled vi, 
                        % since the array will change througout the program

% ------ Initial calculations ------

pi = sum(vi.*m);          % initial momentum of the system in g*cm/s
KEi = sum((1/2)*m.*vi.^2); % initial KE of the system in ergs

m12 = m(1) + m(2); % added masses of AB and BC in grams
m23 = m(2) + m(3); % allows for fewer parenthesis in equations

vA = [0, 0, 0]; % initialzes the array of velocities for collision A
vA(1) = vi(1);  % cart 1's velocity doesn't change, units in cm/s
vA(2) = (2*m(3)*vi(3) + vi(2)*(m(2)-m(3)))/m23; % velocities after colliding
vA(3) = (2*m(2)*vi(2) + vi(3)*(m(3)-m(2)))/m23 % of the carts in cm/s
% vA(3) also prints velocities of array A, in cm/s 

% ------ Checking values of A ------

dp = pi - sum(vA.*m) % The check for conservation of momentum in the system
% in g*cm/s, which subracts the momentum of the current array from the 
% initial should be zero if momentum is conserved
dKE = KEi - sum((1/2)*m.*vA.^2) % The check for conservation of energy(E)
% in the system, in ergs, which subtracts the value of KE of the current
% array from the initial value, and should return zero since E is conserved
% shockingly, the d in front of both checks means "change in" of KE or p 

% ------ Check for collision B ------

if (vA(1) > vA(2) || vA(2) > vA(3))
    disp("There is a collision")
else 
    disp("No collision occurs")
end

% ------ Calculations for B ------

vB = [0, 0, 0]; % initialzes the array of velocities for collision B
vB(1) = (2*m(2)*vA(2) + vA(1)*(m(1)-m(2)))/m12; % velocities after colliding
vB(2) = (2*m(1)*vA(1) + vA(2)*(m(2)-m(1)))/m12; % of the carts in cm/s
vB(3) = vA(3) % cart 3's velocity doesn't change, units in cm/s
% vB(3) also prints velocities of array B, in cm/s 

% ------ Checking values of B ------

dp = pi - sum(vB.*m) % The check for conservation of momentum in the system
% in g*cm/s, which subracts the momentum of the current array from the 
% initial should be zero if momentum is conserved
dKE = KEi - sum((1/2)*m.*vB.^2) % The check for conservation of energy(E)
% in the system, in ergs, which subtracts the value of KE of the current
% array from the initial value, and should return zero since E is conserved
% shockingly, the d in front of both checks means "change in" of KE or p 

% ------ Check for collision C ------

if (vB(1) > vB(2) || vB(2) > vB(3))
    disp("There is a collision")
else 
    disp("No collision occurs")
end

% ------ Calculations for C ------

vC = [0, 0, 0]; % initialzes the array of velocities for collision C
vC(1) = vB(1);  % cart 1's velocity doesn't change, units in cm/s
vC(2) = (2*m(3)*vB(3) + vB(2)*(m(2)-m(3)))/m23; % velocities after colliding
vC(3) = (2*m(2)*vB(2) + vB(3)*(m(3)-m(2)))/m23 % of the carts in cm/s
% vC(3) also prints velocities of array C, in cm/s 

% ------ Checking values of C ------

dp = pi - sum(vC.*m) % The check for conservation of momentum in the system
% in g*cm/s, which subracts the momentum of the current array from the 
% initial should be zero if momentum is conserved
dKE = KEi - sum((1/2)*m.*vC.^2) % The check for conservation of energy(E)
% in the system, in ergs, which subtracts the value of KE of the current
% array from the initial value, and should return zero since E is conserved
% shockingly, the d in front of both checks means "change in" of KE or p 

% ------ Check for collision D ------

if (vC(1) > vC(2) || vC(2) > vC(3))
    disp("There is a collision")
else 
    disp("No collision occurs")
end

% ------ Calculations for D ------

vD = [0, 0, 0]; % initialzes the array of velocities for collision D
vD(1) = (2*m(2)*vC(2) + vC(1)*(m(1)-m(2)))/m12; % velocities after colliding
vD(2) = (2*m(1)*vC(1) + vC(2)*(m(2)-m(1)))/m12; % of the carts in cm/s
vD(3) = vC(3) % cart 1's velocity doesn't change, units in cm/s
% vD(3) also prints velocities of array D, in cm/s 

% ------ Checking values of D ------

dp = pi - sum(vD.*m) % The check for conservation of momentum in the system
% in g*cm/s, which subracts the momentum of the current array from the 
% initial should be zero if momentum is conserved
dKE = KEi - sum((1/2)*m.*vD.^2) % The check for conservation of energy(E)
% in the system, in ergs, which subtracts the value of KE of the current
% array from the initial value, and should return zero since E is conserved
% shockingly, the d in front of both checks means "change in" of KE or p 

% ------ Check for collision E ------

if (vD(1) > vD(2) || vD(2) > vD(3))
    disp("There is a collision")
else 
    disp("No collision occurs")
end

% ------ Calculations for E ------

vE = [0, 0, 0]; % initialzes the array of velocities for collision E
vE(1) = vD(1);  % cart 1's velocity doesn't change, units in cm/s
vE(2) = (2*m(3)*vD(3) + vD(2)*(m(2)-m(3)))/m23; % velocities after colliding
vE(3) = (2*m(2)*vD(2) + vD(3)*(m(3)-m(2)))/m23 % of the carts in cm/s
% vE(3) also prints velocities of array E, in cm/s 

% ------ Checking values of E ------

dp = pi - sum(vE.*m) % The check for conservation of momentum in the system
% in g*cm/s, which subracts the momentum of the current array from the 
% initial should be zero if momentum is conserved
dKE = KEi - sum((1/2)*m.*vE.^2) % The check for conservation of energy(E)
% in the system, in ergs, which subtracts the value of KE of the current
% array from the initial value, and should return zero since E is conserved
% shockingly, the d in front of both checks means "change in" of KE or p 

% ------ Check for collision ------

if (vE(1) > vE(2) || vE(2) > vE(3))
    disp("There is a collision")
else 
    disp("No collision occurs")
end

% As the checks return zero, there is no change in momentum or KE in the
% System, so all collision calculations are correct, meaning the design was
% successful
% Also, there are a toral of 5 collisions, which can be found out by
% looking at E as the title for the last collision, because that's the
% fifth letter of the current alphabet, and the collisions are labeled
% alphabetically because Bill told me to do that
% 