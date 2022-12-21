function [out_img] = inverse_log(img,c)
[H W I] = size(img);
out_img = double(zeros(H,W,I));
img = double(img);
if I > 1
    for i = 1: H
        for j = 1: W
            out_img(i,j,1) = 10^(img(i,j,1)/c) - 1;
            out_img(i,j,2) = 10^(img(i,j,2)/c) - 1;
            out_img(i,j,3) = 10^(img(i,j,3)/c) - 1;
        end
    end
    out_img = uint8(out_img);
else
    for i = 1: H
        for j = 1: W
            out_img(i,j,1) = 10^(img(i,j,1)/c) - 1;
        end
    end
    out_img = uint8(out_img);
end
end

