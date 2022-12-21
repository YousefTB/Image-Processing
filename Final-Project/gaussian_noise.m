function [Img] = gaussian_noise(Img)
Img = imnoise(Img,'gaussian');
Img = uint8(Img);
end