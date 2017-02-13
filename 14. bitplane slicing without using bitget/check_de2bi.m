a = [1 2 3
    4 5 6
    7 8 9];
[r c] = size(a);
d1 =zeros(r,c);
d2 =zeros(r,c);
d3 =zeros(r,c);
d4 =zeros(r,c);
d5 =zeros(r,c);
d6 =zeros(r,c);
d7 =zeros(r,c);
d8 =zeros(r,c);
for i=1:r
    for j=1:c
        b = de2bi(a(i,j),8,'left-msb');
        d1(i,j) = b(1,1);
        d2(i,j) = b(1,2);
        d3(i,j) = b(1,3);
        d4(i,j) = b(1,4);
        d5(i,j) = b(1,5);
        d6(i,j) = b(1,6);
        d7(i,j) = b(1,7);
        d8(i,j) = b(1,8);
    end
end
b
d1
d2
d3
d4
d5
d6
d7
d8