function [I]=reSize(a, l)
tam=size(a);
J = imresize(a,0.4);
for i=1:l
    for j=1:l
        I(i,j,1)=J(i,j,1);
        I(i,j,2)=J(i,j,2);
        I(i,j,3)=J(i,j,3);
    end
end
