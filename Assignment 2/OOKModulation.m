
function b_tilde = OOKModulation(P, phi, b)
    sf = sqrt(2 * P); 
    sym = b * sf; 
    N_data_frame = length(b);         
    N_sps = length(phi);          
    N_total = N_data_frame * N_sps;  

    b_tilde = zeros(1, N_total);

    for k = 1:N_data_frame
        b_tilde((k - 1) * N_sps + 1:k * N_sps) = sym(k) * phi;
    end
end