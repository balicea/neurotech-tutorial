function data = createtime(samprate, reclength, measure)
%%
% creates a time stamp for the imported data. samprate = Hz, reclength =
% length of recording in seconds, measure = name of recording type (i.e.
% EEG, EMG, ECG)
%%
y = [0:1/(samprate):(reclength)];
y = y';
data = y
%%
% creates a 'timer' based on length of recording and sampling rate.
% data = horzcat(y,x(1).data);
% time = (:,1)
% measure = (:,2)
% create single matrix of data with timestamp.
%%
% Please use responsibly. Courtesy (2006) of Orthogonal Research,
% bradly.alicea@outlook.com
%%
