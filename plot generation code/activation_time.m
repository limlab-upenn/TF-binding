clear
close all
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt_new2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2_new');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl12');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel');

% nc
wt_act_01 = find(wt_dur_01 > 0.5);
wt_act_02 = find(wt_dur_02 > 0.5);
wt_act_03 = find(wt_dur_03 > 0.5);

wtnew2_act_01 = find(wtnew2_dur_01 > 0.5);
wtnew2_act_02 = find(wtnew2_dur_02 > 0.5);
wtnew2_act_03 = find(wtnew2_dur_03 > 0.5);

dl3_act_01 = find(dl3_dur_01 > 0.5);
dl3_act_02 = find(dl3_dur_02 > 0.5);
dl3_act_03 = find(dl3_dur_03 > 0.5);

twi2_act_01 = find(twi2_dur_01 > 0.5);
twi2_act_02 = find(twi2_dur_02 > 0.5);
twi2_act_03 = find(twi2_dur_03 > 0.5);
twi2new_act_01 = find(twi2new_dur_01 > 0.5);

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
%% time to activation
thr = 500;
for i=1:length(wt_act_01)
    tmp = find(smooth(wt_01(:,wt_act_01(i))) > thr);
    if isempty(tmp) == 1
         wt_time_01(i) = 0;
         wt_on_01(i) = 0;
    else
        wt_time_01(i) = tmp(1)*0.35;
        wt_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(wt_act_02)
    tmp = find(smooth(wt_02(:,wt_act_02(i))) > thr);
    if isempty(tmp) == 1
         wt_time_02(i) = 0;
         wt_on_02(i) = 0;
    else
        wt_time_02(i) = tmp(1)*0.35;
        wt_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(wt_act_03)
    tmp = find(smooth(wt_03(:,wt_act_03(i))) > thr);
    if isempty(tmp) == 1
         wt_time_03(i) = 0;
         wt_on_03(i) = 0;
    else
        wt_time_03(i) = tmp(1)*0.35;
        wt_on_03(i) = length(tmp)*0.35;
    end
end
for i=1:length(wtnew2_act_01)
    tmp = find(smooth(wtnew2_01(:,wtnew2_act_01(i))) > thr);
    if isempty(tmp) == 1
         wtnew2_time_01(i) = 0;
         wtnew2_on_01(i) = 0;
    else
        wtnew2_time_01(i) = tmp(1)*0.35;
        wtnew2_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(wtnew2_act_02)
    tmp = find(smooth(wtnew2_02(:,wtnew2_act_02(i))) > thr);
    if isempty(tmp) == 1
         wtnew2_time_02(i) = 0;
         wtnew2_on_02(i) = 0;
    else
        wtnew2_time_02(i) = tmp(1)*0.35;
        wtnew2_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(wtnew2_act_03)
    tmp = find(smooth(wtnew2_03(:,wtnew2_act_03(i))) > thr);
    if isempty(tmp) == 1
         wtnew2_time_03(i) = 0;
         wtnew2_on_03(i) = 0;
    else
        wtnew2_time_03(i) = tmp(1)*0.35;
        wtnew2_on_03(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl3_act_01)
    tmp = find(smooth(dl3_01(:,dl3_act_01(i))) > thr);
    if isempty(tmp) == 1
         dl3_time_01(i) = 0;
         dl3_on_01(i) = 0;
    else
        dl3_time_01(i) = tmp(1)*0.35;
        dl3_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl3_act_02)
    tmp = find(smooth(dl3_02(:,dl3_act_02(i))) > thr);
    if isempty(tmp) == 1
         dl3_time_02(i) = 0;
         dl3_on_02(i) = 0;
    else
        dl3_time_02(i) = tmp(1)*0.35;
        dl3_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl3_act_03)
    tmp = find(smooth(dl3_03(:,dl3_act_03(i))) > thr);
    if isempty(tmp) == 1
         dl3_time_03(i) = 0;
         dl3_on_03(i) = 0;
    else
        dl3_time_03(i) = tmp(1)*0.35;
        dl3_on_03(i) = length(tmp)*0.35;
    end
end
for i=1:length(twi2_act_01)
    tmp = find(smooth(twi2_01(:,twi2_act_01(i))) > thr);
    if isempty(tmp) == 1
         twi2_time_01(i) = 0;
         twi2_on_01(i) = 0;
    else
        twi2_time_01(i) = tmp(1)*0.35;
        twi2_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(twi2_act_02)
    tmp = find(smooth(twi2_02(:,twi2_act_02(i))) > thr);
    if isempty(tmp) == 1
         twi2_time_02(i) = 0;
         twi2_on_02(i) = 0;
    else
        twi2_time_02(i) = tmp(1)*0.35;
        twi2_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(twi2_act_03)
    tmp = find(smooth(twi2_03(:,twi2_act_03(i))) > thr);
    if isempty(tmp) == 1
         twi2_time_03(i) = 0;
         twi2_on_03(i) = 0;
    else
        twi2_time_03(i) = tmp(1)*0.35;
        twi2_on_03(i) = length(tmp)*0.35;
    end
end
for i=1:length(twi2new_act_01)
    tmp = find(smooth(twi2new_01(:,twi2new_act_01(i))) > thr);
    if isempty(tmp) == 1
         twi2new_time_01(i) = 0;
         twi2new_on_01(i) = 0;
    else
        twi2new_time_01(i) = tmp(1)*0.35;
        twi2new_on_01(i) = length(tmp)*0.35;
    end
end

for i=1:length(dl3twi2_act_01)
    tmp = find(smooth(dl3twi2_01(:,dl3twi2_act_01(i))) > thr);
    if isempty(tmp) == 1
         dl3twi2_time_01(i) = 0;
         dl3twi2_on_01(i) = 0;
    else
        dl3twi2_time_01(i) = tmp(1)*0.35;
        dl3twi2_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl3twi2_act_02)
    tmp = find(smooth(dl3twi2_02(:,dl3twi2_act_02(i))) > thr);
    if isempty(tmp) == 1
         dl3twi2_time_02(i) = 0;
         dl3twi2_on_02(i) = 0;
    else
        dl3twi2_time_02(i) = tmp(1)*0.35;
        dl3twi2_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl3twi2_act_03)
    tmp = find(smooth(dl3twi2_03(:,dl3twi2_act_03(i))) > thr);
    if isempty(tmp) == 1
         dl3twi2_time_03(i) = 0;
         dl3twi2_on_03(i) = 0;
    else
        dl3twi2_time_03(i) = tmp(1)*0.35;
        dl3twi2_on_03(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl3twi2_act_04)
    tmp = find(smooth(dl3twi2_04(:,dl3twi2_act_04(i))) > thr);
    if isempty(tmp) == 1
         dl3twi2_time_04(i) = 0;
         dl3twi2_on_04(i) = 0;
    else
        dl3twi2_time_04(i) = tmp(1)*0.35;
        dl3twi2_on_04(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl1_act_01)
    tmp = find(smooth(dl1_01(:,dl1_act_01(i))) > thr);
    if isempty(tmp) == 1
         dl1_time_01(i) = 0;
         dl1_on_01(i) = 0;
    else
        dl1_time_01(i) = tmp(1)*0.35;
        dl1_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl1_act_02)
    tmp = find(smooth(dl1_02(:,dl1_act_02(i))) > thr);
    if isempty(tmp) == 1
         dl1_time_02(i) = 0;
         dl1_on_02(i) = 0;
    else
        dl1_time_02(i) = tmp(1)*0.35;
        dl1_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl1_act_03)
    tmp = find(smooth(dl1_03(:,dl1_act_03(i))) > thr);
    if isempty(tmp) == 1
         dl1_time_03(i) = 0;
         dl1_on_03(i) = 0;
    else
        dl1_time_03(i) = tmp(1)*0.35;
        dl1_on_03(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl1_act_04)
    tmp = find(smooth(dl1_04(:,dl1_act_04(i))) > thr);
    if isempty(tmp) == 1
         dl1_time_04(i) = 0;
         dl1_on_04(i) = 0;
    else
        dl1_time_04(i) = tmp(1)*0.35;
        dl1_on_04(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl2_act_01)
    tmp = find(smooth(dl2_01(:,dl2_act_01(i))) > thr);
    if isempty(tmp) == 1
         dl2_time_01(i) = 0;
         dl2_on_01(i) = 0;
    else
        dl2_time_01(i) = tmp(1)*0.35;
        dl2_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl2_act_02)
    tmp = find(smooth(dl2_02(:,dl2_act_02(i))) > thr);
    if isempty(tmp) == 1
         dl2_time_02(i) = 0;
         dl2_on_02(i) = 0;
    else
        dl2_time_02(i) = tmp(1)*0.35;
        dl2_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl2_act_03)
    tmp = find(smooth(dl2_03(:,dl2_act_03(i))) > thr);
    if isempty(tmp) == 1
         dl2_time_03(i) = 0;
         dl2_on_03(i) = 0;
    else
        dl2_time_03(i) = tmp(1)*0.35;
        dl2_on_03(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl2_act_04)
    tmp = find(smooth(dl2_04(:,dl2_act_04(i))) > thr);
    if isempty(tmp) == 1
         dl2_time_04(i) = 0;
         dl2_on_04(i) = 0;
    else
        dl2_time_04(i) = tmp(1)*0.35;
        dl2_on_04(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl12_act_01)
    tmp = find(smooth(dl12_01(:,dl12_act_01(i))) > thr);
    if isempty(tmp) == 1
         dl12_time_01(i) = 0;
         dl12_on_01(i) = 0;
    else
        dl12_time_01(i) = tmp(1)*0.35;
        dl12_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl12_act_02)
    tmp = find(smooth(dl12_02(:,dl12_act_02(i))) > thr);
    if isempty(tmp) == 1
         dl12_time_02(i) = 0;
         dl12_on_02(i) = 0;
    else
        dl12_time_02(i) = tmp(1)*0.35;
        dl12_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(dl12_act_03)
    tmp = find(smooth(dl12_03(:,dl12_act_03(i))) > thr);
    if isempty(tmp) == 1
         dl12_time_03(i) = 0;
         dl12_on_03(i) = 0;
    else
        dl12_time_03(i) = tmp(1)*0.35;
        dl12_on_03(i) = length(tmp)*0.35;
    end
end

%zldopt
for i=1:length(zldopt_act_01)
    tmp = find(smooth(zldopt_01(:,zldopt_act_01(i))) > thr);
    if isempty(tmp) == 1
         zldopt_time_01(i) = 0;
         zldopt_on_01(i) = 0;
    else
        zldopt_time_01(i) = tmp(1)*0.35;
        zldopt_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(zldopt_act_02)
    tmp = find(smooth(zldopt_02(:,zldopt_act_02(i))) > thr);
    if isempty(tmp) == 1
         zldopt_time_02(i) = 0;
         zldopt_on_02(i) = 0;
    else
        zldopt_time_02(i) = tmp(1)*0.35;
        zldopt_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(zldopt_act_03)
    tmp = find(smooth(zldopt_03(:,zldopt_act_03(i))) > thr);
    if isempty(tmp) == 1
         zldopt_time_03(i) = 0;
         zldopt_on_03(i) = 0;
    else
        zldopt_time_03(i) = tmp(1)*0.35;
        zldopt_on_03(i) = length(tmp)*0.35;
    end
end

%zlddel
for i=1:length(zlddel_act_01)
    tmp = find(smooth(zlddel_01(:,zlddel_act_01(i))) > thr);
    if isempty(tmp) == 1
         zlddel_time_01(i) = 0;
         zlddel_on_01(i) = 0;
    else
        zlddel_time_01(i) = tmp(1)*0.35;
        zlddel_on_01(i) = length(tmp)*0.35;
    end
end
for i=1:length(zlddel_act_02)
    tmp = find(smooth(zlddel_02(:,zlddel_act_02(i))) > thr);
    if isempty(tmp) == 1
         zlddel_time_02(i) = 0;
         zlddel_on_02(i) = 0;
    else
        zlddel_time_02(i) = tmp(1)*0.35;
        zlddel_on_02(i) = length(tmp)*0.35;
    end
end
for i=1:length(zlddel_act_03)
    tmp = find(smooth(zlddel_03(:,zlddel_act_03(i))) > thr);
    if isempty(tmp) == 1
         zlddel_time_03(i) = 0;
         zlddel_on_03(i) = 0;
    else
        zlddel_time_03(i) = tmp(1)*0.35;
        zlddel_on_03(i) = length(tmp)*0.35;
    end
end
%%
wt_time = [wt_time_01, wt_time_02, wt_time_03]';
wtnew2_time = [wtnew2_time_01, wtnew2_time_02, wtnew2_time_03]';
dl3_time = [dl3_time_01, dl3_time_02, dl3_time_03]';
twi2_time = [twi2_time_01, twi2_time_02, twi2_time_03]';
dl3twi2_time = [dl3twi2_time_01, dl3twi2_time_02, dl3twi2_time_03, dl3twi2_time_04]';
dl1_time = [dl1_time_01, dl1_time_02, dl1_time_03, dl1_time_04]';
dl2_time = [dl2_time_01, dl2_time_02, dl2_time_03, dl2_time_04]';
dl12_time = [dl12_time_01, dl12_time_02, dl12_time_03]';
zldopt_time = [zldopt_time_01, zldopt_time_02, zldopt_time_03]';
zlddel_time = [zlddel_time_01, zlddel_time_02, zlddel_time_03]';


figure,boxplot([wt_time; dl1_time; dl2_time; dl12_time],...
    [ones(length(wt_time),1); 2*ones(length(dl1_time),1); 3*ones(length(dl2_time),1); 4*ones(length(dl12_time),1)], ...
    'labels',{'wt','dl1','dl2','dl1/2'}); ...
    title('Time to activation'); ylabel('Time (min)'); axis square; ylim([0 inf]);
   ax = gca; 
   ax.FontSize = 16;
% fix for 10-90%
p = prctile(wt_time,[10 90]);
p(2,:) = prctile(dl1_time,[10 90]);
p(3,:) = prctile(dl2_time,[10 90]);
p(4,:) = prctile(dl12_time,[10 90]);

% figure,boxplot([wt_time; dl3_time; twi2_time; dl3twi2_time; dl1_time; dl2_time; dl12_time; zldopt_time; zlddel_time],...
%     [ones(length(wt_time),1); 2*ones(length(dl3_time),1); 3*ones(length(twi2_time),1); 4*ones(length(dl3twi2_time),1);...
%     5*ones(length(dl1_time),1); 6*ones(length(dl2_time),1); 7*ones(length(dl12_time),1); 8*ones(length(zldopt_time),1); 9*ones(length(zlddel_time),1)], ...
%     'labels',{'wt','dl3','twi2','dl3twi2','dl1','dl2','dl1/2','zld opt','zld del'}); ...
%     title('Time to activation'); ylabel('Time (min)'); axis square; ylim([0 inf]);
%    ax = gca; 
%    ax.FontSize = 16;
% % fix for 10-90%
% p = prctile(wt_time,[10 90]);
% p(2,:) = prctile(dl3_time,[10 90]);
% p(3,:) = prctile(twi2_time,[10 90]);
% p(4,:) = prctile(dl3twi2_time,[10 90]);
% p(5,:) = prctile(dl1_time,[10 90]);
% p(6,:) = prctile(dl2_time,[10 90]);
% p(7,:) = prctile(dl12_time,[10 90]);
% p(8,:) = prctile(zldopt_time,[10 90]);
% p(9,:) = prctile(zlddel_time,[10 90]);

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

%% duration of 'on'
wt_on = [wt_on_01, wt_on_02, wt_on_03]';
wtnew2_on = [wtnew2_on_01, wtnew2_on_02, wtnew2_on_03]';
dl3_on = [dl3_on_01, dl3_on_02, dl3_on_03]';
twi2_on = [twi2_on_01, twi2_on_02, twi2_on_03]';
dl3twi2_on = [dl3twi2_on_01, dl3twi2_on_02, dl3twi2_on_03, dl3twi2_on_04]';
dl1_on = [dl1_on_01, dl1_on_02, dl1_on_03, dl1_on_04]';
dl2_on = [dl2_on_01, dl2_on_02, dl2_on_03, dl2_on_04]';
dl12_on = [dl12_on_01, dl12_on_02, dl12_on_03]';
zldopt_on = [zldopt_on_01, zldopt_on_02, zldopt_on_03]';
zlddel_on = [zlddel_on_01, zlddel_on_02, zlddel_on_03]';

figure,boxplot([wt_on; dl1_on; dl2_on; dl12_on],...
    [ones(length(wt_on),1); 2*ones(length(dl1_on),1); 3*ones(length(dl2_on),1); 4*ones(length(dl12_on),1)], ...
    'labels',{'wt','dl1','dl2','dl1/2'}); ...
    title('duration on'); ylabel('Time (min)'); axis square; ylim([0 inf]);
   ax = gca; 
   ax.FontSize = 16;
% fix for 10-90%
p = prctile(wt_on,[10 90]);
p(2,:) = prctile(dl1_on,[10 90]);
p(3,:) = prctile(dl2_on,[10 90]);
p(4,:) = prctile(dl12_on,[10 90]);

% figure,boxplot([wt_on; dl3_on; twi2_on; dl3twi2_on; dl1_on; dl2_on; dl12_on; zldopt_on; zlddel_on],...
%     [ones(length(wt_on),1); 2*ones(length(dl3_on),1); 3*ones(length(twi2_on),1); 4*ones(length(dl3twi2_on),1);...
%     5*ones(length(dl1_on),1); 6*ones(length(dl2_on),1); 7*ones(length(dl12_on),1); 8*ones(length(zldopt_on),1); 9*ones(length(zlddel_on),1)], ...
%     'labels',{'wt','dl3','twi2','dl3twi2','dl1','dl2','dl1/2','zld opt','zld del'}); ...
%     title('duration on'); ylabel('Time (min)'); axis square; ylim([0 inf]);
%    ax = gca; 
%    ax.FontSize = 16;
% % fix for 10-90%
% p = prctile(wt_on,[10 90]);
% p(2,:) = prctile(dl3_on,[10 90]);
% p(3,:) = prctile(twi2_on,[10 90]);
% p(4,:) = prctile(dl3twi2_on,[10 90]);
% p(5,:) = prctile(dl1_on,[10 90]);
% p(6,:) = prctile(dl2_on,[10 90]);
% p(7,:) = prctile(dl12_on,[10 90]);
% p(8,:) = prctile(zldopt_on,[10 90]);
% p(9,:) = prctile(zlddel_on,[10 90]);

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

% %% histograms of time to activation
% figure (3),
% histogram(wt_time,16); title('wt time to activation'); xlim([0 50])
% figure (4),
% histogram(dl3_time,16); title('dl3 time to activation'); xlim([0 50])
% figure (5),
% histogram(twi2_time,16); title('twi2 time to activation'); xlim([0 50])
% figure (6),
% histogram(dl3twi2_time,16); title('dl3twi2 time to activation'); xlim([0 50])
% figure (7),
% histogram(dl2_time,16); title('dl2 time to activation'); xlim([0 50])
% figure (6)
% histogram(dl12_time,16); title('dl12 time to activation'); xlim([0 50])
