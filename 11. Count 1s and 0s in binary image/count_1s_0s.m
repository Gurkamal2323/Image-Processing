img = imread('lena512_bin.bmp');
[row,col] = size(img);
one=0;
zero=0;
for i=1:row
    for j=1:col
        if(img(i,j)==1)
            one=one+1;
        end
        if(img(i,j)==0)
                zero=zero+1;
            end
    end
end
one
zero
