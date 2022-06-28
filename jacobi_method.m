clc;
clear all;
close all;
%taking initial values as inputs
x=input('Enter x1=');
y=input('Enter x2=');
z=input('Enter x3=');
%re-arranged functions from given equation set
fx1=@(x2,x3) (3-x2+x3)/4;
fx2=@(x1,x3) (19-2*x1-x3)/7;
fx3=@(x1,x2) (31-x1+3*x2)/12;
%putting the initial values in the functions
f1=fx1(y,z);
f2=fx2(x,z);
f3=fx3(x,y);
%iteration starts
while((abs(f1-x)>0.0001)&&(abs(f2-y)>0.0001)&&(abs(f3-z)>0.0001))
    x=f1;
    y=f2;
    z=f3;
    f1=fx1(y,z);
    f2=fx2(x,z);
    f3=fx3(x,y);
end
fprintf('The final approximate solutions are:\nx1=%f, x2=%f, x3=%f\n',x,y,z); %final approximate results