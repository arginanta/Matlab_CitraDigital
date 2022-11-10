%function [G] = konvolusi(F,H)
%KONVOLUSI Melakukan Konvolusi Kernel H dengan Citra F
%H harus mempunyai tinggi dan lebar ganjil
%Hasil : Citra G
clc; clear; close all;
H=[-1 0 -1; 0 4 0; -1 0 -1];
Argi = imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
ukuranf = size(Argi);
ukuranh = size(H);
tinggi_f=ukuranf(1);
lebar_f=ukuranf(2);
tinggi_h=ukuranh(1);
lebar_h=ukuranh(2);

m2 = floor(tinggi_h/2);
n2 = floor(lebar_h/2);

F2=double(Argi);
for y=m2+1 : tinggi_f-m2
    for x=n2+1 : lebar_f-n2
        %Pelaksanaan Konvolusi F(baris, kolom)
        jum = 0;
        for p=-m2 : m2
            for q=-n2 : n2
                jum = jum + H(p+m2+1,q+n2+1) * ...
                    F2(y-p,x-q);
            end
        end
        
        G(y-m2, x-n2) = 127-jum;
    end
end
G2=uint8(G);
subplot(1,2,1); imshow(Argi); subplot(1,2,2); imshow(G2);