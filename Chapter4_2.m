I=imread('2.jpg');
I = rgb2gray(I);
Sx=[-1 0 1;-2 0 2;-1 0 1]; %sobelËã×Ó 
Sy=[-1 -2 -1;0 0 0;1 2 1];
Px=[-1 0 1;-1 0 1;-1 0 1]; %prewittËã×Ó 
Py=[-1 -1 -1;0 0 0;1 1 1];
Is=abs(filter2(Sx,I,"full"))+abs(filter2(Sy,I,"full")); 
Ip=abs(filter2(Px,I))+abs(filter2(Py,I));
subplot(1,3,1);imshow(I);
subplot(1,3,2);imshow(Is,[]);
subplot(1,3,3);imshow(Ip,[]);