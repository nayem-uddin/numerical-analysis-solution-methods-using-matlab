clc;
clear all;
close all;
syms x;
f=input('enter your function y=f(x): ');
h=input('enter h=');
l=input('enter lower limit of x: ');
u=input('enter upper limit of x: ');
disp('The value of integral for-')
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
fprintf('Trapezoidal rule= %.16f\n',It);
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
fprintf("Simpson's 1/3 rule= %.16f\n",Is13);
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
fprintf("Simpson's 3/8 rule= %.16f\n",is38)
