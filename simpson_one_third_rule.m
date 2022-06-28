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
yo=0;
ye=0;
for i=2:(m-1)
    if mod(i-1,2)==0
        ye=ye+y(i); %sum of even terms
    else
        yo=yo+y(i); %sum of odd terms
    end
end
Is13=(y(1)+4*yo+2*ye+y(m))*h/3;
fprintf("The value of integral is: %.16f\n",Is13);