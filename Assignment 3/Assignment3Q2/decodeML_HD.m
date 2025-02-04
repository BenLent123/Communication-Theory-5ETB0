function v_hat = decodeML_HD(r, P)
 
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
y = r > sqrt(P/2); 

    for i = 1:length(r)
       distance = sum((abs(y(i,:)- codewords)'));
    [x , n] = min(distance);
    v_hat(i,:) = info_bits(n,:);
    end

end