function [FT] = fftrans(I)
%FFT Summary of this function goes here
%   Detailed explanation goes here
[w h] = size(I);
I = double(I);
Mx = zeros(w,h);
My = zeros(w,h);
for x = 0: w - 1
    for y = 0:h - 1
        Mx(x + 1, y + 1) = y;
        My(x + 1, y + 1) = y;
    end
end

for u = 1: w
    for v = 1: h
        FT(u,v) = sum(sum(I .* exp(-2 * 1j * pi * (u * Mx/w + v * My / h))));
    end
end