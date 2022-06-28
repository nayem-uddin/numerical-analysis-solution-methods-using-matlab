clc;
clear all;
close all;
disp('Bisection Method')
syms x;
f=input('Write your function:');
a=input('X_upper=');
b=input('X_lower=');
tol=input('tolerance=');
fa=subs(f,x,a);
fb=subs(f,x,b);
if fa*fb > 0
    disp('Invalid inputs')
else
    c=(a+b)/2;
    while(abs(a-b)/2 > tol)
        fc=subs(f,x,c);
        if fc*fb > 0
            b=c;
        else
            a=c;
        end
    c=(a+b)/2;
end
double(c)
end
