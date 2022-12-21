function [newImg] = complement(Img)
[W H I] = size(Img);
if I > 1
    gray = rgb_to_gray(Img);
else
    gray = Img;
    gray = uint8(gray);
end
[W H] = size(gray);
for i=1:W
    for j=1:H
        newImg(i,j)=255-gray(i,j)+1;
    end
end
newImg = uint8(newImg);
end