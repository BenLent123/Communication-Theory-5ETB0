function [Pe] = Pe16QAM(P, sigma2)
%sigma2 = sigma^2
q = qfunc( (sqrt(2 * P / (10 * sigma2))) );
Pe = ( 4 * 2 * (q) + 8 * 3 * (q) + 4 * 4 * (q) ) / 16 ;
end
