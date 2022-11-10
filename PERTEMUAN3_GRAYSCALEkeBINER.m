clc; clear; close all;
Argi = imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
size (Argi);
R = Argi(:,:,1);
G = Argi(:,:,2); B = Argi(:,:,3);
Sambada = uint8(0.2990*double(R)+0.587*double(G)+0.114*double(B));
subplot(1,2,1);
imshow(Sambada);
title('GRAYSCALE');
[tinggi,lebar] = size (Sambada);
threshold = 125;
Kafi = zeros(tinggi,lebar)
for baris= 1 : tinggi;
for kolom= 1 : lebar;
if Sambada (baris,kolom) >= threshold
Kafi (baris,kolom) = 0; else
Kafi (baris,kolom) = 1;
end
end
end
subplot(1,2,2);
imshow (Kafi);
title('BINER');
