H = [1 0 1 1 1 0 0;
     1 1 1 0 0 1 0;
     0 1 1 1 0 0 1];
r_bits = (received > sqrt(P/2));  
syndroms = mod(r_bits * H',2);
H_t = H';

