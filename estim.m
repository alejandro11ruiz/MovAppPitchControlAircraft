function [AB,AB1]=estim(angMin, angMax, l,st)
i=angMin;
j=1;
while i<=angMax
incR=i*pi/180;
AB1(j,1)=i;
AB1(j,2)=round(l*cos(incR));
AB1(j,3)=round(l*sin(incR));
i=i+st;
j=j+1;
end
tam=(angMax-angMin)/st;
h=1;
m=1;
while h<=tam
    if (AB1(h,2)~=AB1(h+1,2))||(AB1(h,3)~=AB1(h+1,3))
        AB(m,:)=AB1(h,:);
        m=m+1;
    end
    h=h+1;
end
    
