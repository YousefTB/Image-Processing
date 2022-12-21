function [NewImage] = rgb_to_binary(I)
gray = rgb_to_gray(I);
[W H] = size(gray);
T = 125;
for i = 1:W
    for j = 1:H
        if I(i,j) <= T
            NewImage(i,j) = 0;
        else
            NewImage(i,j) = 1;
        end
    end
end
NewImage = logical(NewImage);
end

