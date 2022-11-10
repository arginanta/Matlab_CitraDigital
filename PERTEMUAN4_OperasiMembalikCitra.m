clc; clear; close all;
Argi=imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
subplot(1,2,1);
imshow(Argi);
title('Sebelum');
Argi1 = 255 - Argi;
subplot(1,2,2);
imshow(Argi1);
title('Sesudah');