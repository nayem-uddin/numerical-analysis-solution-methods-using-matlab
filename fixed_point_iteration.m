clc;
clear all;
close all;
disp('fixed point iteration method')
syms x;
f=input('Write the equivalent function of your equation:');
x1=input('initial value=');
tol=input('tolerance=');
it=input('number of maximum iterations=');
x2=subs(f,x,x1);
i=1;
while(i<it)
    if abs(x2-x1)>tol
        x1=x2;
        x2=subs(f,x,x1);
        i=i+1;
    else
    end
end
double(x1)
fprintf('This root is found after %d iterations\n',i)