function [transformed] = ft(img)
c = fft2(img);
ca = abs(c);
clog = log(1+ca);
f = mat2gray(clog);
transformed = fftshift(f);
end

