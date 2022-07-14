clc
clear
close all
syms x y;
fn=input("Write your function: ");
x0=input("Enter x0=");
y0=input("Enter y0=");
h=input("Enter the value of x for which you want the value of y(x):");
o=input('Enter order:');
k=zeros(1,4);
k(1)=h*subs(fn,[x,y],[x0,y0]);
for i=2:(o-1)
    k(i)=h*subs(fn,[x,y],[x0+0.5*h,y0+0.5*k(i-1)]);
end
if o>2
    k(end)=h*subs(fn,[x,y],[x0+h,y0+k(i)]);
else
    k(end)=h*subs(fn,[x,y],[x0+h,y0+k(1)]);
end
res=y0+(sum(k([1 end]))+2*sum(k(2:end-1)))/(2*o-2);
fprintf("The desired value of y is: %f\n",res)