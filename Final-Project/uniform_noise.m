function [Img] = uniform_noise(Img,a,b,Perc)
[W H I] = size(Img);
Img = double(Img);
pixs = round((1/(b-a)) * W * H * Perc);
if I > 1  
    for i = 1: pixs
        for j = a: b
            x = round(rand(1,1) * W);
            if x == 0
                x = 1;
            end
            y = round(rand(1,1) * H);
            if y == 0
                y = 1;
            end
            Img(x,y,1) = Img(x,y,1) + j;
            Img(x,y,2) = Img(x,y,2) + j;
            Img(x,y,3) = Img(x,y,3) + j;
        end
    end
    Img = uint8(Img);
else
    for i = 1: pixs
        for j = a: b
            x = round(rand(1,1) * W);
            if x == 0
                x = 1;
            end
            y = round(rand(1,1) * H);
            if y == 0
                y = 1;
            end
            Img(x,y,1) = Img(x,y,1) + j;
        end
    end
    Img = uint8(Img);
end
end
