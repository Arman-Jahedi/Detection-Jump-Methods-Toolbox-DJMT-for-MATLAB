# Detection-Jump-Methods-Toolbox-for-MATLAB
The objective of the DJMT toolbox is to develop a set of functions in MATLAB programming language for applying three well-known statistical tests for detection breakpoints in climate time series data: the Standard Normal Homogeneity Test (SNHT), the Cumulative Deviations Tests (CDT), and Worsley’s Likelihood Ratio Test (WLRT). 


Algorithm, and implementation SNHT and SNHTM Functions:

Two MATLAB functions named SNHT and SNHTM were developed and included in the toolbox entitled 'Detection Jumps Methods Toolbox for MATLAB'. These functions are designed to operate on time series data provided in matrix format (double). Since MATLAB performs calculations column-wise by default, the input matrix should be organized with each time series stored as separate column.
The function 'SNHT' performs the SNHT on a Sample time series, while 'SNHTM' is capable of processing an entire matrix containing one to a very large number of time series simultaneously (limited primarily by the available CPU and RAM resources of the computer). The names of the functions are derived from the initial letters of Standard Normal Homogeneity Test with the additional 'M' in SNHTM referring to Matrix.
These functions can be called in the MATLAB Command Window as follows: 

>> [T,TMAX]=SNHTM(var);
>> 
The 'SNHTM' function is capable of performing the SNHT on one or multiple time series at once. It accepts both Sample vectors and matrices (where each column represents an individual time series), allowing efficient batch processing of any number of datasets.

>> [T,TMAX]=SNHT(var);
>> 
The 'SNHT' function can only be applied to a Sample time series.

Tip points and recommendation:

It is strongly recommended to use the 'SNHTM' function instead of the 'SNHT'. 
When using 'SNHTM function, make sure that the folder containing the function is added to the MATLAB search path.
Users should be writing own matrix name in Workspace environment instead of 'var'. 
After executing the SNHTM using the 'SNHTM' function, two variables will be returned to the MATLAB Workspace:
T: Contains all the calculated test statistic values for the time series.
TMAX: The maximum value among all test statistics.
These values are essential for detecting potential points in the homogeneity of the time series.

Algorithm, and implementation CUMDEVS and CUMDEVM Functions:

In this toolbox, two MATLAB function were developed to implement the CDT: CUMDES and CUMDEVM. The name CUMDEVS is derived from the initial letters of the words Cumulative and Deviation. In both function names, the letters S and M indicate Sample and Matrix, respectively. The function CUMDEVS is designed to apply the CDT to a Sample time series, whereas CUMDEVM is developed to process multiple time series arranges in columns of a matrix, extending from one to an arbitrary number of time series. 
The application of this method to a time series matrix in the MATLAB Command Window is illustrated in below:

>> [Q,QMAX]=CUMDEVM(var);

The function CUMDEVM is designed for application to a data matrix containing one or multiple time series (with n series organized in columns).

>> [Q,QMAX]=CUMDEVS(var);

However, the CUMDEVS function is designed for application to a Sample time series, corresponding to one column of the data matrix.

Tips Points and Recommendation:

The use of the CUMDEVM function is recommended for most applications. Users should replace 'var' with the name of their own data matrix stored in the MATLAB Workspace.
Upon completion of the CDT, the CUMDEVM function returns two variables in the MATLAB Workspace: Q and QMAX. The variable Q contains the calculated test statistics for all of time series in the input matrix. The variable QMAX contains the maximum absolute test statistic for each time series, normalized by the square root of the corresponding sample size (Q/√n). These values can subsequently be compared with the critical values reported by Buishand (1982) to assess the homogeneity of the time series.

Algorithm, and implementation worsleyS and worsleyM Functions:

Building on the explanation of how the Worsley likelihood ration test operates on time series data, two functions have been developed: worsleyS and worsleyM. These functions perform the Worsley test calculations on 1 to 'n' time series. The function name worsleyS is derived from Worsley combined with the first letter of Sample. Similarly, an effort has been made to maintain naming consistency with other test functions. The function worsleyM follows the same pattern, except that its last letter is taken from the word Matrix.
This test can also be executed directly in the MATLAB Command Window as follows:

>> [V,W]=worsleyM(var);

The function worsleyM can be applied to any matrix, whether it contains a Sample time series or a very large number of time series.

>> [V,W]=worsleyS(var);

Whereas the worsleyS function can only be applied to a Sample time series, corresponding to one column of data.

Tips Points and Recommendation:

The use of worsleyM is recommended.
By applying the worsleyM function to a matrix containing one or more time series returns two output matrices to the Workspace: V and W.
The matrix 'V' contains the maximum absolute test statistic for each time series, while 'W' contains the final test statistic value to be compared against the critical values in the reference table for hypothesis testing.

Note: 
1. To use these functions correctly, first add them to the MATLAB environment. Navigate to the folder containing the functions in the Current Folder window, right-click on the folder, select Add to Path, and then choose Selected Folders and Subfolders. This step ensures that MATLAB can recognize the functions. Failure to do so will result in an 'Undefined function' error.
2. Also, the best way for installing all of functions designed is using the toolbox with named 'Detection Jumps Methods Toolbox for MATLAB' with the '.mltbx' format. This toolbox is capable installing on your MATLAB toolbox, like other toolbox in your MATLAB programming. Just download it and puts it on New Folder and then installing (right click on the toolbox item, and select the install) it on your MATLAB toolbox.


The Detection Jump Methods Toolbox for MATLAB is implemented by Dr. Hossein Asakereh, and Arman Jahedi, Department of Climatology, University of Zanjan.
Contact Ways: jahediarman@yahoo.com

