clc;
clear all;
syms x
%Finding Root of Algebraic and Transcendental Equations by Secant Method
f(x)=input('Please Enter the Function=');
k=input('please input number of iteration=');
error=input('Acceptable error=');
for i=-500:500
    if f(i)<0
        x0=i;
    end
    if f(i)>0
        x1=i;
        break
    end
end
for j=2:k
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    if f(x2)==0
        x2=x2;
    else
        x0=x1;
        x1=x2;
    end
        vx2(1)=0;
        vx2(j)=x2;
        if abs((vx2(j)-vx2(j-1))/vx2(j))<error
            break
        end
end
 fprintf('\nRoot of the given function=%f\n',x2);
