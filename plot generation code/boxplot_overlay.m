close all
clear all;

load ('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\duration_on');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\activation_time');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\outputs');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\max_amps');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\normalized_outputs');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\avg_intensity');

figure,
boxplot([wt_nout; dl3_nout; twi2_nout; dl3twi2_nout; dl1_nout; dl2_nout; dl12_nout],...
    [ones(length(wt_nout),1); 2*ones(length(dl3_nout),1); 3*ones(length(twi2_nout),1); 4*ones(length(dl3twi2_nout),1);...
    5*ones(length(dl1_nout),1); 6*ones(length(dl2_nout),1); 7*ones(length(dl12_nout),1)], ...
    'labels',{'wt','dl3','twi2','dl3twi2','dl1','dl2','dl1/2'}); ...
    title('Normalized output'); ylabel('Intensity (a.u.)'); axis square; ylim([0 2.5e5]); axis square;
ylim([0 inf]);

% fix for 10-90%
p = prctile(wt_nout,[10 90]);
p(2,:) = prctile(dl3_nout,[10 90]);
p(3,:) = prctile(twi2_nout,[10 90]);
p(4,:) = prctile(dl3twi2_nout,[10 90]);
p(5,:) = prctile(dl1_nout,[10 90]);
p(6,:) = prctile(dl2_nout,[10 90]);
p(7,:) = prctile(dl12_nout,[10 90]);

h = flipud(findobj(gca,'Tag','Upper Whisker'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(2) = p(j,2);
set(h(j),'YData',ydata);
end
h = flipud(findobj(gca,'Tag','Upper Adjacent Value'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(:) = p(j,2);
set(h(j),'YData',ydata);
end
h = flipud(findobj(gca,'Tag','Lower Whisker'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(1) = p(j,1);
set(h(j),'Ydata',ydata);
end
h = flipud(findobj(gca,'Tag','Lower Adjacent Value'));
for j=1:length(h)
ydata =get(h(j),'YData');
ydata(:) = p(j,1);
set(h(j),'YData',ydata);
end


data = {wt_nout(1:250); dl3_nout(1:250); twi2_nout(1:250); dl3twi2_nout(1:250); dl1_nout(1:250); dl2_nout(1:250); dl12_nout(1:250)};

catIdx = [ones(size(wt_nout(1:250),1),1); 2*ones(size(dl3_nout(1:250),1),1);...
    3*ones(size(twi2_nout(1:250),1),1); 4*ones(size(dl3twi2_nout(1:250),1),1); 5*ones(size(dl1_nout(1:250),1),1);...
    6*ones(size(dl2_nout(1:250),1),1); 7*ones(size(dl12_nout(1:250),1),1)];
plotSpread(data,'categoryIdx',catIdx); axis square
 ax = gca;  ax.FontSize = 16;
 
 %% dl1/2 only
 figure,
boxplot([wt_on; dl1_on; dl2_on; dl12_on],...
    [ones(length(wt_on),1); 2*ones(length(dl1_on),1); 3*ones(length(dl2_on),1); 4*ones(length(dl12_on),1)], ...
    'labels',{'wt','dl1','dl2','dl1/2'}); ...
    title('Time on'); ylabel('Time (min)'); axis square; ylim([0 inf]); axis square;
ylim([0 inf]);

% fix for 10-90%
p = prctile(wt_on,[10 90]);
p(2,:) = prctile(dl1_on,[10 90]);
p(3,:) = prctile(dl2_on,[10 90]);
p(4,:) = prctile(dl12_on,[10 90]);

h = flipud(findobj(gca,'Tag','Upper Whisker'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(2) = p(j,2);
set(h(j),'YData',ydata);
end
h = flipud(findobj(gca,'Tag','Upper Adjacent Value'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(:) = p(j,2);
set(h(j),'YData',ydata);
end
h = flipud(findobj(gca,'Tag','Lower Whisker'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(1) = p(j,1);
set(h(j),'Ydata',ydata);
end
h = flipud(findobj(gca,'Tag','Lower Adjacent Value'));
for j=1:length(h)
ydata =get(h(j),'YData');
ydata(:) = p(j,1);
set(h(j),'YData',ydata);
end


data = {wt_on(1:250); dl1_on(1:250); dl2_on(1:250); dl12_on(1:250)};

catIdx = [ones(size(wt_on(1:250),1),1); 2*ones(size(dl1_on(1:250),1),1);...
    3*ones(size(dl2_on(1:250),1),1); 4*ones(size(dl12_on(1:250),1),1)];
plotSpread(data,'categoryIdx',catIdx); axis square
 ax = gca;  ax.FontSize = 16;
 
 %% dl3,twi2 only
figure,
boxplot([wt_avg_intensity; dl3_avg_intensity; twi2_avg_intensity; dl3twi2_avg_intensity],...
    [ones(length(wt_avg_intensity),1); 2*ones(length(dl3_avg_intensity),1); 3*ones(length(twi2_avg_intensity),1); 4*ones(length(dl3twi2_avg_intensity),1)], ...
    'labels',{'wt','dl3','twi2','dl3twi2'}); ...
    title('Average intensity'); ylabel('Intensity (a.u.)'); axis square; ylim([0 inf]); axis square;
ylim([0 inf]);

% fix for 10-90%
p = prctile(wt_avg_intensity,[10 90]);
p(2,:) = prctile(dl3_avg_intensity,[10 90]);
p(3,:) = prctile(twi2_avg_intensity,[10 90]);
p(4,:) = prctile(dl3twi2_avg_intensity,[10 90]);

h = flipud(findobj(gca,'Tag','Upper Whisker'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(2) = p(j,2);
set(h(j),'YData',ydata);
end
h = flipud(findobj(gca,'Tag','Upper Adjacent Value'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(:) = p(j,2);
set(h(j),'YData',ydata);
end
h = flipud(findobj(gca,'Tag','Lower Whisker'));
for j=1:length(h)
ydata = get(h(j),'YData');
ydata(1) = p(j,1);
set(h(j),'Ydata',ydata);
end
h = flipud(findobj(gca,'Tag','Lower Adjacent Value'));
for j=1:length(h)
ydata =get(h(j),'YData');
ydata(:) = p(j,1);
set(h(j),'YData',ydata);
end


data = {wt_avg_intensity(1:250); dl3_avg_intensity(1:250); twi2_avg_intensity(1:250); dl3twi2_avg_intensity(1:250)};

catIdx = [ones(size(wt_avg_intensity(1:250),1),1); 2*ones(size(dl3_avg_intensity(1:250),1),1);...
    3*ones(size(twi2_avg_intensity(1:250),1),1); 4*ones(size(dl3twi2_avg_intensity(1:250),1),1)];
plotSpread(data,'categoryIdx',catIdx); axis square
 ax = gca;  ax.FontSize = 16;