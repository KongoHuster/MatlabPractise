image = imread('1.jpg');
%获得灰度图像
imageGray = rgb2gray(image);

% figure(1);
% imshow(image);
% figure(2);
% imshow(imageGray);
%改变图片灰度
% figure(3);
% imageGrayChange = imadjust(image, [], [], 0.4);
% imshow(imageGrayChange);
%储存生成的图片
% imwrite(imageGrayChange, "imageGrayChange.jpg")


videoName = 'Resize.avi';
fps = 25; %帧率
startFrame = 1; %从哪一帧开始
endFrame = 350; %哪一帧结束


aviobj=VideoWriter(videoName);  %创建一个avi视频文件对象，开始时其为空
aviobj.FrameRate=fps;
open(aviobj);
%读入图片
for i=startFrame:endFrame
    frames = imresize(image,[20, 20]);
    writeVideo(aviobj,frames);
end
close(aviobj);% 关闭创建视频



