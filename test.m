image = imread('1.jpg');
%��ûҶ�ͼ��
imageGray = rgb2gray(image);

% figure(1);
% imshow(image);
% figure(2);
% imshow(imageGray);
%�ı�ͼƬ�Ҷ�
% figure(3);
% imageGrayChange = imadjust(image, [], [], 0.4);
% imshow(imageGrayChange);
%�������ɵ�ͼƬ
% imwrite(imageGrayChange, "imageGrayChange.jpg")


videoName = 'Resize.avi';
fps = 25; %֡��
startFrame = 1; %����һ֡��ʼ
endFrame = 350; %��һ֡����


aviobj=VideoWriter(videoName);  %����һ��avi��Ƶ�ļ����󣬿�ʼʱ��Ϊ��
aviobj.FrameRate=fps;
open(aviobj);
%����ͼƬ
for i=startFrame:endFrame
    frames = imresize(image,[20, 20]);
    writeVideo(aviobj,frames);
end
close(aviobj);% �رմ�����Ƶ



