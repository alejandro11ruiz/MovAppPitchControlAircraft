function [newImage] = modifierSize(RGB, h, w)
    I=RGB;
    tam=size(I);
    alt=tam(1);
    anc=tam(2);
    r=I(:,:,1);
    g=I(:,:,2);
    b=I(:,:,3);
    for i=1:anc
        indW=i+((w-anc)/2);
        for j=1:alt
            indH=j+((h-alt)/2);
        nR(indH,indW)=r(j,i);
        nG(indH,indW)=g(j,i);
        nB(indH,indW)=b(j,i);
        end
    end
    nR(h,w)=0;
    nG(h,w)=0;
    nB(h,w)=0;
    newImage = cat(3,nR,nG,nB);
end