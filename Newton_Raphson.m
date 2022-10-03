clc;
clear all;
%Solution of the algebraic and transcendental equation using Newton-Raphson method
syms x
%Please input the function
f(x)=input('Please input the function,f(x)=');
%Please input the number of iteration
k=input('Number of iteration=');
%Please input acceptable error
error=input('Acceptable error=');
y(x)=diff(f(x));
%Please input the initial value of x
a=input('Please input the initial value of x=');
r=a-(f(a)/y(a));
for j=2:k
x=r-(f(r)/y(r));
r=x;
cr(1)=r;
cr(j)=x;
if abs((cr(j)-cr(j-1))/cr(j))<error
    break
end
end
fprintf('\nRoot of the given function=%f\n', r);