function errs = calculateErrors(v, v_hat)
v_diff = v - v_hat;
v_diff_row = sum(abs(v_diff), 2);
errs = sum(v_diff_row);
end