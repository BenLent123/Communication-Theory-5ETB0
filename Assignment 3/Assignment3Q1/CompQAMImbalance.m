function [r_Ik_prime, r_Qk_prime] = CompQAMImbalance(r_Ik, r_Qk, delay, f1)
c = cos(2*pi*f1*delay);
s = sin(2*pi*f1*delay);
m1 = [c -s; s c];
m2 = [r_Qk ; r_Ik];
mult = (m1 * m2);
[r_Ik_prime, r_Qk_prime]  = deal(mult(1, :), mult(2, :));
end