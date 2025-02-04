function temps = GetTempReadings(b_array, n_pre, n_data, n_post)
n = n_pre+n_data+n_post;
chunk = length(b_array)/n; 
b_array_chunk = reshape(b_array,[n chunk])';
b_array_data = b_array_chunk(:,(n_pre+1):(n-n_post));
b_array_data = b_array_data';
b = bit2int(b_array_data,n_data);
temps = b  - (2^n_data).*(b>2^(n_data-1));
end