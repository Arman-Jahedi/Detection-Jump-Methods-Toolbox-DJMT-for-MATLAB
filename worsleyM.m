%
% The function worsleyM can be applied to any matrix, 
% whether it contains a single time series or a very large 
% number of time series.
% V: Contains the maximum absolute test statistic for each 
% time series.
% W: The values test statistic to be compared against the critical
% values in the refrence table (Worsley, 1979) for hypothesis testing.
% Worsley, K.J., 1979. On the likelihood ratio test for a shift in location of normal populations. Journal of the American Statistical Association. 74(366a), 365–367. https://doi.org/10.1080/01621459.1979.10482519
%
% Usage:
% [V,W]=worsleyM(var)
% Instead of 'var' using your matrix name.
%
%
function [V,W]=worsleyM(var)
[R,C]=size(var);
H=1;
while H<=C
    V(1,H)=worsleyS(var(:,H));
    W(1,H)=V(1,H).*((R-2).^0.5)./sqrt(1-(V(1,H)).^2);
    H=H+1;
end
clear T row col H ROW COL TH R C
end



