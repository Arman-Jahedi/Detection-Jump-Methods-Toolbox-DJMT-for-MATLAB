%
% The worsleyS function can only be applied to a single time 
% series, corresponding to one column of data.
% V: Contains the maximum absolute test statistic for each 
% time series.
% W: The values test statistic to be compared against the critical
% values in the refrence table (Worsley, 1979) for hypothesis testing.
% Worsley, K.J., 1979. On the likelihood ratio test for a shift in location of normal populations. Journal of the American Statistical Association. 74(366a), 365–367. https://doi.org/10.1080/01621459.1979.10482519
%
% Usage:
% [V,W]=worsleyS(var)
% Instead of 'var' using your matrix name.
%
%
function [V,W]=worsleyS(var)
NN=length(var);
R=1:1:NN;
R=R';
L=length(var);
MEA=nanmean(var);
DIF=var(:,1)-MEA;
SK(1,1)=DIF(1,1);
N=1;
H=2;
while H<=L
SK(H,1)=nansum(DIF(N:H,1));
H=H+1;
end
clear H
H=1;
while H<=L-1
    I(H,1)=(R(H,1)*(L-R(H,1)))^-0.5;
    H=H+1;
end
SKA=SK(1:L-1,1);
ZK=SKA(:,:).*I(:,:);
SZK=nansum(ZK);
SSK=DIF(:,:).^2./L;
SSKE=sqrt(nansum(SSK));
SSKE(2:L-1,1)=SSKE(1,1);
ZKK=ZK(:,:)./SSKE(:,:);
ZKK=abs(ZKK);
V=max(ZKK);
W=V.*((L-2).^0.5)./sqrt(1-(V).^2);
end


