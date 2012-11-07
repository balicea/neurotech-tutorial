function extract('signal matrix',x,y)
% event-related extraction for Biopac.
% inputs are: signal matrix = input time-series; organized with 'time' in the
% first column, x = lower bound on time search, y = upper-bound on
% time-search.
% import matrix (I have created a "dummy" matrix called "A" below).
% A = [.1  .12  .15
%      .2  .10  .12
%      .3  .11  .13
%      .4  .21  .05
%      .5  .13  .11
%      .6  .10  .13]
time = 'signal matrix'(:,1);
% you must name the time column of the new matrix (or the column you want 
% to search on). Change 'A' in each line of code to your matrix name. 
m = time >=(x) & time <=(y);
% select all cases between .3 and .5 in the 'time' column and code them 
% "1". Creates a new binary matrix of size 1 x n called "x". Now, the 
% dataset has a 'sorting' value based on selected time intervals.
 N = [m,A];
% combine the sorting variable into the dataset. New matrix "N" created. 
% Again, note that 'A' can be replaced by the name of your matrix.
 N = sortrows(N);
% sort all of the columns in the new matrix by the first column (the
% sorting variable).
 B = N(find(N(:,1)==1),:);
% creates a separate matrix 'B' based on the sorting variable. All 'ones', 
% and only ones, will be included.
% if you need to create a matrix of only 'zeros', the last line of code
% would read:
 B = N(find(N(:,1)==0),:);
 % say you have run multiple "time" searches and extracted selected data
 % from the main matrix. To concantonate all of these time slices into a
 % single dataset, use this line:
 M = [B;C;D]
 % to do multiple searches
 % ya = time >=4 & time <=7;
 % yb = time >=14 & time <=35;
 % yc = time >=41 & time <=46;
 % put them all into a single matrix, including null moments
 Z = Y(find(Y(:,1)==1),:);
 ZB = Y(find(Y(:,2)==1),:);
 ZC = Y(find(Y(:,3)==1),:);
 % cut out all null moments; matrix of sorted time segments with
 % group that they belong to.
 Y = [ya;yb;yc]
 % concantonate matrix
 