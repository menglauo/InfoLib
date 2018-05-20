function [ i ] = mi_lcw_fh( pX, pY, pXY )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description: calculate local mutual information weighted by p(x,y) between 
% event x of variable X and event y of Variable Y.
%
% Usage: i = mi_lcw_fh( pX, pY, pXY )
% Input:
%   pX - Probability distribution of X.
%   pY - Probability distribution of X.
%   pXY - Probability distribution of joint variable [X Y].
% Output:
%   i - local mutual information
% Example:
%   % estimate the probability
%   pXY = pEstimater_fh([X Y],Ntrl);
%   pX = sum(pXY,2);
%   pY = sum(pXY,1);
%   % another way for getting pX and pY
%   % pX = pEstimater_fh(X,Ntrl);
%   % pY = pEstimater_fh(Y,Ntrl);
%
%   I = mi_lc_fh(pX, pY, pXY);
%   % example: take pmi(X=1;Y=2)
%   I12 = I(1,2)
%
% Date: 2018/05/17
% Revision: 2018/05/17
% Author: Yaocong Duan (yaocong.duan@gmail.com)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i = -bsxfun(@plus,log2(pX),log2(pY))+log2(pXY);
i = pXY .* i;

end

