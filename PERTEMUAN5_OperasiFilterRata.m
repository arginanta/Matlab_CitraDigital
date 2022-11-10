Argi = imread ('D:\Kuliah Informatika UMSIDA\Semester 7\Pengolahan Citra Digital\191080200230\191080200230_PCD_MATLAB\1.jpg');
ukuran=size(Argi);
jmlbaris=ukuran(1);
jmlkolom=ukuran(2);
Argi2=double(Argi);
for b=2 : jmlbaris-1
    for k=2 : jmlkolom-1
        jumlah=Argi2(b,k+1) + Argi2(b-1,k+1) + Argi2(b-1,k) + Argi2(b-1,k-1)
        + Argi2(b,k-1) + Argi2(b+1,k-1) + Argi2(b+1,k) + Argi2(b+1,k-1) +Argi2(b,k);
        jumlahrata2=jumlah/9;
        gmb=uint8(jumlahrata2);
        Sambada(b,k)=gmb;
    end
end
subplot (1,2,1); imshow (Argi); subplot(1,2,2); imshow(Sambada);