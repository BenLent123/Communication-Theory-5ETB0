function v_hat = decodeML_SD(r, P)
%Your implementation of the SD ML decoder for Q2.5
codewords =[0 0 0 0 0 0 0;
            1 0 0 0 1 1 0;
            0 1 0 0 0 1 1;
            1 1 0 0 1 0 1;
            0 0 1 0 1 1 1;
            1 0 1 0 0 0 1;
            0 1 1 0 1 0 0;
            1 1 1 0 0 1 0;
            0 0 0 1 1 0 1;
            1 0 0 1 0 1 1;
            0 1 0 1 1 1 0;
            1 1 0 1 0 0 0;
            0 0 1 1 0 1 0;
            1 0 1 1 1 0 0;
            0 1 1 1 0 0 1;
            1 1 1 1 1 1 1];

info_bits = [0 0 0 0; 
             1 0 0 0; 
             0 1 0 0; 
             1 1 0 0; 
             0 0 1 0; 
             1 0 1 0; 
             0 1 1 0; 
             1 1 1 0; 
             0 0 0 1; 
             1 0 0 1; 
             0 1 0 1; 
             1 1 0 1; 
             0 0 1 1; 
             1 0 1 1; 
             0 1 1 1; 
             1 1 1 1 ];
y = codewords*sqrt(2*P);

    for i = 1:length(r)
     distance = sum(((abs(r(i,:) - y).^2))');
    [x , n] = min(distance);
    v_hat(i,:) = info_bits(n,:);
    end
end

