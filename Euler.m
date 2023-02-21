clear
clc
%%
f=input('insert your f = ','s');
f=inline(char(f),'x','y');

h=input('insert the step size:');
a=input('insert the x0:'); 
b=input('insert the xn:');
y=input('insert the y0:');
n=((b-a)/h)+1;
x=a;
for i=2:n
    y(i)=y(i-1)+h*f(x(i-1),y(i-1));
    x(i)=x(i-1)+h;
end



plot(x,y,'-.r')
title(' aproximation solution with Euler method')

