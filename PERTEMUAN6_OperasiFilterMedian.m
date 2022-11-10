% FILMEDIAN Melakukan Operasi dengan Filter Median
clc; clear; close all;
Argi = imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
ukuran=size(Argi); tinggi=ukuran(1); lebar=ukuran(2);
for baris=2 : tinggi-1
for kolom=2 : lebar-1
data = [Argi(baris-1, kolom-1) Argi(baris-1, kolom) Argi(baris-1, kolom+1) ...
Argi(baris, kolom-1) Argi(baris, kolom) Argi(baris, kolom+1) Argi(baris+1, kolom-1) ...
Argi(baris+1, kolom) Argi(baris+1, kolom+1)];
% Urutkan
for i=1 : 8
for j=i+1 : 9
if data(i) > data(j)
tmp = data (i);
data(i) = data(j);
data(j) = tmp;
end
end
end
% Ambil Nilai Median
Kafi(baris, kolom) = data(5);
end
end
subplot(1,2,1); imshow(Argi); subplot(1,2,2); imshow(Kafi); clear;
        