clc;
clear all;
close all;
%declaring matrices
A =input('Enter A: ');
B=input('Enter B: ');
C = [A B]; %A|B
%transforming A into an upper triangular matrix performing row-wise operation on A|B
n= size(A);
for i=1:n-1
    for j=i+1:n
        m = C(j,i)/C(i,i);
        C(j,:) = C(j,:) - m*C(i,:);
    end
end
c=C(:,size(C,2));
C(:,size(C,2))=[];
round(inv(C)*c) %the final result