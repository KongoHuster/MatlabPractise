I=imread('1.jpg');
[m,n]=size(I); 
subplot(1,3,1);imshow(I); 
C=double(zeros(256)); %直方图统计 
for j=1:m
    for k=1:n 
       r=I(j,k);
       C(r)=C(r)+1; 
    end
end
subplot(1,3,2);stem(C,'.');

for j=2:256 %直方图累计函数
C(j)=C(j)+C(j-1); 
end
subplot(1,3,3);plot(C);