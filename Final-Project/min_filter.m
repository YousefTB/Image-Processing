function [newImg] = min_filter(Img)
mask = [1 1 1; 1 1 1; 1 1 1];
[W H I] = size(Img);
Img = double(Img);
if I > 1
    newImg = zeros(W,H,I);
    newImg(:,:,1) = ordfilt2(real(Img(:,:,1)),1,mask) + i * imag(Img(:,:,1));
    newImg(:,:,2) = ordfilt2(real(Img(:,:,2)),1,mask) + i * imag(Img(:,:,2));
    newImg(:,:,3) = ordfilt2(real(Img(:,:,3)),1,mask) + i * imag(Img(:,:,3));
    newImg = uint8(newImg);
else
    newImg = ordfilt2(real(Img),1,mask) + i * imag(Img);
end
newImg = uint8(newImg);
end

