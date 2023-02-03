clear all
close all

load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl12');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel');
% load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt_new');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt_new2');
% load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2_new');


wt_act_01 = find(wt_dur_01 > 0.5);
wt_act_02 = find(wt_dur_02 > 0.5);
wt_act_03 = find(wt_dur_03 > 0.5);

% wtnew_act_01 = find(wtnew_dur_01 > 0.5);
% wtnew_act_02 = find(wtnew_dur_02 > 0.5);
% wtnew_act_03 = find(wtnew_dur_03 > 0.5);

wtnew2_act_01 = find(wtnew2_dur_01 > 0.5);
wtnew2_act_02 = find(wtnew2_dur_02 > 0.5);
wtnew2_act_03 = find(wtnew2_dur_03 > 0.5);


dl3_act_01 = find(dl3_dur_01 > 0.5);
dl3_act_02 = find(dl3_dur_02 > 0.5);
dl3_act_03 = find(dl3_dur_03 > 0.5);

twi2_act_01 = find(twi2_dur_01 > 0.5);
twi2_act_02 = find(twi2_dur_02 > 0.5);
twi2_act_03 = find(twi2_dur_03 > 0.5);

dl3twi2_act_01 = find(dl3twi2_dur_01 > 0.5);
dl3twi2_act_02 = find(dl3twi2_dur_02 > 0.5);
dl3twi2_act_03 = find(dl3twi2_dur_03 > 0.5);
dl3twi2_act_04 = find(dl3twi2_dur_04 > 0.5);

dl1_act_01 = find(dl1_dur_01 > 0.5);
dl1_act_02 = find(dl1_dur_02 > 0.5);
dl1_act_03 = find(dl1_dur_03 > 0.5);
dl1_act_04 = find(dl1_dur_04 > 0.5);

dl2_act_01 = find(dl2_dur_01 > 0.5);
dl2_act_02 = find(dl2_dur_02 > 0.5);
dl2_act_03 = find(dl2_dur_03 > 0.5);
dl2_act_04 = find(dl2_dur_04 > 0.5);

dl12_act_01 = find(dl12_dur_01 > 0.5);
dl12_act_02 = find(dl12_dur_02 > 0.5);
dl12_act_03 = find(dl12_dur_03 > 0.5);

zldopt_act_01 = find(zldopt_dur_01 > 0.5);
zldopt_act_02 = find(zldopt_dur_02 > 0.5);
zldopt_act_03 = find(zldopt_dur_03 > 0.5);

zlddel_act_01 = find(zlddel_dur_01 > 0.5);
zlddel_act_02 = find(zlddel_dur_02 > 0.5);
zlddel_act_03 = find(zlddel_dur_03 > 0.5);



%% output total
wt_out = [wt_out_01(wt_act_01); wt_out_02(wt_act_02); wt_out_03(wt_act_03)];
wtnew2_out = [wtnew2_out_01(wtnew2_act_01); wtnew2_out_02(wtnew2_act_02);  wtnew2_out_03(wtnew2_act_03)];
dl3_out = [dl3_out_01(dl3_act_01); dl3_out_02(dl3_act_02); dl3_out_03(dl3_act_03)];
twi2_out = [twi2_out_01(twi2_act_01); twi2_out_02(twi2_act_02); twi2_out_03(twi2_act_03)];
dl3twi2_out = [dl3twi2_out_01(dl3twi2_act_01); dl3twi2_out_02(dl3twi2_act_02); dl3twi2_out_03(dl3twi2_act_03); dl3twi2_out_04(dl3twi2_act_04)];
dl1_out = [dl1_out_01(dl1_act_01); dl1_out_02(dl1_act_02); dl1_out_03(dl1_act_03); dl1_out_04(dl1_act_04)];
dl2_out = [dl2_out_01(dl2_act_01); dl2_out_02(dl2_act_02); dl2_out_03(dl2_act_03); dl2_out_04(dl2_act_04)];
dl12_out = [dl12_out_01(dl12_act_01); dl12_out_02(dl12_act_02); dl12_out_03(dl12_act_03)];
zldopt_out = [zldopt_out_01(zldopt_act_01); zldopt_out_02(zldopt_act_02); zldopt_out_03(zldopt_act_03)];
zlddel_out = [zlddel_out_01(zlddel_act_01); zlddel_out_02(zlddel_act_02); zlddel_out_03(zlddel_act_03)];

wt_nout = [wt_nout_01(wt_act_01); wt_nout_02(wt_act_02); wt_nout_03(wt_act_03)];
wtnew2_nout = [wtnew2_nout_01(wtnew2_act_01); wtnew2_nout_02(wtnew2_act_02);  wtnew2_nout_03(wtnew2_act_03)];
dl3_nout = [dl3_nout_01(dl3_act_01); dl3_nout_02(dl3_act_02); dl3_nout_03(dl3_act_03)];
twi2_nout = [twi2_nout_01(twi2_act_01); twi2_nout_02(twi2_act_02); twi2_nout_03(twi2_act_03)];
dl3twi2_nout = [dl3twi2_nout_01(dl3twi2_act_01); dl3twi2_nout_02(dl3twi2_act_02); dl3twi2_nout_03(dl3twi2_act_03); dl3twi2_nout_04(dl3twi2_act_04)];
dl1_nout = [dl1_nout_01(dl1_act_01); dl1_nout_02(dl1_act_02); dl1_nout_03(dl1_act_03); dl1_nout_04(dl1_act_04)];
dl2_nout = [dl2_nout_01(dl2_act_01); dl2_nout_02(dl2_act_02); dl2_nout_03(dl2_act_03); dl2_nout_04(dl2_act_04)];
dl12_nout = [dl12_nout_01(dl12_act_01); dl12_nout_02(dl12_act_02); dl12_nout_03(dl12_act_03)];
zldopt_nout = [zldopt_nout_01(zldopt_act_01); zldopt_nout_02(zldopt_act_02); zldopt_nout_03(zldopt_act_03)];
zlddel_nout = [zlddel_nout_01(zlddel_act_01); zlddel_nout_02(zlddel_act_02); zlddel_nout_03(zlddel_act_03)];

% figure,boxplot([wt_out; dl1_out; dl2_out; dl12_out],...
%     [ones(length(wt_out),1); 2*ones(length(dl1_out),1); 3*ones(length(dl2_out),1); 4*ones(length(dl12_out),1)], ...
%     'labels',{'wt','dl1','dl2','dl1/2'}); ...
%     title('Total mRNA output'); ylabel('total mRNA production (a.u.)'); axis square; ylim([0 inf]);
%    ax = gca; 
%    ax.FontSize = 16;
% % fix for 10-90%
% p = prctile(wt_out,[10 90]);
% p(2,:) = prctile(dl1_out,[10 90]);
% p(3,:) = prctile(dl2_out,[10 90]);
% p(4,:) = prctile(dl12_out,[10 90]);

figure,boxplot([wt_out; dl3_out; twi2_out; dl3twi2_out],...
    [ones(length(wt_out),1); 2*ones(length(dl3_out),1); 3*ones(length(twi2_out),1); 4*ones(length(dl3twi2_out),1)], ...
    'labels',{'wt','dl3','twi2','dl3twi2'});...
    title('Total mRNA output'); ylabel('total mRNA production (a.u.)'); axis square; ylim([0 inf]);
   ax = gca; 
   ax.FontSize = 16;
% fix for 10-90%
p = prctile(wt_out,[10 90]);
p(2,:) = prctile(dl3_out,[10 90]);
p(3,:) = prctile(twi2_out,[10 90]);
p(4,:) = prctile(dl3twi2_out,[10 90]);

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

figure,boxplot([wt_nout; dl3_nout; twi2_nout; dl3twi2_nout],...
    [ones(length(wt_nout),1); 2*ones(length(dl3_nout),1); 3*ones(length(twi2_nout),1); 4*ones(length(dl3twi2_nout),1)], ...
    'labels',{'wt','dl3','twi2','dl3twi2'});...
    title('Normalized mRNA output'); ylabel('total mRNA production (a.u.)'); axis square; ylim([0 inf]);
   ax = gca; 
   ax.FontSize = 16;
% fix for 10-90%
p = prctile(wt_nout,[10 90]);
p(2,:) = prctile(dl3_nout,[10 90]);
p(3,:) = prctile(twi2_nout,[10 90]);
p(4,:) = prctile(dl3twi2_nout,[10 90]);

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

% %% duration of active transcription 
% wt_dur = [wt_dur_01(wt_act_01); wt_dur_02(wt_act_02); wt_dur_03(wt_act_03)];
% dl3_dur = [dl3_dur_01(dl3_act_01); dl3_dur_02(dl3_act_02); dl3_dur_03(dl3_act_03)];
% twi2_dur = [twi2_dur_01(twi2_act_01); twi2_dur_02(twi2_act_02); twi2_dur_03(twi2_act_03)];
% dl3twi2_dur = [dl3twi2_dur_01(dl3twi2_act_01); dl3twi2_dur_02(dl3twi2_act_02); dl3twi2_dur_03(dl3twi2_act_03); dl3twi2_dur_04(dl3twi2_act_04)];
% dl1_dur = [dl1_dur_01(dl1_act_01); dl1_dur_02(dl1_act_02); dl1_dur_03(dl1_act_03); dl1_dur_04(dl1_act_04)];
% dl2_dur = [dl2_dur_01(dl2_act_01); dl2_dur_02(dl2_act_02); dl2_dur_03(dl2_act_03); dl2_dur_04(dl2_act_04)];
% dl12_dur = [dl12_dur_01(dl12_act_01); dl12_dur_02(dl12_act_02); dl12_dur_03(dl12_act_03)];
% wtnew2_dur = [wtnew2_dur_01(wtnew2_act_01); wtnew2_dur_02(wtnew2_act_02); wtnew2_dur_03(wtnew2_act_03)];
% 
% 
% figure,boxplot([wt_dur; wtnew2_dur; dl3_dur; twi2_dur; dl3twi2_dur; dl1_dur; dl2_dur; dl12_dur],...
%     [ones(length(wt_dur),1); 2*ones(length(wtnew2_dur),1); 3*ones(length(dl3_dur),1); 4*ones(length(twi2_dur),1);...
%     5*ones(length(dl3twi2_dur),1); 6*ones(length(dl1_dur),1); 7*ones(length(dl2_dur),1); 8*ones(length(dl12_dur),1)], ...
%     'labels',{'wt','wtnew2','dl3','twi2','dl3twi2','dl1','dl2','dl12'});...
%     title('Duration'); ylabel('Time (min)'); axis square; ylim([0 inf]);
%    ax = gca; 
%    ax.FontSize = 16;
% % fix for 10-90%
% p = prctile(wt_dur,[10 90]);
% p(2,:) = prctile(wtnew2_dur,[10 90]);
% p(3,:) = prctile(dl3_dur,[10 90]);
% p(4,:) = prctile(twi2_dur,[10 90]);
% p(5,:) = prctile(dl3twi2_dur,[10 90]);
% p(6,:) = prctile(dl1_dur,[10 90]);
% p(7,:) = prctile(dl2_dur,[10 90]);
% p(8,:) = prctile(dl12_dur,[10 90]);
% 
% h = flipud(findobj(gca,'Tag','Upper Whisker'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(2) = p(j,2);
% set(h(j),'YData',ydata);
% end
% h = flipud(findobj(gca,'Tag','Upper Adjacent Value'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(:) = p(j,2);
% set(h(j),'YData',ydata);
% end
% h = flipud(findobj(gca,'Tag','Lower Whisker'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(1) = p(j,1);
% set(h(j),'Ydata',ydata);
% end
% h = flipud(findobj(gca,'Tag','Lower Adjacent Value'));
% for j=1:length(h)
% ydata =get(h(j),'YData');
% ydata(:) = p(j,1);
% set(h(j),'YData',ydata);
% end
% 
% % 
% %% max amplitude
% wt_max = [wt_max_01(wt_act_01); wt_max_02(wt_act_02); wt_max_03(wt_act_03)];
% dl3_max = [dl3_max_01(dl3_act_01); dl3_max_02(dl3_act_02); dl3_max_03(dl3_act_03)];
% twi2_max = [twi2_max_01(twi2_act_01); twi2_max_02(twi2_act_02); twi2_max_03(twi2_act_03)];
% dl3twi2_max = [dl3twi2_max_01(dl3twi2_act_01); dl3twi2_max_02(dl3twi2_act_02); dl3twi2_max_03(dl3twi2_act_03); dl3twi2_max_04(dl3twi2_act_04)];
% dl1_max = [dl1_max_01(dl1_act_01); dl1_max_02(dl1_act_02); dl1_max_03(dl1_act_03); dl1_max_04(dl1_act_04)];
% dl2_max = [dl2_max_01(dl2_act_01); dl2_max_02(dl2_act_02); dl2_max_03(dl2_act_03); dl2_max_04(dl2_act_04)];
% dl12_max = [dl12_max_01(dl12_act_01); dl12_max_02(dl12_act_02); dl12_max_03(dl12_act_03)];
% zldopt_max = [zldopt_max_01(zldopt_act_01); zldopt_max_02(zldopt_act_02); zldopt_max_03(zldopt_act_03)];
% zlddel_max = [zlddel_max_01(zlddel_act_01); zlddel_max_02(zlddel_act_02); zlddel_max_03(zlddel_act_03)];
% wtnew2_max = [wtnew2_max_01(wtnew2_act_01); wtnew2_max_02(wtnew2_act_02); wtnew2_max_03(wtnew2_act_03)];
% % wt_max = [wt_max_01(wt_act_01); wt_max_02(wt_act_02); wt_max_03(wt_act_03)];
% 
% figure,boxplot([wt_max; dl1_max; dl2_max; dl12_max],...
%     [ones(length(wt_max),1); 2*ones(length(dl1_max),1); 3*ones(length(dl2_max),1); 4*ones(length(dl12_max),1)], ...
%     'labels',{'wt','dl1','dl2','dl1/2'}); ...
%     title('Maximum amplitude'); ylabel('Time (min)'); axis square; ylim([0 inf]);
%    ax = gca; 
%    ax.FontSize = 16;
% % fix for 10-90%
% p = prctile(wt_max,[10 90]);
% p(2,:) = prctile(dl1_max,[10 90]);
% p(3,:) = prctile(dl2_max,[10 90]);
% p(4,:) = prctile(dl12_max,[10 90]);

% figure,boxplot([wt_max; dl3_max; twi2_max; dl3twi2_max; dl1_max; dl2_max; dl12_max; zldopt_max; zlddel_max],...
%     [ones(length(wt_max),1); 2*ones(length(dl3_max),1); 3*ones(length(twi2_max),1); 4*ones(length(dl3twi2_max),1);...
%     5*ones(length(dl1_max),1); 6*ones(length(dl2_max),1); 7*ones(length(dl12_max),1); 8*ones(length(zldopt_max),1); 9*ones(length(zlddel_max),1)], ...
%     'labels',{'wt','dl3','twi2','dl3twi2','dl1','dl2','dl12','zld opt','zld del'});...
%     title('Maximum intensity'); ylabel('fluorescent intensity (a.u.)'); axis square; ylim([0 inf]);
%    ax = gca; 
%    ax.FontSize = 16;
% % fix for 10-90%
% p = prctile(wt_max,[10 90]);
% p(2,:) = prctile(dl3_max,[10 90]);
% p(3,:) = prctile(twi2_max,[10 90]);
% p(4,:) = prctile(dl3twi2_max,[10 90]);
% p(5,:) = prctile(dl1_max,[10 90]);
% p(6,:) = prctile(dl2_max,[10 90]);
% p(7,:) = prctile(dl12_max,[10 90]);
% p(8,:) = prctile(zldopt_max,[10 90]);
% p(9,:) = prctile(zlddel_max,[10 90]);

% h = flipud(findobj(gca,'Tag','Upper Whisker'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(2) = p(j,2);
% set(h(j),'YData',ydata);
% end
% h = flipud(findobj(gca,'Tag','Upper Adjacent Value'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(:) = p(j,2);
% set(h(j),'YData',ydata);
% end
% h = flipud(findobj(gca,'Tag','Lower Whisker'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(1) = p(j,1);
% set(h(j),'Ydata',ydata);
% end
% h = flipud(findobj(gca,'Tag','Lower Adjacent Value'));
% for j=1:length(h)
% ydata =get(h(j),'YData');
% ydata(:) = p(j,1);
% set(h(j),'YData',ydata);
% end
% % 
% figure,boxplot([dl3_max; twi2_max; dl3twi2_max; dl1_max; dl2_max; dl12_max; zldopt_max; zlddel_max],...
%     [ones(length(dl3_max),1); 2*ones(length(twi2_max),1); 3*ones(length(dl3twi2_max),1); 4*ones(length(dl1_max),1);...
%     5*ones(length(dl2_max),1); 6*ones(length(dl12_max),1); 7*ones(length(zldopt_max),1); 8*ones(length(zlddel_max),1)], ...
%     'labels',{'dl3','twi2','dl3twi2','d11','dl2','dl1/2','zld opt','zld del'});...
%     title('Maximum amplitude'); ylabel('Intenstiy(a.u.)'); axis square; ylim([0 inf]);
%    ax = gca; 
%    ax.FontSize = 16;
% % fix for 10-90%
% p = prctile(dl3_max,[10 90]);
% p(2,:) = prctile(twi2_max,[10 90]);
% p(3,:) = prctile(dl3twi2_max,[10 90]);
% p(4,:) = prctile(dl1_max,[10 90]);
% p(5,:) = prctile(dl2_max,[10 90]);
% p(6,:) = prctile(dl12_max,[10 90]);
% p(7,:) = prctile(zldopt_max,[10 90]);
% p(8,:) = prctile(zlddel_max,[10 90]);
% 
% h = flipud(findobj(gca,'Tag','Upper Whisker'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(2) = p(j,2);
% set(h(j),'YData',ydata);
% end
% h = flipud(findobj(gca,'Tag','Upper Adjacent Value'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(:) = p(j,2);
% set(h(j),'YData',ydata);
% end
% h = flipud(findobj(gca,'Tag','Lower Whisker'));
% for j=1:length(h)
% ydata = get(h(j),'YData');
% ydata(1) = p(j,1);
% set(h(j),'Ydata',ydata);
% end
% h = flipud(findobj(gca,'Tag','Lower Adjacent Value'));
% for j=1:length(h)
% ydata =get(h(j),'YData');
% ydata(:) = p(j,1);
% set(h(j),'YData',ydata);
% end

%% average amplitude
wt_avg_intensity = [mean(wt_01(:,wt_act_01)), mean(wt_02(:,wt_act_02)), mean(wt_03(:,wt_act_03))]';
dl3_avg_intensity = [mean(dl3_01(:,dl3_act_01)), mean(dl3_02(:,dl3_act_02)), mean(dl3_03(:,dl3_act_03))]';
twi2_avg_intensity = [mean(twi2_01(:,twi2_act_01)), mean(twi2_02(:,twi2_act_02)), mean(twi2_03(:,twi2_act_03))]';
dl3twi2_avg_intensity = [mean(dl3twi2_01(:,dl3twi2_act_01)), mean(dl3twi2_02(:,dl3twi2_act_02)),...
    mean(dl3twi2_03(:,dl3twi2_act_03)), mean(dl3twi2_04(:,dl3twi2_act_04))]';
dl1_avg_intensity = [mean(dl1_01(:,dl1_act_01)), mean(dl1_02(:,dl1_act_02)), mean(dl1_03(:,dl1_act_03)), mean(dl1_04(:,dl1_act_04))]';
dl2_avg_intensity = [mean(dl2_01(:,dl2_act_01)), mean(dl2_02(:,dl2_act_02)), mean(dl2_03(:,dl2_act_03)), mean(dl2_04(:,dl2_act_04))]';
dl12_avg_intensity = [mean(dl12_01(:,dl12_act_01)), mean(dl12_02(:,dl12_act_02)), mean(dl12_03(:,dl12_act_03))]';
zldopt_avg_intensity = [mean(zldopt_01(:,zldopt_act_01)), mean(zldopt_02(:,zldopt_act_02)), mean(zldopt_03(:,zldopt_act_03))]';
zlddel_avg_intensity = [mean(zlddel_01(:,zlddel_act_01)), mean(zlddel_02(:,zlddel_act_02)), mean(zlddel_03(:,zlddel_act_03))]';

figure,boxplot([wt_avg_intensity; dl1_avg_intensity; dl2_avg_intensity; dl12_avg_intensity],...
    [ones(length(wt_avg_intensity),1); 2*ones(length(dl1_avg_intensity),1); 3*ones(length(dl2_avg_intensity),1); 4*ones(length(dl12_avg_intensity),1)], ...
    'labels',{'wt','dl1','dl2','dl1/2'}); ...
    title('Average intensity'); ylabel('fluorescent intensity (a.u.)'); axis square; ylim([0 inf]);
   ax = gca; 
   ax.FontSize = 16;
% fix for 10-90%
p = prctile(wt_avg_intensity,[10 90]);
p(2,:) = prctile(dl1_avg_intensity,[10 90]);
p(3,:) = prctile(dl2_avg_intensity,[10 90]);
p(4,:) = prctile(dl12_avg_intensity,[10 90]);

figure,boxplot([wt_avg_intensity; dl3_avg_intensity; twi2_avg_intensity; dl3twi2_avg_intensity],...
    [ones(length(wt_avg_intensity),1); 2*ones(length(dl3_avg_intensity),1); 3*ones(length(twi2_avg_intensity),1); 4*ones(length(dl3twi2_avg_intensity),1)], ...
    'labels',{'wt','dl3','twi2','dl3twi2'});...
    title('Average intensity'); ylabel('fluorescent intensity (a.u.)'); axis square; ylim([0 inf]);
   ax = gca; 
   ax.FontSize = 16;
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

%% average trajectory
T = 0.35*(1:150);
wt_trajectory = zeros(3,135);
wt_trajectory(1,1:126) = mean(wt_01(:,wt_act_01),2);
wt_trajectory(2,1:128) = mean(wt_02(:,wt_act_02),2);
wt_trajectory(3,1:135) = mean(wt_03(:,wt_act_03),2);
avg_wt_trajectory = mean(wt_trajectory(:,1:126));
err_wt_trajectory = std(wt_trajectory(:,1:126))./size(wt_trajectory,1);

dl3_trajectory = zeros(3,169);
dl3_trajectory(1,1:169) = mean(dl3_01(:,dl3_act_01),2);
dl3_trajectory(2,1:142) = mean(dl3_02(:,dl3_act_02),2);
dl3_trajectory(3,1:146) = mean(dl3_03(:,dl3_act_03),2);
avg_dl3_trajectory = mean(dl3_trajectory(:,1:142));
err_dl3_trajectory = std(dl3_trajectory(:,1:142))./size(dl3_trajectory,1);

twi2_trajectory = zeros(3,124);
twi2_trajectory(1,1:124) = mean(twi2_01(:,twi2_act_01),2);
twi2_trajectory(2,1:123) = mean(twi2_02(:,twi2_act_02),2);
twi2_trajectory(3,1:123) = mean(twi2_03(:,twi2_act_03),2);
avg_twi2_trajectory = mean(twi2_trajectory(:,1:123));
err_twi2_trajectory = std(twi2_trajectory(:,1:123))./size(twi2_trajectory,1);

dl3twi2_trajectory = zeros(4,135);
dl3twi2_trajectory(1,1:125) = mean(dl3twi2_01(:,dl3twi2_act_01),2);
dl3twi2_trajectory(2,1:129) = mean(dl3twi2_02(:,dl3twi2_act_02),2);
dl3twi2_trajectory(3,1:135) = mean(dl3twi2_03(:,dl3twi2_act_03),2);
dl3twi2_trajectory(4,1:126) = mean(dl3twi2_04(:,dl3twi2_act_04),2);
avg_dl3twi2_trajectory = mean(dl3twi2_trajectory(:,1:125));
err_dl3twi2_trajectory = std(dl3twi2_trajectory(:,1:125))./size(dl3twi2_trajectory,1);

dl1_trajectory = zeros(4,136);
dl1_trajectory(1,1:119) = mean(dl1_01(:,dl1_act_01),2);
dl1_trajectory(2,1:136) = mean(dl1_02(:,dl1_act_02),2);
dl1_trajectory(3,1:128) = mean(dl1_03(:,dl1_act_03),2);
dl1_trajectory(4,1:122) = mean(dl1_04(:,dl1_act_04),2);
avg_dl1_trajectory = mean(dl1_trajectory(:,1:119));
err_dl1_trajectory = std(dl1_trajectory(:,1:119))./size(dl1_trajectory,1);

dl2_trajectory = zeros(4,133);
dl2_trajectory(1,1:133) = mean(dl2_01(:,dl2_act_01),2);
dl2_trajectory(2,1:132) = mean(dl2_02(:,dl2_act_02),2);
dl2_trajectory(3,1:125) = mean(dl2_03(:,dl2_act_03),2);
dl2_trajectory(4,1:124) = mean(dl2_04(:,dl2_act_04),2);
avg_dl2_trajectory = mean(dl2_trajectory(:,1:124));
err_dl2_trajectory = std(dl2_trajectory(:,1:124))./size(dl2_trajectory,1);

dl12_trajectory = zeros(3,131);
dl12_trajectory(1,1:131) = mean(dl12_01(:,dl12_act_01),2);
dl12_trajectory(2,1:119) = mean(dl12_02(:,dl12_act_02),2);
dl12_trajectory(3,1:129) = mean(dl12_03(:,dl12_act_03),2);
avg_dl12_trajectory = mean(dl12_trajectory(:,1:119));
err_dl12_trajectory = std(dl12_trajectory(:,1:119))./size(dl12_trajectory,1);

figure,
shadedErrorBar(T(1:126), avg_wt_trajectory(1:126), err_wt_trajectory(1:126),'lineprops','-'); hold on
shadedErrorBar(T(1:142), avg_dl3_trajectory(1:142), err_dl3_trajectory(1:142),'lineprops','-'); hold on
shadedErrorBar(T(1:123), avg_twi2_trajectory(1:123), err_twi2_trajectory(1:123),'lineprops','-'); hold on
shadedErrorBar(T(1:125), avg_dl3twi2_trajectory(1:125), err_dl3twi2_trajectory(1:125),'lineprops','-'); hold on
% shadedErrorBar(T(1:119), avg_dl1_trajectory(1:119), err_dl1_trajectory(1:119),'lineprops','-'); hold on
% shadedErrorBar(T(1:124), avg_dl2_trajectory(1:124), err_dl2_trajectory(1:124),'lineprops','-'); hold on
% shadedErrorBar(T(1:119), avg_dl12_trajectory(1:119), err_dl12_trajectory(1:119),'lineprops','-'); hold on
ylim([0 1000]); title('Average intensity'); ylabel('Fluorescence intensity(a.u.)'); xlabel('Time(min)'); 
legend('wt','dl3','twi2','dl3twi2');

% %% time to maximum amplitude
% wt_time_max = [mean(wt_max_01(wt_act_01(:),2)); mean(wt_max_02(wt_act_02(:),2)); mean(wt_max_03(wt_act_03(:),2))];
% avg_wt_time_max = mean(wt_time_max);
% err_wt_time_max = std(wt_time_max)./length(wt_time_max);
% 
% dl3_time_max = [mean(dl3_max_01(dl3_act_01(:),2)); mean(dl3_max_02(dl3_act_02(:),2)); mean(dl3_max_03(dl3_act_03(:),2))];
% avg_dl3_time_max = mean(dl3_time_max);
% err_dl3_time_max = std(dl3_time_max)./length(dl3_time_max);
% 
% twi2_time_max = [mean(twi2_max_01(twi2_act_01(:),2)); mean(twi2_max_02(twi2_act_02(:),2)); mean(twi2_max_03(twi2_act_03(:),2))];
% avg_twi2_time_max = mean(twi2_time_max);
% err_twi2_time_max = std(twi2_time_max)./length(twi2_time_max);
% 
% dl3twi2_time_max = [mean(dl3twi2_max_01(dl3twi2_act_01(:),2)); mean(dl3twi2_max_02(dl3twi2_act_02(:),2)); mean(dl3twi2_max_03(dl3twi2_act_03(:),2));...
%     mean(dl3twi2_max_04(dl3twi2_act_04(:),2))];
% avg_dl3twi2_time_max = mean(dl3twi2_time_max);
% err_dl3twi2_time_max = std(dl3twi2_time_max)./length(dl3twi2_time_max);
% 
% dl1_time_max = [mean(dl1_max_01(dl1_act_01(:),2)); mean(dl1_max_02(dl1_act_02(:),2)); mean(dl1_max_03(dl1_act_03(:),2));...
%     mean(dl1_max_04(dl1_act_04(:),2))];
% avg_dl1_time_max = mean(dl1_time_max);
% err_dl1_time_max = std(dl1_time_max)./length(dl1_time_max);
% 
% dl2_time_max = [mean(dl2_max_01(dl2_act_01(:),2)); mean(dl2_max_02(dl2_act_02(:),2)); mean(dl2_max_03(dl2_act_03(:),2));...
%     mean(dl2_max_04(dl2_act_04(:),2))];
% avg_dl2_time_max = mean(dl2_time_max);
% err_dl2_time_max = std(dl2_time_max)./length(dl2_time_max);
% 
% dl12_time_max = [mean(dl12_max_01(dl12_act_01(:),2)); mean(dl12_max_02(dl12_act_02(:),2)); mean(dl12_max_03(dl12_act_03(:),2))];
% avg_dl12_time_max = mean(dl12_time_max);
% err_dl12_time_max = std(dl12_time_max)./length(dl12_time_max);
% 
% zldopt_time_max = [mean(zldopt_max_01(zldopt_act_01(:),2)); mean(zldopt_max_02(zldopt_act_02(:),2)); mean(zldopt_max_03(zldopt_act_03(:),2))];
% avg_zldopt_time_max = mean(zldopt_time_max);
% err_zldopt_time_max = std(zldopt_time_max)./length(zldopt_time_max);
% 
% zlddel_time_max = [mean(zlddel_max_01(zlddel_act_01(:),2)); mean(zlddel_max_02(zlddel_act_02(:),2)); mean(zlddel_max_03(zlddel_act_03(:),2))];
% avg_zlddel_time_max = mean(zlddel_time_max);
% err_zlddel_time_max = std(zlddel_time_max)./length(zlddel_time_max);
% 
% figure,
% errorbar(1, avg_wt_time_max, err_wt_time_max, '.', 'Markersize', 10); hold on; 
% errorbar(2, avg_dl3_time_max, err_dl3_time_max, '.', 'Markersize', 10); hold on; 
% errorbar(3, avg_twi2_time_max, err_twi2_time_max, '.', 'Markersize', 10); hold on; 
% errorbar(4, avg_dl3twi2_time_max, err_dl3twi2_time_max, '.', 'Markersize', 10); hold on; 
% errorbar(5, avg_dl1_time_max, err_dl1_time_max, '.', 'Markersize', 10); hold on; 
% errorbar(6, avg_dl2_time_max, err_dl2_time_max, '.', 'Markersize', 10); hold on; 
% errorbar(7, avg_dl12_time_max, err_dl12_time_max, '.', 'Markersize', 10); hold on; 
% errorbar(8, avg_zldopt_time_max, err_zldopt_time_max, '.', 'Markersize', 10); hold on; 
% errorbar(9, avg_zlddel_time_max, err_zlddel_time_max, '.', 'Markersize', 10); hold on;  
% 
% title('Time to maximum amplitude'); ylabel('Time(frames)'); ylim([0 inf]); xlim([0 10]);
%  xticks([1,2,3,4,5,6 7 8 9]);
% xticklabels({'wt','dl3','twi2','dl3twi2','d11','dl2','dl1/2','zld opt','zld del'});  axis square;
% ax = gca;  ax.FontSize = 16;

