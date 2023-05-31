clc;
clear all;
syms x
%Root finding by using false position method
%please give the function
f(x)=input('Function=');
error=input('Acceptable error, error=');
for (i=-500:500)
     if f(i)<0
        a=i; 
     end
     if f(i)>0
       b=i;
       break
     end
end
Value_of_x_for_negative_output=a
Value_of_x_for_positive_output=b
for(j=2:10000)
    A=f(a);
    B=f(b);
    r=a-((A/(B-A))*(b-a));
if f(r)>0
    b=r;
else
    a=r;
end
rcom(1)=0;
rcom(j)=r;
if abs((rcom(j)-rcom(j-1))/rcom(j))<error
    break
end
end
fprintf('\nRoot of the given function is=%f\n', r);
