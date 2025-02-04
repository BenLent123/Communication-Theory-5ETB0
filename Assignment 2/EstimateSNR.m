function snr = EstimateSNR(r_k, s_k)
r_kk = r_k';
n_k = (r_kk - s_k); 
sig_p = sum(s_k.^2);
noise_p = sum(n_k.^2);
snr = 10*log10(sig_p/noise_p);
end