function [newImg] = GHP(img, d0)
[H, W, I] = size(img);
mask = zeros(H, W);
img = double(img);
for h=1:H
    for w=1:W
        d = sqrt((W/2-w)^2+(H/2-h)^2);
        mask(h,w) = 1 - (exp(1)^-((d^2)/(2*d0)));
    end
end
if I > 1
    IMG_F = zeros(H,W,I);
    IMG_shifted = zeros(H,W,I);
    FIMG = zeros(H,W,I);
    inversed = zeros(H,W,I);
    IMG_F = fft2(img);
    IMG_shifted = fftshift(IMG_F);
    R1 = real(IMG_shifted(:,:,1)) .* mask;
    R2 = real(IMG_shifted(:,:,2)) .* mask;
    R3 = real(IMG_shifted(:,:,3)) .* mask;
    Im1 = imag(IMG_shifted(:,:,1)) .* mask;
    Im2 = imag(IMG_shifted(:,:,2)) .* mask;
    Im3 = imag(IMG_shifted(:,:,3)) .* mask;
    FIMG(:,:,1) = R1 + i * Im1;
    FIMG(:,:,2) = R2 + i * Im2;
    FIMG(:,:,3) = R3 + i * Im3;
    inversed = ifft2(FIMG);
    newImg = uint8(inversed + img);
else
    IMG_F = fft2(img);
    IMG_shifted = fftshift(IMG_F);
    R = real(IMG_shifted).*mask;
    Im = imag(IMG_shifted).*mask;
    FIMG = R + i * Im;

    inversed = ifft2(FIMG);
    newImg = uint8(inversed + img);
end
end
