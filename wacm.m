% China University of Petroleum, Beijing
% Mingxuan Gu
% gumingxuan_cup@163.com
function [AC,bc]=wacm(A,b,nc,ne)
nne=length(ne);
if (length(nc)==1)
    ncc=zeros(nne,1)+nc;
else
    ncc=nc;
end
AC=[];bc=[];nm=0;
for i=1:nne    
    [ACM,bcm]=wac(A(nm+1:nm+ne(i),:),b(nm+1:nm+ne(i),1),ncc(i));   
    AC=[AC;ACM];bc=[bc;bcm];
    nm=nm+ne(i);
end
