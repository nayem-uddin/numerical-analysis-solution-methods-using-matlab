clc;
clear all;
close all;
syms x;
f=input('enter your function y=f(x): ');
h=input('enter h=');
l=input('enter lower limit of x: ');
u=input('enter upper limit of x: ');
X=l:h:u;
n=size(X,2);
for i=1:n
    y(i)=subs(f,x,X(i));
end
m=size(y,2);
ys=0;
for i=2:(m-1)
    ys=ys+y(i); %sum from y1 to y(n-1)
end
It=(y(1)+2*ys+y(m))*h/2;
fprintf('The integral is: %.16f\n',It);