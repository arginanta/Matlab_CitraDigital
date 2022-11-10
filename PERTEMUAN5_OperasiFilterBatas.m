clear; clc; close all;
Argi = imread('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
ukuran = size(Argi);
tinggi = ukuran(1);
lebar = ukuran(2);
G = Argi;
for baris=2 : tinggi-1
    for kolom=2 : lebar-1
        minPiksel = min([Argi(baris-1, kolom-1) ...
            Argi(baris-1, kolom) Argi(baris, kolom+1) ...
            Argi(baris, kolom-1) ...
            Argi(baris, kolom+1) Argi(baris+1, kolom-1) ...
            Argi(baris+1, kolom) Argi(baris+1, kolom+1)]);
        maksPiksel = min([Argi(baris-1, kolom-1) ...
            Argi(baris-1, kolom) Argi(baris, kolom+1) ...
            Argi(baris, kolom-1) ...
            Argi(baris, kolom+1) Argi(baris+1, kolom-1) ...
            Argi(baris+1, kolom) Argi(baris+1, kolom+1)]);
        if Argi(baris, kolom) < minPiksel
            G(baris, kolom) = minPiksel;
        else
            if Argi(baris, kolom) > maksPiksel
                G(baris, kolom) = maksPiksel;
            else
                G(baris, kolom) = Argi(baris, kolom);
            end
        end
    end
end
subplot(2,2,1);imshow(Argi);
subplot(2,2,2);imshow(G);
clear;
