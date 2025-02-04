function s_hat = mlDecision16QAM(r, P)
[x, y] = meshgrid(sqrt(P / 10) * [-3, -1, 1, 3], sqrt(P / 10) * [-3, -1, 1, 3]);
points = [x(:), y(:)]';
distances = sum((points - r).^2, 1);
[~, i] = min(distances);
s_hat = points(:, i);
end
