function [NI] = sharpening_HV(img,option)
[W H I] = size(img);
mask_horizontal = [0 1 0; 0 1 0; 0 -1 0]/255;
mask_vertical=[0 0 0;1 1 -1;0 0 0]/255;
if option==1
    if I > 1
        NI = zeros(W,H,I);
        NI(:,:,1) = filter2(mask_vertical , img(:,:,1));
        NI(:,:,1) = NI(:,:,1) * 255;
        NI(:,:,2) = filter2(mask_vertical , img(:,:,2));
        NI(:,:,2) = NI(:,:,2) * 255;
        NI(:,:,3) = filter2(mask_vertical , img(:,:,3));
        NI(:,:,3) = NI(:,:,3) * 255;
        NI = uint8(NI);
    else
        NI = filter2(mask_vertical , img);
        NI = uint8(NI * 255);
  end
else
  if I > 1
        NI = zeros(W,H,I);
        NI(:,:,1) = filter2(mask_horizontal , img(:,:,1));
        NI(:,:,1) = NI(:,:,1) * 255;
        NI(:,:,2) = filter2(mask_horizontal , img(:,:,2));
        NI(:,:,2) = NI(:,:,2) * 255;
        NI(:,:,3) = filter2(mask_horizontal , img(:,:,3));
        NI(:,:,3) = NI(:,:,3) * 255;
        NI = uint8(NI);
    else
        NI = filter2(mask_horizontal , img);
        NI = uint8(NI * 255);
end
end

