function [newImg] = midpoint_filter(Img)
[W H I] = size(Img);
newImg = double(zeros(W,H,I));
max_img = zeros(W,H,I);
min_img = zeros(W,H,I);
max_img = double(max_filter(Img));
min_img = double(min_filter(Img));
newImg = (max_img + min_img)/2;
newImg = uint8(newImg);
end

