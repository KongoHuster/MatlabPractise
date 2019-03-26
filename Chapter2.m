I=imread('center.png');%��ȡԭͼ��
figure(1);imshow(I);%��ʾԭͼ��

I_gray=rgb2gray(I);%ԭͼ���Ϊ�Ҷ�ͼ��
level=graythresh(I_gray);%����ͼ��I_gray��ȫ����ֵ��levelΪ��׼���Ҷ�ֵ���䷶ΧΪ[0 1]
[height,width]=size(I_gray);%����Ҷ�ͼ��ĳ���
I_bw=im2bw(I_gray,level);%im2bwʹ����ֵlevel���Ҷ�ͼ��ת��Ϊ��ֵͼ��

for i=1:height %%ѭ���н��з�ɫ
    for j=1:width   
        if I_bw(i,j)==1      
            I_bw(i,j)=0;  
        else I_bw(i,j)=1; 
        end
    end
end
figure(3);imshow(I_bw);%��ʾȡ����Ķ�ֵͼ�񣨱���Ϊ��ɫ��

[L,num]=bwlabel(I_bw,8);%bwlabel��ע��ֵͼ��I_bw�е�Ŀ�����壬���ر�ʶ����̺�I_bw��Ŀ�����������num������ʾ��ͨ����
plot_x=zeros(1,num);%%zeros(m,n)����m��n��ȫ0�������ڼ�¼����λ�õĺ�����
plot_y=zeros(1,num);%zeros(m,n)����m��n��ȫ0�������ڼ�¼����λ�õ�������

for k=1:num  %%num����������ͳ������λ��    
    sum_x=0;    sum_y=0;    area=0; %��ʼ��
    for i=1:height   
        for j=1:width 
            if L(i,j)==k     
                sum_x=sum_x+i;  %����ڣ�����ĺ������ܺ�
                sum_y=sum_y+j;  %����ڣ�������������ܺ� 
                area=area+1;    %����ڣ�������ɶ��ٸ�������ʾ
            end
        end
    end
    plot_x(k)=fix(sum_x/area);  %����ڣ���������ĺ�����
    plot_y(k)=fix(sum_y/area);%����ڣ����������������
end

for i=1:num
    hold  on
    plot(plot_y(i) ,plot_x(i), '*')
end

DE = sqrt((plot_y(4) - plot_y(1)^2 + (plot_x(4) - plot_x(1))^2))

