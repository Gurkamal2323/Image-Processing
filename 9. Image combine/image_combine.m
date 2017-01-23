img = imread('lena512.bmp');
img2 = imread('aerial.bmp');
[row,col] = size(img);
for i=1:row
    for j=1:col
        img(i,j)=img(i,j)+img2(i,j);
    end
end
imwrite((img),'image_combine.bmp');
imshow(img);