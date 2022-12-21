function [new] = neg(r)
[w l]=size(r);

for i=1:w
    for j=1:l
        new(i,j)=255-r(i,j);
    end
end
end
