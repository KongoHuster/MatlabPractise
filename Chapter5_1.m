clear all
close all
m=1000; %ͼ���С 
n=1000;
A=zeros(m,n);
xn=50; %������ 
yn=50;
for j=0:m/xn
   for k=0:n/yn
     if rem((j+k),2) 
       A(j*xn+1:(j+1)*xn,k*yn+1:(k+1)*yn)=200; 
     end
   end
end
 