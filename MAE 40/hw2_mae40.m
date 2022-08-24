% Problem 1
syms C s V0 R;
A=[0 0 0 1 0 -1 0; 0 0 0 0 1 1 -1; 0 0 1 -1 -1 0 0; 0 C*s 0 0 1 0 0; ...
   -C*s C*s 0 0 0 1 0 ; 1 0 0 2*R 0 0 0; 0 -1 0 0 0 0 R/2];
b=[0; 0; 0; V0*C*s; 0; V0; 0]; x=A\b; 
func = x(1) / V0;
% Bode check: C = 1, R = 1
% transferfunction = s^2 + (1/C*R)*s + (1/C^2*R^2) / s^2 + 3*s/C*R + (1/C^2*R^2)
% bode(tf([C^2*R^2 C*R 1], [C^2*R^2 3*C*R 1]))


% Problem 2 ---
syms C s V0 R;
A=[0 0 0 1 0 -1 0; 0 0 0 0 1 1 -1; 0 0 1 -1 -1 0 0; 0 1 0 0 R 0 0; ...
   0 2*C*s 0 0 0 0 -1; 1 -1 0 0 0 -R 0; C*s*0.5 0 0 1 0 0 0];
b=[0; 0; 0; V0; 0; 0; C*s*0.5*V0]; x=A\b 
func = x(1) / V0
% Bode check: C = 1, R = 1
% bode(tf([C^2*R^2 C*R 1], [C^2*R^2 3*C*R 1]))
