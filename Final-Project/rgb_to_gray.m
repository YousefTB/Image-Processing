function [gray]=rgb_to_gray(rgb)
[h ,w, l]=size(rgb);
gray=zeros(h,w);
gray=double(gray);
for i=1 :h
    for j=1:w
         gray(i,j)=(rgb(i,j,1)*0.6 +rgb(i,j,2)*0.1+rgb(i,j,3)*0.3);
    end
end
gray= uint8(gray);
end
