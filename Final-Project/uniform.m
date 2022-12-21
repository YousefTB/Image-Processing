function [newImg] = uniform(img, a, b, perc)
[W, H] = size(img);
newImg = img;
num = (1/(b-a))*W*H*perc;
for j=a:b
    for i=1:3
        x = round(rand(1, 1)*H);
        y = round(rand(1, 1)*W);
        newImg(x, y) = img(x, y) + j;
    end
end
end

