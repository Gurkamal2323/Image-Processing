img = imread('lena512.bmp');
[row,col] = size(img);
for i=1:row
    for j=1:col
        if(img(i,j)>128)
            img(i,j)=1;
        else
            img(i,j)=0;
        end
    end
end
imwrite(logical(img),'lena512_bin.bmp');