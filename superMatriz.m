function [I]=superMatriz(angMin, angMax, step)%de momento el intervalo es -60a60
i=angMin;
k=1;
while i<=angMax
    nameNum=sprintf('%.1f',i);
    direccionFinal=strcat('C:\Users\earui\Pictures\airplane','\airplaneInc',nameNum,'.jpg');
    aux=imread(direccionFinal);
    I(:,:,:,k)=uint8(aux);
    i=i+step;
    k=k+1;
end

