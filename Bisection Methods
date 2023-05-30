clc;
clear all;
syms x
%Bisection method to find the root of the non-linear equation
% Give the function
f(x)=input('Function=');
e=input('Acceptable error, e=');
for (i=-500:500)
     if f(i)<0
        y=i; 
     end
     if f(i)>0
       w=i;
       break
     end
end
% The root between the interval lies between the two marginal points.
% These are-
Value_of_x_for_negative_output=y
Value_of_x_for_positive_output=w
for(j=2:1000)
    r=(y+w)/2;
if f(w)*f(r)<0
    y=r;
else
    w=r;
end
if f(y)*f(r)<0
    w=r;
else
    y=r;
end
rcom(1)=0;
rcom(j)=r;
if abs((rcom(j)-rcom(j-1))/rcom(j))<e
    break
end
end
Root=['Root of the given function: ', num2str(r), '']
