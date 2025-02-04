function r_k = MFReceiver(r_n, phi, T0, T)
    a = filter(phi, 1, r_n);
    b = a(T0:T:length(a));
    r_k = b';
end