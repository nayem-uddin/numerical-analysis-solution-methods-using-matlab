clc;
clear all;
close all;
A =input('Enter A: ');
B=input('Enter B: ');
n=size(A);
U=A;
L=zeros(size(A));
for i=1:n-1
    for j=i+1:n
        m=U(j,i)/U(i,i);
        U(j,:)=U(j,:)-m*U(i,:);
        L(j,i)=m;
    end
end
for i=1:n
    L(i,i)=1;
end
Y=inv(L)*B;
round(inv(U)*Y) %the final results from UX=Y