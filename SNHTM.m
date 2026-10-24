%
% The SNHTM function is capable of performing the SNHT on one or multiple 
% time series at once.
% T: Contains all the calculated test statistic values for the time series.
% TMAX: The maximum value among all test statistic.
% 
% The values in TMAX as a statistical values for a time series
% is comparing with critical values prepared by Alexanderson (1986)
% at confident levels 90, 95, and 95.5 percent.
% Alexandersson, H., 1986. A homogeneity test applied to precipitation data. Journal of Climatology. 6, 661–675. https://doi.org/10.1002/joc.3370060607
%
% Usage:
% [T,TMAX]=SNHTM(var)
% instead of 'var' using your matrix name.
%
%
function [T,TMAX]=SNHTM(var)
[R,C]=size(var);
H=1;
while H<=C
    T(:,H)=SNHT(var(:,H));
    TMAX(1,H)=max(T(:,H));
    H=H+1;
end
clear A IND B AA BB row col H ROW COL AE TH R C
end