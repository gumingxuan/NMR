%% Program description

%%
% The DCT compression method
% A is the Kernel matrix, echonoise is the echo data with noise, and nc is the number of compressed echo
% Ad and bd are the kernel matrix and echo data compressed by DCT method respectively

tic;
[Ad,bd]=dctc(A,echonoise,nc);
toc;



%%
% The hybrid compression method
% A is the Kernel matrix, echonoise is the echo data with noise, nc1 is the number of pre-compressed echo,
%  nm is the number of echo train, and ne is the echo number of each echo train.
% Aw and bw are the kernel matrix and echo data compressed by WAC method respectively.
% Aj and bj are the kernel matrix and echo data compressed by WAC-DCT method respectively.

tic;
[Aw,bw]=wacm(A,echonoise,nc1/nm,ne);
[Aj,bj]=dctc(Aw,bw,nc);
toc;
