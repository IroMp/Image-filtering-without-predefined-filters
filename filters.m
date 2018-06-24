clear all;

K = imread('noise.bmp');
Kd = double(K);
figure;
imshow(uint8(Kd));
rows3 = size(Kd,1);
columns3 = size(Kd,2);

Kd1 = zeros(rows3,columns3);
for ii = 2 : (rows3 - 1)
    for jj = 2 : (columns3 - 1)
        Kd1(ii,jj) = (Kd(ii-1,jj-1)+Kd(ii-1,jj)+Kd(ii-1,jj+1)+Kd(ii,jj-1)+Kd(ii,jj)+Kd(ii,jj+1)+Kd(ii+1,jj-1)+Kd(ii+1,jj)+Kd(ii+1,jj+1))/9;
    end
end
figure;
imshow(uint8(Kd1));

Kd2 = zeros(rows3,columns3);
tempK = zeros(1,9);

for ii = 2 : (rows3 - 1)
    for jj = 2 : (columns3 - 1)
        tempK = Kd(((ii-1):(ii+1)),((jj-1):(jj+1)));
        A = sort(tempK(:));
        Kd2(ii,jj) = A(5,1);
    end
end
figure;
imshow(uint8(Kd2));

L = imread('Ph3_3a.tif');
Ld = double(L);
figure;
imshow(uint8(Ld));
rowsL = size(Ld,1);
columnsL = size(Ld,2);

Ld1 = zeros(rowsL,columnsL);
for ii = 3 : (rowsL - 2)
    for jj = 3 : (columnsL - 2)
        Ld1(ii,jj) = (Ld(ii-2,jj-2)+4*Ld(ii-2,jj-1)+6*Ld(ii-2,jj)+4*Ld(ii-2,jj+1)+Ld(ii-2,jj+2)+4*Ld(ii-1,jj-2)+16*Ld(ii-1,jj-1)+24*Ld(ii-1,jj)+16*Ld(ii-1,jj+1)+4*Ld(ii-1,jj+2)+6*Ld(ii,jj-2)+24*Ld(ii,jj-1)+36*Ld(ii,jj)+24*Ld(ii,jj+1)+6*Ld(ii,jj+2)+4*Ld(ii+1,jj-2)+16*Ld(ii+1,jj-1)+24*Ld(ii+1,jj)+16*Ld(ii+1,jj+1)+4*Ld(ii+1,jj+2)+Ld(ii+2,jj-2)+4*Ld(ii+2,jj-1)+6*Ld(ii+2,jj)+4*Ld(ii+2,jj+1)+Ld(ii+2,jj+2))/256;
    end
end
figure;
imshow(uint8(Ld1));

Ld2 = Ld - Ld1;
imshow(uint8(Ld2));

M = imread('Ph3_3b.tif');
Md = double(M);
figure;
imshow(uint8(Md));
rowsM = size(Md,1);
columnsM = size(Md,2);
for ii = 1 : rowsM
    for jj = 1 : columnsM
        if Md(ii,jj)<197
            Md(ii,jj) = 0;
        else
            Md(ii,jj) = 255;
        end
    end
end

figure;
imshow(uint8(Md));

Md1 = zeros(rowsM,columnsM);
tempM = zeros(1,9);
for ii = 2 : (rowsM - 1)
    for jj = 2 : (columnsM - 1)
        tempM = Md(((ii-1):(ii+1)),((jj-1):(jj+1)));
        B = sort(tempM(:));
        Md1(ii,jj) = B(1,1);
    end
end
figure;
imshow(uint8(Md1));

Md2 = zeros(rowsM,columnsM);
tempM = zeros(1,9);
for ii = 2 : (rowsM - 1)
    for jj = 2 : (columnsM - 1)
        tempM = Md1(((ii-1):(ii+1)),((jj-1):(jj+1)));
        B = sort(tempM(:));
        Md2(ii,jj) = B(9,1);
    end
end
figure;
imshow(uint8(Md2));

Md3 = Md - Md1;
figure;
imshow(uint8(Md3));

N = imread('Ph3_3c.tif');
Nd = double(N);
figure;
imshow(uint8(Nd));
rowsN = size(Nd,1);
columnsN = size(Nd,2);

Nd1 = zeros(rowsN,columnsN);
for ii = 2 : (rowsN - 1)
    for jj = 2 : (columnsN - 1)
        Nd1(ii,jj) = abs(-1*Nd(ii-1,jj-1) -2*Nd(ii-1,jj) -1*Nd(ii-1,jj+1) +0*Nd(ii,jj-1) + 0*Nd(ii,jj) + 0*Nd(ii,jj+1) + Nd(ii+1,jj-1) + 2*Nd(ii+1,jj) + Nd(ii+1,jj+1));
    end
end
figure;
imshow(uint8(Nd1));

Nd2 = zeros(rowsN,columnsN);

for ii = 2 : (rowsN - 1)
    for jj = 2 : (columnsN - 1)
        Nd2(ii,jj) = abs(-1*Nd(ii-1,jj-1) + 0*Nd(ii-1,jj) + 1*Nd(ii-1,jj+1) -2*Nd(ii,jj-1) + 0*Nd(ii,jj) + 2*Nd(ii,jj+1) - 1*Nd(ii+1,jj-1) + 0*Nd(ii+1,jj) + Nd(ii+1,jj+1));
    end
end
figure;
imshow(uint8(Nd2));

Nd3 = Nd1 + Nd2;
figure;
imshow(uint8(Nd3));

Nd4 = Nd - Nd3;
figure;
imshow(uint8(Nd4));


O = imread('Ph3_3d.tif');
Od = double(O);
figure;
imshow(uint8(Od));
rowsO = size(Od,1);
columnsO = size(Od,2);

Od1 = uint8(zeros(rowsO,columnsO));
for ii = 2 : (rowsO - 1)
    for jj = 2 : (columnsO - 1)
        Od1(ii,jj) = (0*Od(ii-1,jj-1) -1*Od(ii-1,jj) +0*Od(ii-1,jj+1) -1*Od(ii,jj-1) + 5*Od(ii,jj) - 1*Od(ii,jj+1) + 0*Od(ii+1,jj-1) - 1*Od(ii+1,jj) + 0*Od(ii+1,jj+1));
    end
end
figure;
imshow(uint8(Od1));

Od2 = uint8(zeros(rowsO,columnsO));
for ii = 2 : (rowsO - 1)
    for jj = 2 : (columnsO - 1)
        Od2(ii,jj) = (-1*Od(ii-1,jj-1) -1*Od(ii-1,jj) -1*Od(ii-1,jj+1) -1*Od(ii,jj-1) + 9*Od(ii,jj) - 1*Od(ii,jj+1) - 1*Od(ii+1,jj-1) - 1*Od(ii+1,jj) - 1*Od(ii+1,jj+1));
    end
end
figure;
imshow(uint8(Od2));

P = imread('Ph3_3e.tif');
Pd = double(P);
figure;
imshow(uint8(Pd));
rowsP = size(Pd,1);
columnsP = size(Pd,2);

G = fspecial('gaussian',[5 5],1);
Pg = imfilter(Pd,G,'same');
figure;
imshow(uint8(Pg));

Pd1 = uint8(zeros(rowsP,columnsP));
for ii = 2 : (rowsP - 1)
    for jj = 2 : (columnsP - 1)
        Pd1(ii,jj) = (-1*Pg(ii-1,jj-1) -1*Pg(ii-1,jj) -1*Pg(ii-1,jj+1) -1*Pg(ii,jj-1) + 9*Pg(ii,jj) - 1*Pg(ii,jj+1) - 1*Pg(ii+1,jj-1) - 1*Pg(ii+1,jj) - 1*Pg(ii+1,jj+1));
    end
end
figure;
imshow(uint8(Pd1));

Pd2 = uint8(zeros(rowsP,columnsP));
for ii = 2 : (rowsP - 1)
    for jj = 2 : (columnsP - 1)
        Pd2(ii,jj) = (-1*Pd(ii-1,jj-1) -1*Pd(ii-1,jj) -1*Pd(ii-1,jj+1) -1*Pd(ii,jj-1) + 9*Pd(ii,jj) - 1*Pd(ii,jj+1) - 1*Pd(ii+1,jj-1) - 1*Pd(ii+1,jj) - 1*Pd(ii+1,jj+1));
    end
end
figure;
imshow(uint8(Pd2));



