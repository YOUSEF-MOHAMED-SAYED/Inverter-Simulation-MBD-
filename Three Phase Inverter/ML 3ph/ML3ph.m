clc
clear
F = @(x) [cosd(x(1)) + cosd(x(2)) + cosd(x(3)) - (80*sqrt(2) / ((4 * (200/3) ) /  pi));
          cosd(5*x(1)) + cosd(5*x(2)) + cosd(5*x(3));
          cosd(7*x(1)) + cosd(7*x(2)) + cosd(7*x(3))];

% Set options with a different solver algorithm
options = optimset('Algorithm', 'trust-region-reflective');

% Solve the system of equations with fsolve
z = fsolve(F, [20, 30, 40], options);
Alpha1 = z(1);
Alpha2 = z(2);
Alpha3 = z(3);
    