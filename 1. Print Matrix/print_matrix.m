%array declaration
%   row 1   row 2   row 3
a = [1 2 3;4 5 6;7 8 9];
%size(matrix_name) returns rows and columns
[row,col] = size(a);
%print rows and columns to check
row
col
%increment each element of matrix through loop
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