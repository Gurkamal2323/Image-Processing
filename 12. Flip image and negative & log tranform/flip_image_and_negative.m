img = double(imread('lena512.bmp'));
[row,col] = size(img);
img2 = zeros(row,col);
img3 = zeros(row,col);
img4 = zeros(row,col);
img5 = zeros(row,col);
img6 = zeros(row,col);
img7 = zeros(row,col);
for i=1:row
    for j=1:col
        img2(i,j) = img(row-i+1,j);
        img3(i,j) = img(i,col-j+1);
        img4(i,j) = img(row-i+1,col-j+1);
        img5(i,j) = img(j,i);
        img6(i,j) = 255 - img(i,j); %negative transform
        img7(i,j) = 4*log10(1+img(i,j)); %log transform
    end
end
img2 = uint8(img2); %uint8 converts double
img3 = uint8(img3);
img4 = uint8(img4);
img5 = uint8(img5);
img6 = uint8(img6);
subplot(3,3,1);imshow(uint8(img));title('original');
subplot(3,3,2);imshow(img2);title('1');
subplot(3,3,3);imshow(img3);title('2');
subplot(3,3,4);imshow(img4);title('3');
subplot(3,3,5);imshow(img5);title('4');
subplot(3,3,6);imshow(img6);title('5');
subplot(3,3,7);imshow(img7,[]);title('6'); % [] is used to convert datatype in display time only  not to be saved