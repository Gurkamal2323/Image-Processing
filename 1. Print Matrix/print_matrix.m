a = [1 2 3;4 5 6;7 8 9];
[row,col] = size(a);
row
col
for i=1:row
    for j=1:col
        a(i,j)=a(i,j)+1;
    end
end
a
for i=1:2:row
    for j=1:2:col
        a(i,j)
    end
end