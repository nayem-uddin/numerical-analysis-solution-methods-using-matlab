clc
clear
close all
syms x y;
fn=input('Write your function f(x,y):');
h=input('Enter h:');
y0=input('Enter the value of y0 (or y(0)):');
X=input('Enter the value of x for which you want the value of y:');
Y=y0;
for i=h:h:X
  Y=double(Y+h*subs(fn,[x,y],[i-h,Y]));
end
fprintf("For x=%.2f, y=%.4f\n",X,Y)