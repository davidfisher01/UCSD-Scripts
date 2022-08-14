syms L C R Il Ic Ir Vin Vout Va s
eq1 = Il == Ic == Ir;
eq2 = Vin - Va == L*Il*s;
eq3 = Va - Vout == Ir*R;
eq4 = Ic == C*Vout*s;
eq5 = L*C == 1;
eq6 = R*C == 0.5;
A = solve(eq1, eq2, eq3, eq4, eq5, eq6, Vin, Vout);
% Vout / Vin = 1/LCs^2 + RCs + 1, 
% Since LC = 1, RC = 0.5 => Vout(s) / Vin(s) = 1 / s^2 + 0.5*s + 1
figure(1);
bode(tf([1], [1 0.5 1]))
% Wc(cutoff frequency) = 1, because its the sqrt(1) if the transfer function is of the ...
% form Wc^2 / s^2 + 2*Wc*zeta*s + Wc^2.
% zeta(damping): 0.5*s = 2*1*zeta*s => zeta = 0.25 