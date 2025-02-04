function b_tilde = OOKDemodulation(P, r_k)
  threshold = sqrt(2*P)/2;
   b_tilde = zeros(size(r_k));
    for i = 1:length(r_k)
        if r_k(i) > threshold
            b_tilde(i) = 1;
        else
            b_tilde(i) = 0;
        end
    end
end