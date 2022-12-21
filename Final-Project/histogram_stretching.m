function [NI] = histogram_stretching(I,SMIN,SMAX)
%HISTOGRAM_STRETCHING Summary of this function goes here
%   Detailed explanation goes here
[W H L] = size(I);
I = double(I);
if L > 1
    NI = zeros(W,H,L);
    SMIN = double(SMIN);
    SMAX = double(SMAX);
    mini1 = double(min(min(I(:,:,1))));
    mini2 = double(min(min(I(:,:,2))));
    mini3 = double(min(min(I(:,:,3))));
    maxi1 = double(max(max(I(:,:,1))));
    maxi2 = double(max(max(I(:,:,2))));
    maxi3 = double(max(max(I(:,:,3))));
    for i = 1:W
        for j = 1:H
            NI(i,j,1) = ((SMAX - SMIN) / (maxi1 - mini1)) * (I(i,j,1) - mini1) + SMIN;
            NI(i,j,2) = ((SMAX - SMIN) / (maxi2 - mini2)) * (I(i,j,2) - mini2) + SMIN;
            NI(i,j,3) = ((SMAX - SMIN) / (maxi3 - mini3)) * (I(i,j,3) - mini3) + SMIN;
        end
    end
    NI = uint8(NI);
else
    NI = zeros(W,H,L);
    SMIN = double(SMIN);
    SMAX = double(SMAX);
    mini1 = double(min(min(I(:,:,1))));
    maxi1 = double(max(max(I(:,:,1))));
    for i = 1:W
        for j = 1:H
            NI(i,j,1) = ((SMAX - SMIN) / (maxi1 - mini1)) * (I(i,j,1) - mini1) + SMIN;
        end
    end
    NI = uint8(NI);
end
end

