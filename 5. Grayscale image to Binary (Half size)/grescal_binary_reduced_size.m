img = imread('lena512.bmp');
[row,col] = size(img);
b = zeros(row/2,col/2);
m=1;
n=1;
for i=1:2:row
    n=1;
    for j=1:2:col
        if(img(i,j)>128)
            b(m,n)=1;
        else
            b(m,n)=0;
        end
        n=n+1;
    end
    m=m+1;
end
imwrite(logical(b),'lena512_bin_reduced.bmp');