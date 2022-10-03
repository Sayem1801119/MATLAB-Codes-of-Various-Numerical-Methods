clc
clear all;
A=[1:10];
B=[1:10];
C=[1:10];
NumA=[100 67 56 58 90 89 68 98 68 66];
NumB=[68 67 56 46 89 83 78 40 69 70];
NumC=[89 80 49 67 79 56 59 60 100 76];
p=input('Plotting Style (1 for bar chart, 2 for pie chart=');
if p==1
subplot(3,1,1)
bar(A,NumA,'g')
subplot(3,1,2)
bar(B,NumB,'r')
subplot(3,1,3)
bar(C,NumC,'b')
end
if p==2
subplot(3,1,1)
pie(A,NumA)
subplot(3,1,2)
pie(B,NumB)
subplot(3,1,3)
pie(C,NumC)
end



    