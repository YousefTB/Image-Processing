function [newImg] = Brightness(Img ,offset,option)
[W H I] = size(Img);
newImg = zeros(W,H,I);
if I > 1
    for a = 1:W
        for b = 1:H 
            if (option == 1)  
                newImg(a,b,1) = (double(Img(a,b,1)) + offset) ;
                if newImg(a,b,1) > 255
                    newImg(a,b,1) = 255;
                end
                newImg(a,b,2) = (double(Img(a,b,2)) + offset) ;
                if newImg(a,b,2) > 255
                    newImg(a,b,2) = 255;
                end
                newImg(a,b,3) = (double(Img(a,b,3)) + offset) ;
                if newImg(a,b,3) > 255
                    newImg(a,b,3) = 255;
                end
            end 
            if (option == 2)  
                newImg(a,b,1) = (double(Img(a,b,1)) * offset) ;
                if (newImg(a,b,1) > 255)
                    newImg(a,b,1) = 255;
                end
                newImg(a,b,2) = (double(Img(a,b,2)) * offset) ;
                if (newImg(a,b,2) > 255)
                    newImg(a,b,2) = 255;
                end
                newImg(a,b,3) = (double(Img(a,b,3)) * offset) ;
                if (newImg(a,b,3) > 255)
                    newImg(a,b,3) = 255;
                end
            end 
            if (option == 3) 
                newImg(a,b,1) = (double(Img(a,b,1)) - offset) ; 
                if (newImg(a,b,1) < 0)
                    newImg(a,b,1) = 0;
                end
                newImg(a,b,2) = (double(Img(a,b,2)) - offset) ; 
                if (newImg(a,b,2) < 0)
                    newImg(a,b,2) = 0;
                end
                newImg(a,b,3) = (double(Img(a,b,3)) - offset) ; 
                if (newImg(a,b,3) < 0)
                    newImg(a,b,3) = 0;
                end
            end 
            if (option == 4)
                newImg(a,b,1) = (double(Img(a,b,1)) / offset) ; 
                if (newImg(a,b,1) < 0)
                    newImg(a,b,1) = 0;
                end
                newImg(a,b,2) = (double(Img(a,b,2)) / offset) ; 
                if (newImg(a,b,2) < 0)
                    newImg(a,b,2) = 0;
                end
                newImg(a,b,3) = (double(Img(a,b,3)) / offset) ; 
                if (newImg(a,b,3) < 0)
                    newImg(a,b,3) = 0;
                end
            end 
        end  
    end
    newImg = uint8(newImg);
else
    for a = 1:W
        for b = 1:H 
            if (option == 1)  
                newImg(a,b,1) = (double(Img(a,b,1)) + offset) ;
                if newImg(a,b,1) > 255
                    newImg(a,b,1) = 255;
                end
            end 
            if (option == 2)  
                newImg(a,b,1) = (double(Img(a,b,1)) * offset) ;
                if (newImg(a,b,1) > 255)
                    newImg(a,b,1) = 255;
                end
            end 
            if (option == 3) 
                newImg(a,b,1) = (double(Img(a,b,1)) - offset) ; 
                if (newImg(a,b,1) < 0)
                    newImg(a,b,1) = 0;
                end
            end 
            if (option == 4)
                newImg(a,b,1) = (double(Img(a,b,1)) / offset) ; 
                if (newImg(a,b,1) < 0)
                    newImg(a,b,1) = 0;
                end
            end
        end  
    end
    newImg = uint8(newImg);
end
end