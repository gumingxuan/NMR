function [ Ai, bi] = dctc( A ,b, nc )
%UNTITLED2 此处显示有关此函数的摘要
             %DCT压缩    返回值是 压缩后的 A b 
%   此处显示详细说明
dctA=dct2(A);
dct_echonoise=dct(b);
dctA1=dctA(1:nc,:);
dct_echonoise1=dct_echonoise(1:nc);
Ai=idct2(dctA1);
bi=idct(dct_echonoise1);

end

