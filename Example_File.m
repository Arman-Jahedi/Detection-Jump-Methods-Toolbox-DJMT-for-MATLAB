%
% In here, I prepare one example with Sea Level Pressure (SLP)
% data in MATLAB for how users could be applying the DJMT functions on
% own time series data?.
% 
% First, I am loading the SPL data in MATLAB Command Window.
%
load nao_slp_data.mat
%
% You can see it in Workspace environment, slpA, slpB, and t varaibles.
% This file contains monthly mean SPL data from 01-Jan-1865 to
% 01-Dec-2017 (t) for Gibraltar (slpA) and Iceland (slpB).
% Originally, this data is used for calculating North Atlantic
% Oscilation (NAO) index. But, in this example we want to crating one
% time series for all of January months (from 01-Jan-1865 to 01-Jan-2017)
% by slpA variable.
%
a=slpA(1:12:1836);
%
% Now, 'a' is one variable for January months time series with length 153.
% Right now, we can performing each of the DJMT function on our matrix,
% 
% Implementation SNHT functions:
%
[T,TMAX]=SNHT(a);
[T,TMAX]=SNHTM(a);
%
% So, I performed SNHTM function on my 'a' variable, and I have T and TMAX
% variables. 
% T: Contains all the calculated test statistic values for my time serie.
% TMAX: Includes the maximum value among all test statistics in T.
% For example my maximum value in TMAX is 3.8914 value.
%
% Implementation CDT functions:
%
[Q,QMAX]=CUMDEVS(a);
[Q,QMAX]=CUMDEVM(a);
%
% Q: Contains the calculated test statistics for a matrix.
% QMAX: Contains the maximum absolute test statistic for a time series,
% normalized by the square root of the corresponding single size (Q/√n).
% For example, my QMAX value for January months is 0.9860.
%
% Implementation WLRT functions:
%
[V,W]=worsleyS(a);
[V,W]=worsleyM(a);
%
% V: Contains the maximum absolute test statistic for a time series.
% W: Contains the final test statistic value for a time series to be 
% compared against the critical values in the reference table for 
% hypothesis testing.
% For example, the W value for SLP Januaury months in matrix 'a' is 1.9918.
