%
% The SNHT function can only be applied to a single time series.
% T: Contains all the calculated test statistic values for the time series.
% TMAX: The maximum value among all the test statistic.
%
% The values in TMAX as a statistical values for a time series
% is comparing with critical values prepared by Alexanderson (1986)
% at confident levels 90, 95, and 95.5 percent.
% Alexandersson, H., 1986. A homogeneity test applied to precipitation data. Journal of Climatology. 6, 661–675. https://doi.org/10.1002/joc.3370060607
%
% Usage:
% [T,TMAX]=SNHT(var)
% Instead of 'var' using your matrix name.
%
%
function [T,TMAX]=SNHT(var)
L=length(var);
K=1;
H=1;
while H<=L-1
    Z1(H,K)=(1/H)*(nansum(var(1:H)-nanmean(var)))/(nanstd(var));
    Z2(H,K)=(1/(L-H))*(nansum(var(H+1:end)-nanmean(var)))/(nanstd(var));
    T(H,K)=(H*(Z1(H,1)^2))+((L-H)*(Z2(H,1)^2));
    TMAX=max(T);
    H=H+1;
end
end
