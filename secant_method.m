clc;
clear all;
close all;
disp('Secant Method');
syms x;
f=input('Write your function:');
x0=input('X_upper=');
x1=input('X_lower=');
tol=input('tolerance=');
fx1=subs(f,x,x1);
fx0=subs(f,x,x0);
x2=x1-fx1*(x0-x1)/(fx0-fx1);
fx2=subs(f,x,x2);
while(abs(fx2)>tol)
        x0=x1;
        x1=x2;
        fx1=subs(f,x,x1);
        fx0=subs(f,x,x0);
        x2=x1-fx1*(x0-x1)/(fx0-fx1);
        fx2=subs(f,x,x2);
end
double(x2)