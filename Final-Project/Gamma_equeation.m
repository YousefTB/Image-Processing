function [NI] = Gamma_equeation(image,value)
[H,W,I] = size(image);
NI= double(zeros(H,W,I));
image = double(image) / 255;
if I > 1
    for i=1:H
        for j=1:W
             NI(i,j,1)= (image(i,j,1))^value;
             NI(i,j,2)= (image(i,j,2))^value;
             NI(i,j,3)= (image(i,j,3))^value;
        end
    end
    NI = uint8(NI * 255);
else
    for i = 1: H
        for j = 1: W
            NI(i,j)= (image(i,j))^value;
        end
    end
    NI = uint8(NI * 255);
end
end

