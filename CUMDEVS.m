% 
% The CUMDEVS function is designed for application to a single time
% series.
% Q: Contains the calculated test statistics for all the time series
% in the input matrix.
% QMAX: Contains the maximum absolute test statistic for each time
% series. These values can subsequently be compared with the critical
% values reported by Buishand (1982) to assess the homogeneity of the
% time series.
% Buishand, T.A., 1982. Some methods for testing the homogeneity of rainfall records. Journal of Hydrology. 58, 11–27. https://doi.org/10.1016/0022-1694(82)90066-X
%
% Usage:
% [Q,QMAX]=CUMDEVS(var)
% instead of 'var' using your matrix name.
%
%
function [Q,QMAX] =CUMDEVS(var)
N=length(var(:,1));
M=nanmean(var);
SA=var(:,:)-M;
I=1; J=1;
H=2;
while H<=N
    SB(I,J)=SA(I,J);
SB(H,1)=nansum(SA(1:H));
H=H+1;
end
SSA=(SA(:,I).^2)./N;
SSB=sqrt(nansum(SSA));
SAB=SB(:,I)./SSB;
Q=abs(SAB);
QMAX=max(Q)/sqrt(N);
clear M SA I J H  SSA SSB SAB
end
