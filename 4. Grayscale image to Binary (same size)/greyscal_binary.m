%method to read image
img = imread('lena512.bmp');
%get size of image
[row,col] = size(img);
%choose and threshold value and set all pixels above it to 1 (white)
%and all pixels below it to 0 (black)
for i=1:row
    for j=1:col
        if(img(i,j)>128)
            img(i,j)=1;
        else
            img(i,j)=0;
        end
    end
end
%writing the image to output image
imwrite(logical(img),'lena512_bin.bmp');