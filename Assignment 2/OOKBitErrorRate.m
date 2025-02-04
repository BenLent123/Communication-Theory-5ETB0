function ber = OOKBitErrorRate(b, b_tilde)
errors = zeros(size(b));
    for i = 1:length(b)
        if b(i) == b_tilde(i)
            errors(i) = 1; 
        else
           errors(i) = 0;
        end
    end
ber = 1 - mean(errors);
end  

