clc; clear; close all;
Argi = imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
Argi2 = imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
BW = im2bw(Argi, 0.6);
subplot(1,2,2); 
imshow(BW);
title('BINER');
subplot(1,2,1);
imshow(Argi2);
title('GRAYSCALE');