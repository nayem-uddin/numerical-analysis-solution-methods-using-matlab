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
yc=0;
y3=0;
for i=2:(m-1)
    if(mod(i-1,3)==0)
        y3=y3+y(i); %sum of terms y3,y6,...,yn-3
    else 
        yc=yc+y(i); %sum of other terms
    end
end
is38=(y(1)+3*yc+2*y3+y(m))*3*h/8;
fprintf("The value of integral is: %.16f\n",is38)