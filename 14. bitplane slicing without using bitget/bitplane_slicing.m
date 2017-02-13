a=imread('aerial.bmp');
b1=zeros();
b2=zeros();
b3=zeros();
b4=zeros();

b5=zeros();
b6=zeros();

b7=zeros();
b8=zeros();
b9=zeros(256,256);

for m=1:256
    for n=1:256
        t=de2bi(a(m,n),8,'right-msb');
        b1(m,n)=t(1,8);
        b2(m,n)=t(1,7)*2;
        b3(m,n)=t(1,6)*4;
        b4(m,n)=t(1,5)*8;
        b5(m,n)=t(1,4)*16;
        b6(m,n)=t(1,3)*32;
        b7(m,n)=t(1,2)*64;
        b8(m,n)=t(1,1)*128;
    end
end
subplot(3,4,1);
imshow(a);
title('original'); 

subplot(3,4,2);
imshow(b8);
title('image of bit-1'); 
subplot(3,4,3);
imshow(b7);
title('image of bit-2'); 
subplot(3,4,4);
imshow(b6);
title('image of bit-3'); 
subplot(3,4,5);
imshow(b5);
title('image of bit-4'); 
subplot(3,4,6);
imshow(b4);
title('image of bit-5'); 

subplot(3,4,7);
imshow(b3);
title('image of bit-6'); 

subplot(3,4,8);
imshow(b2);
title('image of bit-7'); 

subplot(3,4,9);
imshow(b1);
title('image of bit-8'); 
b9=b1+b2+b3+b4+b5+b6+b7+b8;
b9=uint8(b9);
subplot(3,4,10);
imshow(b9,[]);