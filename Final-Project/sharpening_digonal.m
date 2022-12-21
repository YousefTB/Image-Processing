function [NI] = sharpening_digonal(img,option)
[W H I] = size(img);
mask_left_diagonal = [0 0 1; 0 1 0; -1 0 0]/255;
mask_right_diagonal=[1 0 0;0 1 0;0 0 -1]/255;
if option==1
    if I > 1
        NI = zeros(W,H,I);
        NI(:,:,1) = filter2(mask_left_diagonal , img(:,:,1));
        NI(:,:,1) = NI(:,:,1) * 255;
        NI(:,:,2) = filter2(mask_left_diagonal , img(:,:,2));
        NI(:,:,2) = NI(:,:,2) * 255;
        NI(:,:,3) = filter2(mask_left_diagonal , img(:,:,3));
        NI(:,:,3) = NI(:,:,3) * 255;
        NI = uint8(NI);
    else
        NI = filter2(mask_left_diagonal , img);
        NI = uint8(NI * 255);
  end
else
  if I > 1
        NI = zeros(W,H,I);
        NI(:,:,1) = filter2(mask_right_diagonal , img(:,:,1));
        NI(:,:,1) = NI(:,:,1) * 255;
        NI(:,:,2) = filter2(mask_right_diagonal , img(:,:,2));
        NI(:,:,2) = NI(:,:,2) * 255;
        NI(:,:,3) = filter2(mask_right_diagonal , img(:,:,3));
        NI(:,:,3) = NI(:,:,3) * 255;
        NI = uint8(NI);
    else
        NI = filter2(mask_right_diagonal , img);
        NI = uint8(NI * 255);
  end
end
end

