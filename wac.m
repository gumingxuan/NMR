  
% China University of Petroleum, Beijing
% Mingxuan Gu
% gumingxuan_cup@163.com

function [AC,bc]=wac(A,b,nc)
np=zeros(nc,1);m=size(A);
if (nc>=m)
    AC=A;bc=b;
else
    for i = 1:nc
        np(i) = fix(power(length(b), (i - 1)/(nc - 1)));
        if ((i <= 3) || (np(i) <= i)) 
            np(i) = i;
            flag = i;
        end
    end
    for i = 1:nc
        if (i > flag)
            AC(i,:) =sum( A(np(i-1)+1 : np(i),:))/sqrt(np(i)-np(i -1));
            bc(i,1) =sum( b(np(i-1)+1 : np(i)))/sqrt(np(i)-np(i-1));
%             AC(i,:) =sum( A(np(i-1)+1 : np(i),:))/(np(i)-np(i -1));
%             bc(i,1) =sum( b(np(i-1)+1 : np(i)))/(np(i)-np(i-1));
        else
            AC(i,:) = A(i,:) ;
            bc(i,1) = b(i);
        end
    end
end
