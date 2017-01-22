a = [1 2 3 4;5 6 7 8];
[row,col] = size(a);
b=zeros(2*row,col);
m=1;
n=1;
for i=1:row
    n=1;
    for j=1:col
        b(m,n)=a(i,j);
        if(n==col)
            break;
        end
        n=n+1;
    end
    m=m+2;
end
a
b