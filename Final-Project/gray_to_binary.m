function [NewImage] = gray_to_binary(I, T)
[W, H] = size(I);
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

