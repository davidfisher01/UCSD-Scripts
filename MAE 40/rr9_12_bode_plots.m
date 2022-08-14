% s = tf('s');
% sys = exp(-0.1*s);    
% sysx = pade(sys,1)
% a
figure(1);
bode(tf([1], [1 1]))
% b
figure(2)
bode(tf([ 1 -1], [1]))
% c
figure(3);
bode(tf([1 -1], [1 1]))
% d
figure(4);
bode(tf([1 101 100], [1]))
% e
figure(5);
bode(tf([1], [1 101 100]))
% f
figure(6);
bode(tf([1], [1 1 1]))
