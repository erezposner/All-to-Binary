
close all; clear all;
%% Save Image to Bin
% read input image
img = rgb2gray(imread('maxresdefault.jpg'));
height = size(img,1);     width =  size(img,2);
 
% define precision for image
file_name = 'exported_bin';
precision_for_size = 'uint16';
precision_for_data='uint16';
SaveFile2Binary([file_name,'.fbin']...
    ,[width height], img ...
    ,precision_for_size ...
    ,precision_for_data ...
    )
figure;
subplot(2,1,1);
imshow(img); title('Original Image')
%% From fbin to grayscale image

img_new = uint8(Bin2Png([file_name,'.fbin']));
subplot(2,1,2);
imshow(img_new) ; title('Parsed Image from fbin');

