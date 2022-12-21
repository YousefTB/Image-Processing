function [] = Histogram(img)
arrhist=zeros(256,1);
[w, h]=size(img);
for i=1:w
    for j=1:h
         arrhist(img(i,j)+1)=arrhist(img(i,j)+1)+1;
    end
end

bar(arrhist);
end

