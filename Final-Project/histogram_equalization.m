function [newImg] = histogram_equalization(img)
[W H I] = size(img);
img = double(img);
if I > 1
    arrhist1 = zeros(256,1);
    arrhist2 = zeros(256,1);
    arrhist3 = zeros(256,1);
    accumulativeProb1 = zeros(256,1);
    accumulativeProb2 = zeros(256,1);
    accumulativeProb3 = zeros(256,1);
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    newImg = zeros(W,H,I);
    total = W * H;
    for a = 1:W
        for b = 1:H
            arrhist1(img(a,b,1) + 1) = arrhist1(img(a,b,1) + 1) + 1;
            arrhist2(img(a,b,2) + 1) = arrhist2(img(a,b,2) + 1) + 1;
            arrhist3(img(a,b,3) + 1) = arrhist3(img(a,b,3) + 1) + 1;
        end
    end
    
    for a = 1: 256
        sum1 =  sum1 + (arrhist1(a) / total);
        sum2 =  sum2 + (arrhist2(a) / total);
        sum3 =  sum3 + (arrhist3(a) / total);
        accumulativeProb1(a) = sum1;
        accumulativeProb2(a) = sum2;
        accumulativeProb3(a) = sum3;
    end
       
    for a = 1: W
        for b = 1: H
            newImg(a,b,1) = accumulativeProb1(img(a,b,1) + 1) * 255;
            newImg(a,b,2) = accumulativeProb2(img(a,b,2) + 1) * 255;
            newImg(a,b,3) = accumulativeProb3(img(a,b,3) + 1) * 255;
        end
    end
    newImg = uint8(newImg);
else
    arrhist = zeros(256,1);
    accumulativeProb = zeros(256,1);
    sum = 0;
    newImg = zeros(W,H,I);
    total = W * H;
    for a = 1:W
        for b = 1:H
            arrhist(img(a,b) + 1) = arrhist(img(a,b) + 1) + 1;
        end
    end
    
    for a = 1: 256
        sum =  sum + (arrhist(a) / total);
        accumulativeProb(a) = sum;
    end
       
    for a = 1: W
        for b = 1: H
            newImg(a,b) = accumulativeProb(img(a,b) + 1) * 255;
        end
    end
    newImg = uint8(newImg);
end
end

