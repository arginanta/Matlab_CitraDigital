clc; clear; close all;
Argi=imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
red=Argi(:,:,1);
green=Argi(:,:,2);
blue=Argi(:,:,3);
Sambada=0.3*red+0.5*green+0.2*blue;
subplot(1,2,1);
imshow(Argi);
title('RGB')
subplot(1,2,2);
imshow(Sambada)
title('GRAYSCALE')
