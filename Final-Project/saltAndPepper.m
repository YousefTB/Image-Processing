function [I] = saltAndPepper(I, Ps, Pp)
%SALTANDPEPPER Summary of this function goes here
%   Detailed explanation goes here
[W H L] = size(I);
I = double(I);
numS = round(Ps * W * H);
numP = round(Pp * W * H);

if L > 1
    for i = 1: numS
        x = round(rand(1,1) * H);
        if x == 0
            x = 1;
        end
        y = round(rand(1,1) * W);
        if y == 0
            y = 1;
        end
        I(x,y,1) = 255;
        I(x,y,2) = 255;
        I(x,y,3) = 255;
    end
    for i = 1: numP
        x = round(rand(1,1) * H);
        if x == 0
            x = 1;
        end
        y = round(rand(1,1) * W);
        if y == 0
            y = 1;
        end
        I(x,y,1) = 0;
        I(x,y,2) = 0;
        I(x,y,3) = 0;
    end
    I = uint8(I);
else
    for i = 1: numS
        x = round(rand(1,1) * H);
        if x == 0
            x = 1;
        end
        y = round(rand(1,1) * W);
        if y == 0
            y = 1;
        end
        I(x,y) = 255;
    end
    for i = 1: numP
        x = round(rand(1,1) * H);
        if x == 0
            x = 1;
        end
        y = round(rand(1,1) * W);
        if y == 0
            y = 1;
        end
        I(x,y) = 0;
    end
    I = uint8(I);
end

