I=imread('women.jpg');
m=128; n=256;k=10;
s=1:1:n;
t=n./(1+(m./s).^k); %对比度增加
Ib=uint8(n./(1+(m./double(I)).^k));
subplot(1,3,1);imshow(I); 
subplot(1,3,2);plot(t,'R'); 
subplot(1,3,3);imshow(Ib)