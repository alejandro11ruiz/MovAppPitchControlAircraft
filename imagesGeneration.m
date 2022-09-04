function [] = imagesGeneration(RGB, angMin, angMax)
I=RGB;
i=(angMin+90);
while i<=(angMax+90)
    imageAux=imrotate(I,i,'crop');
    nameNum=sprintf('%.1f',i-90);
    direccionFinal=strcat('C:\Users\earui\Pictures\airplane','\airplaneInc',nameNum,'.jpg');
    J = imresize(imageAux,0.26);
    imwrite(J,direccionFinal);
    i=i+0.5;
end
end