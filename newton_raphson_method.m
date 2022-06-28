clc;
clear all;
close all;
disp('Newton-Raphson Method')
syms x;
f=input('Write your function:'); %defining function
f1=diff(f);
a=input('x=');
tol1=input('tolerance |x0-x1|=');
tol2=input('tolerance |f(x0)|=');
i=1;
c=a-(subs(f,x,a)/subs(f1,x,a));
while((abs(a-c)>tol1)|(abs(subs(f,x,a))>tol2))
    i=i+1;
    a=c;
    c=a-(subs(f,x,a)/subs(f1,x,a));
end
double(c)