% 
% The CUMDEVM function is designed for application to a data matrix 
% containing one or multiple time series (with n series organized in
% coulmns).
% Q: Contains the calculated test statistics for all the time series
% in the input matrix.
% QMAX: Contains the maximum absolute test statistic for each time
% series. These values can subsequently be compared with the critical
% values reported by Buishand (1982) to assess the homogeneity of the
% time series.
% Buishand, T.A., 1982. Some methods for testing the homogeneity of rainfall records. Journal of Hydrology. 58, 11–27. https://doi.org/10.1016/0022-1694(82)90066-X
%
% Usage:
% [Q,QMAX]=CUMDEVM(var)
% Instead of 'var' using your matrix name.
%
%
function [Q,QMAX] = CUMDEVM(var)
[~,C]=size(var);
N=length(var(:,1));
H=1;
while H<=C
Q(:,H)=CUMDEVS(var(:,H));
QMAX(1,H)=max(Q(:,H))/sqrt(N);
H=H+1;
end
clear T A IND B AA BB row col H ROW COL AE TH R C
end


