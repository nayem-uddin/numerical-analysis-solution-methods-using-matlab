clc
clear all
close all
l=input('Lower value of x: ');
u=input('Upper value of x: ');
h=input('step size, h: ');
x=l:h:u;
n=size(x,2);
disp('Enter the values of y: ')
for i=1:n
    y(i)=input('');
end
X=input('Enter the value of x for which you want the value of y: ');
p=(X-x(end))/h;
pr=1;
sum=y(end);
del=y;
for j=1:n-1
    for i=1:(size(del,2)-1)
        del(i)=del(i+1)-del(i);
    end
    del(end)=[];
    pr=pr*(p+j-1);
    sum=sum+(pr*del(end)/factorial(j));
    del(end)
end
disp(['The desired value is: ',num2str(sum)])