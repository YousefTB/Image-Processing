function [ Histimage] = histequ(img)
[H W ]=size(img);
totalpixels= H*W; 

figure,imshow(img);
title('Original Image');
 figure,imhist(img);
Histimage=uint8(zeros(H,W));
numpix=zeros(256,1);
probrk=zeros(256,1);
probogk=zeros(256,1);
accumlativesum=zeros(256,1);
emptymatrix=zeros(256,1);
 
for i=1:H
    for j=1:W
        X=img(i,j);
        numpix(X+1)=numpix(X+1)+1;
        probrk(X+1)=numpix(X+1)/totalpixels;
    end
end
 
sum=0;
 
for i=1:size(numpix)
   sum=sum+numpix(i);
   accumlativesum(i)=sum;
   probogk(i)=accumlativesum(i)/totalpixels;
   emptymatrix(i)=(probogk(i)*255);
end
 
for i=1:size(img,1)
    for j=1:size(img,2)
            Histimage(i,j)=emptymatrix(img(i,j)+1);
    end
end
figure,imshow(Histimage);
title(' Contrasting Image');
figure,imhist(Histimage);
title('New  Histogram');


end

