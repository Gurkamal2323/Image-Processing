img = imread('lena512.bmp');
[row,col] = size(img);
for i=1:row
    for j=1:col
        img(i,j)=img(i,j)-150;
    end
end
imwrite((img),'lena512_dec_brightnesss.bmp');