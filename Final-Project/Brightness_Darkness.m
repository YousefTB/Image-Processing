function [B_D] = Brightness_Darkness(img,offset,option)
gray = rgb_to_gray(img);
[W H] = size(gray);
B_D = zeros(H,W); 
B_D = double(B_D); 
for a = 1:H 
    for b = 1:W 
        if (option == 1)  
        B_D(a,b) = (gray(a,b) + offset) ; 
        end 
        if (option == 2)  
        B_D(a,b) = (gray(a,b) * offset) ; 
        end 
        if (option == 3) 
        B_D(a,b) = (gray(a,b) - offset) ; 
        end 
        if (option == 4) 
        B_D(a,b) = (gray(a,b) / offset) ; 
        end 
    end  
end 
 
B_D = uint8(B_D); 
end
