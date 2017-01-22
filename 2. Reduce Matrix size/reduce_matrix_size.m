%matrix declaration
a = [1 2 3 4;5 6 7 8;9 10 11 12;13 14 15 16];
[row,col] = size(a);
%zeros(row,col) is used to create matrix with zero intial values
%the size of matrix created by zeros() can be increased beyond its limit
b=zeros(row/2,col/2);
m=1;
n=1;
%reduce matrix size
for i=1:2:row
    n=1;
    for j=1:2:col
        if(n>j)
            break;
        end
        b(m,n)=a(i,j);
        n=n+1;
    end
    m=m+1;
    if(m==i)
        break;
    end
end
a
b