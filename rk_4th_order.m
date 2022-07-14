clc
clear
close all
syms x y;
fn=input("Write your function: ");
x0=input("Enter x0=");
y0=input("Enter y0=");
h=input("Enter the value of x for which you want the value of y(x):");
k=zeros(1,4);
k(1)=h*subs(fn,[x,y],[x0,y0]);
for i=2:3
    k(i)=h*subs(fn,[x,y],[x0+0.5*h,y0+0.5*k(i-1)]);
end
k(4)=h*subs(fn,[x,y],[x0+h,y0+k(3)]);
fprintf("The desired value of y is: %f\n",y0+(k(1)+2*(k(2)+k(3))+k(4))/6)