clc; clear; close all;
Argi = imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
Argi2 = imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
Abu = rgb2gray(Argi);
subplot(1,2,2); imshow(Abu);
title('GRAYSCALE');
subplot(1,2,1);
imshow(Argi2);
title('RGB');