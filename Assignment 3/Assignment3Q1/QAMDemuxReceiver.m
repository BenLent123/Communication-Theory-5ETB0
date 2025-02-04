function r_k = QAMDemuxReceiver(r_t, psi, phi, T0, T)
a = r_t.*psi;
b = filter(phi,1,a);
r_k = b(T0:T:length(r_t));
end