clc
clear
close all
syms x y;
fn=input('Write your function f(x,y):');
h=input('Enter h:');
x0=input('Enter the value of x0:');
y0=input('Enter the value of y0 (or y(0)):');
X=input('Enter the value of x for which you want the value of y:');
Yy=y0; %past value of y for each iteration is stored in Yy variable
Xx=x0; %Xx has the same role for x as Yy has for y
for i=h:h:X
  Y=Yy+h*subs(fn,[x,y],[Xx,Yy]);
  my=0;
  while abs(my-Y)>=0.0001
      my=Yy+h*((subs(fn,[x,y],[Xx,Yy]))+(subs(fn,[x,y],[i,Y])))/2;
      Y=Yy+h*((subs(fn,[x,y],[Xx,Yy]))+(subs(fn,[x,y],[i,my])))/2;
  end
  Yy=Y;
  Xx=i;
end
fprintf("For x=%.2f, y=%.5f\n",Xx,Yy)