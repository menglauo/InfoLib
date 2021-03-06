function [ I ] = mmi_hist( X, Y, Z )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description: calculate multivariate mutual information among variables
% X, Y and Z. The positive result value means redundancy and negtive value
% means synergy.
%
% Usage: I = mmi_hist( X, Y, Z )
% Input:
%   X - A vector or matrix. Each column as an independent variable.
%   Y - A vector or matrix. Each column as an independent variable.
%   Z - A vector or matrix. Each column as an independent variable.
% Output:
%   I - Mutual information among variables X, Y and Z.
%
% Date: 2018/05/17
% Revision: 2018/05/17
% Author: Yaocong Duan (yaocong.duan@gmail.com)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

I = mi_hist(X,Z) + mi_hist(Y,Z) - mi_hist([X Y],Z);

end

