img1 = imread('lena512.bmp');
[row,col] = size(img1);
img2 = zeros(row,2*col);
for i=1:row
    for j=1:col
        img2(i,2*j)=img1(i,j);    
    end
end
j = uint8(img2);
imshow(j);