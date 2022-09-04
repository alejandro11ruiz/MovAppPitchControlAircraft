function [nI]=toJoinImg(A, F)
F1=imrotate(F,90,'crop');
R=A(:,:,1);
G=A(:,:,2);
B=A(:,:,3);
Rf=F1(:,:,1);
Gf=F1(:,:,2);
Bf=F1(:,:,3);
for i=1:527
    for j=1:527
        if R(i,j)<=25 && G(i,j)<=25 && B(i,j)<=25
            nR(i,j)=Rf(i,j);
            nG(i,j)=Gf(i,j);
            nB(i,j)=Bf(i,j);
        else
            nR(i,j)=R(i,j);
            nG(i,j)=G(i,j);
            nB(i,j)=B(i,j);
        end
    end
end
nI = cat(3,nR,nG,nB);