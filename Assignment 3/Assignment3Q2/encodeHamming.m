function [v] = encodeHamming(u)
G =  [1 0 0 0 1 1 0;
     0 1 0 0 0 1 1;
     0 0 1 0 1 1 1;
     0 0 0 1 1 0 1];
v = mod(u * G, 2);
end

