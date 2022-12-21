function [edges] = H_edge_detection(img)
[W H I] = size(img);
mask = [-1 -2 -1;0 0 0;1 2 1]/255;
if I > 1
    edges = zeros(W,H,I);
    edges(:,:,1) = filter2(mask , img(:,:,1));
    edges(:,:,1) = edges(:,:,1) * 255;
    edges(:,:,2) = filter2(mask , img(:,:,2));
    edges(:,:,2) = edges(:,:,2) * 255;
    edges(:,:,3) = filter2(mask , img(:,:,3));
    edges(:,:,3) = edges(:,:,3) * 255;
    edges = uint8(edges);
else
    edges = filter2(mask , img);
    edges = uint8(edges * 255);
end
end