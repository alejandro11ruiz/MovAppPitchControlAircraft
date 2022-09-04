function [maxH, maxW, angleH, angleW]=imageMaxDim(RGB, intMin, intMax)
    image=RGB;
    tam=size(RGB);
    maxH=tam(1);
    maxW=tam(2);
    angleH=0;
    angleW=0;
    i=intMin;
    while i<=intMax
        imageAux=imrotate(image,i);
        tamAux=size(imageAux);
        if tamAux(1)>maxW
            maxW=tamAux(1);
            angleW=i;
        end
        if tamAux(2)>maxH
            maxH=tamAux(2);
            angleH=i;
        end
        i=i+1;
    end
end