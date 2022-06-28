clc;
clear all;
close all;
%declaring matrices
A =input('Enter coefficient matrix A: ');
B=input('Enter matrix of constants B: ');
y = [A B]; %A|B
%transforming A into a diagonal matrixB
n= size(A);
for col=1:n-1 %transform lower triangular elements of A into zeros
    for row=col+1:n
        x = y(row,col)/y(col,col);
        y(row,:) = y(row,:) - x*y(col,:);
    end
end
for col=n:-1:2 %transform upper triangular elements of A into zeros
    for row=col-1:-1:1
        x = y(row,col)/y(col,col);
        y(row,:) = y(row,:) - x*y(col,:);
    end
end
c=y(:,size(y,2));
y(:,size(y,2))=[];
round(inv(y)*c) %the desired value