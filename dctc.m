  
% China University of Petroleum, Beijing
% Mingxuan Gu
% gumingxuan_cup@163.com

function [ Ai, bi] = dctc( A ,b, nc )
dctA=dct2(A);
dct_echonoise=dct(b);
dctA1=dctA(1:nc,:);
dct_echonoise1=dct_echonoise(1:nc);
Ai=idct2(dctA1);
bi=idct(dct_echonoise1);

end

