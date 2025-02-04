function [v_hat] = decodeSyndrome(r, P)
 
H = [1 0 1 1 1 0 0;
     1 1 1 0 0 1 0;
     0 1 1 1 0 0 1];
H_t = H';
r_bits = (r > sqrt(P/2));     
corrected = r_bits;          
s = mod(r_bits * H_t, 2);
N = size(r,1);

    for i = 1:N
        s_i = s(i,:);
        for j = 1:7
            if all(s_i == H_t(j,:))
                corrected(i,j) = mod(corrected(i,j) + 1, 2);
                break;  
            end
        end
    end
    v_hat = corrected(:, [1, 2, 3, 4]);
    
end