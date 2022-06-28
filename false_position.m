clc;
clear all;
close all;
disp('False position method');
syms x;
f=input('Write your function:');
b=input('X_upper=');
a=input('X_lower=');
n=input('tolerance=');
step_size = abs(a-b);
fb=subs(f,x,b);
fa=subs(f,x,a);
if fa*fb>0
    disp('Invalid inputs')
else
    c=(a*fb-b*fa)/(fb-fa);
    fc=subs(f,x,c);
    while(step_size>n)
        c=(a*fb-b*fa)/(fb-fa);
        fc=subs(f,x,c);
        if fa*fc>0
            step_size = abs(a - c);
            a=c;
            fa=subs(f,x,a);
        else
            step_size = abs(c - b);
            b=c;
            fb=subs(f,x,b);
        end
    end
end
double(c)