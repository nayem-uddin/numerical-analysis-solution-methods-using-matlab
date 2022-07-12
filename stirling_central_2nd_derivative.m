clc;
clear;
close all;
l=input('Lower value of x: ');
u=input('Upper value of x: ');
h=input('step size, h: ');
syms p;
x=l:h:u;
n=size(x,2);
disp('Enter the values of y: ')
y=zeros(1,n);
for i=1:n
    y(i)=input('');
end
X=input('Enter the value of x for which you want the value of y: ');
P=(X-x(round((n+1)/2)))/h;
sum=y((round((n+1)/2)));
del=y;
for j=1:4
    for i=1:(size(del,2)-1)
        del(i)=del(i+1)-del(i);
    end
    del(end)=[];
    m=round((size(del,2)+1)/2);
    if mod(j,2)~=0
          dely=(del(m)+del(m-1))/2;
    else
          dely=del(m);
    end
    if j<2
        sum=sum+(p^j*dely/factorial(j));
    else
        sum=sum+(p^(j-2)*(p^2-1)*dely/factorial(j));
    end
end
fprintf('The value of d2y/dx2 for the given value of x is: %f\n',double(subs(diff(diff(sum)),p,P)/h^2))