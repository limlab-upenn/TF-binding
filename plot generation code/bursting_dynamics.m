clear all

load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt_new2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl12');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel');

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

slope_wt_01 = zeros(size(wt_01,1)-1,1);
slope_wt_02 = zeros(size(wt_02,1)-1,1);
slope_wt_03 = zeros(size(wt_03,1)-1,1);

slope_wtnew2_01 = zeros(size(wtnew2_01,1)-1,1);
slope_wtnew2_02 = zeros(size(wtnew2_02,1)-1,1);
slope_wtnew2_03 = zeros(size(wtnew2_03,1)-1,1);

slope_dl3_01 = zeros(size(dl3_01,1)-1,1);
slope_dl3_02 = zeros(size(dl3_02,1)-1,1);
slope_dl3_03 = zeros(size(dl3_03,1)-1,1);

slope_twi2_01 = zeros(size(twi2_01,1)-1,1);
slope_twi2_02 = zeros(size(twi2_02,1)-1,1);
slope_twi2_03 = zeros(size(twi2_03,1)-1,1);

slope_dl3twi2_01 = zeros(size(dl3twi2_01,1)-1,1);
slope_dl3twi2_02 = zeros(size(dl3twi2_02,1)-1,1);
slope_dl3twi2_03 = zeros(size(dl3twi2_03,1)-1,1);
slope_dl3twi2_04 = zeros(size(dl3twi2_04,1)-1,1);

slope_dl1_01 = zeros(size(dl1_01,1)-1,1);
slope_dl1_02 = zeros(size(dl1_02,1)-1,1);
slope_dl1_03 = zeros(size(dl1_03,1)-1,1);
slope_dl1_04 = zeros(size(dl1_04,1)-1,1);

slope_dl2_01 = zeros(size(dl2_01,1)-1,1);
slope_dl2_02 = zeros(size(dl2_02,1)-1,1);
slope_dl2_03 = zeros(size(dl2_03,1)-1,1);
slope_dl2_04 = zeros(size(dl2_04,1)-1,1);

slope_dl12_01 = zeros(size(dl12_01,1)-1,1);
slope_dl12_02 = zeros(size(dl12_02,1)-1,1);
slope_dl12_03 = zeros(size(dl12_03,1)-1,1);

slope_zldopt_01 = zeros(size(zldopt_01,1)-1,1);
slope_zldopt_02 = zeros(size(zldopt_02,1)-1,1);
slope_zldopt_03 = zeros(size(zldopt_03,1)-1,1);

slope_zlddel_01 = zeros(size(zlddel_01,1)-1,1);
slope_zlddel_02 = zeros(size(zlddel_02,1)-1,1);
slope_zlddel_03 = zeros(size(zlddel_03,1)-1,1);

for i=1:length(wt_act_01)
    smooth_wt_01(:,i) = smooth(wt_01(:,wt_act_01(i)),0.1,'loess');
    id = smooth_wt_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_wt_01(1:(size(wt_01,1)-idx+1),i) = smooth_wt_01(idx:end,i);
    slope_wt_01(idx:end,i) = diff(above_thr_wt_01(1:(size(wt_01,1)-idx+1),i))./0.35;
    tmp_wt_01(1:size(slope_wt_01,1),i) = slope_wt_01(:,i) > 0;
    for j=2:size(tmp_wt_01,1)-1
    if tmp_wt_01(j,i)~=tmp_wt_01(j-1,i) && tmp_wt_01(j+1,i)==tmp_wt_01(j-1,i)
        tmp_wt_01(j,i)=tmp_wt_01(j+1,i);
    else
        tmp_wt_01(j,i)=tmp_wt_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_wt_01(1:size(slope_wt_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_wt_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_wt_01(1:size(slope_wt_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_wt_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros; 
    on_times_wt_01(i) = sum(on_wt_01(i,:),2);
    off_times_wt_01(i) = sum(off_wt_01(i,:),2);
end
on_wt_01 = on_wt_01';
for i =1:length(wt_act_01)
    b_dur_wt_01 (i) = mean(on_wt_01(on_wt_01(:,i)~=0)); % burst duration of each nucleus
end
num_burst_wt_01 = sum(on_wt_01~=0); % find all the nonzero values for each nucleus (# of bursts)
koff_wt_01 = 1./b_dur_wt_01; % koff
kon_wt_01 = 1./off_times_wt_01; % kon

clear id idx only_ones only_zeros p_ones p_zeros

%
for i=1:length(wt_act_02)
    smooth_wt_02(:,i) = smooth(wt_02(:,wt_act_02(i)),0.1,'loess');
    id = smooth_wt_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_wt_02(1:(size(wt_02,1)-idx+1),i) = smooth_wt_02(idx:end,i);
    slope_wt_02(idx:end,i) = diff(above_thr_wt_02(1:(size(wt_02,1)-idx+1),i))./0.35;
    tmp_wt_02(1:size(slope_wt_02,1),i) = slope_wt_02(:,i) > 0;
    for j=2:size(tmp_wt_02,1)-1
    if tmp_wt_02(j,i)~=tmp_wt_02(j-1,i) && tmp_wt_02(j+1,i)==tmp_wt_02(j-1,i)
        tmp_wt_02(j,i)=tmp_wt_02(j+1,i);
    else
        tmp_wt_02(j,i)=tmp_wt_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_wt_02(1:size(slope_wt_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_wt_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_wt_02(1:size(slope_wt_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_wt_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_wt_02(i) = sum(on_wt_02(i,:),2);
    off_times_wt_02(i) = sum(off_wt_02(i,:),2);
end
on_wt_02 = on_wt_02';
for i =1:length(wt_act_02)
    b_dur_wt_02 (i) = mean(on_wt_02(on_wt_02(:,i)~=0)); 
end
num_burst_wt_02 = sum(on_wt_02~=0);
koff_wt_02 = 1./b_dur_wt_02;
kon_wt_02 = 1./off_times_wt_02;

clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(wt_act_03)
    smooth_wt_03(:,i) = smooth(wt_03(:,wt_act_03(i)),0.1,'loess');
    id = smooth_wt_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_wt_03(1:(size(wt_03,1)-idx+1),i) = smooth_wt_03(idx:end,i);
    slope_wt_03(idx:end,i) = diff(above_thr_wt_03(1:(size(wt_03,1)-idx+1),i))./0.35;
    tmp_wt_03(1:size(slope_wt_03,1),i) = slope_wt_03(:,i) > 0;
    for j=2:size(tmp_wt_03,1)-1
    if tmp_wt_03(j,i)~=tmp_wt_03(j-1,i) && tmp_wt_03(j+1,i)==tmp_wt_03(j-1,i)
        tmp_wt_03(j,i)=tmp_wt_03(j+1,i);
    else
        tmp_wt_03(j,i)=tmp_wt_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_wt_03(1:size(slope_wt_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_wt_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_wt_03(1:size(slope_wt_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_wt_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_wt_03(i) = sum(on_wt_03(i,:),2);
    off_times_wt_03(i) = sum(off_wt_03(i,:),2);
end
on_wt_03 = on_wt_03';
for i =1:length(wt_act_03)
    b_dur_wt_03 (i) = mean(on_wt_03(on_wt_03(:,i)~=0)); 
end
num_burst_wt_03 = sum(on_wt_03~=0);
koff_wt_03 = 1./b_dur_wt_03;
kon_wt_03 = 1./off_times_wt_03;
clear id idx only_ones only_zeros p_ones p_zeros

%wtnew
for i=1:length(wtnew2_act_01)
    smooth_wtnew2_01(:,i) = smooth(wtnew2_01(:,wtnew2_act_01(i)),0.1,'loess');
    id = smooth_wtnew2_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_wtnew2_01(1:(size(wtnew2_01,1)-idx+1),i) = smooth_wtnew2_01(idx:end,i);
    slope_wtnew2_01(idx:end,i) = diff(above_thr_wtnew2_01(1:(size(wtnew2_01,1)-idx+1),i))./0.35;
    tmp_wtnew2_01(1:size(slope_wtnew2_01,1),i) = slope_wtnew2_01(:,i) > 0;
    for j=2:size(tmp_wtnew2_01,1)-1
    if tmp_wtnew2_01(j,i)~=tmp_wtnew2_01(j-1,i) && tmp_wtnew2_01(j+1,i)==tmp_wtnew2_01(j-1,i)
        tmp_wtnew2_01(j,i)=tmp_wtnew2_01(j+1,i);
    else
        tmp_wtnew2_01(j,i)=tmp_wtnew2_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_wtnew2_01(1:size(slope_wtnew2_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_wtnew2_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_wtnew2_01(1:size(slope_wtnew2_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_wtnew2_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros; 
    on_times_wtnew2_01(i) = sum(on_wtnew2_01(i,:),2);
    off_times_wtnew2_01(i) = sum(off_wtnew2_01(i,:),2);
end
on_wtnew2_01 = on_wtnew2_01';
for i =1:length(wtnew2_act_01)
    b_dur_wtnew2_01 (i) = mean(on_wtnew2_01(on_wtnew2_01(:,i)~=0)); 
end
num_burst_wtnew2_01 = sum(on_wtnew2_01~=0);
koff_wtnew2_01 = 1./b_dur_wtnew2_01;
kon_wtnew2_01 = 1./off_times_wtnew2_01;
clear id idx only_ones only_zeros p_ones p_zeros
% % 
for i=1:length(wtnew2_act_02)
    smooth_wtnew2_02(:,i) = smooth(wtnew2_02(:,wtnew2_act_02(i)),0.1,'loess');
    id = smooth_wtnew2_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_wtnew2_02(1:(size(wtnew2_02,1)-idx+1),i) = smooth_wtnew2_02(idx:end,i);
    slope_wtnew2_02(idx:end,i) = diff(above_thr_wtnew2_02(1:(size(wtnew2_02,1)-idx+1),i))./0.35;
    tmp_wtnew2_02(1:size(slope_wtnew2_02,1),i) = slope_wtnew2_02(:,i) > 0;
    for j=2:size(tmp_wtnew2_02,1)-1
    if tmp_wtnew2_02(j,i)~=tmp_wtnew2_02(j-1,i) && tmp_wtnew2_02(j+1,i)==tmp_wtnew2_02(j-1,i)
        tmp_wtnew2_02(j,i)=tmp_wtnew2_02(j+1,i);
    else
        tmp_wtnew2_02(j,i)=tmp_wtnew2_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_wtnew2_02(1:size(slope_wtnew2_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_wtnew2_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_wtnew2_02(1:size(slope_wtnew2_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_wtnew2_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_wtnew2_02(i) = sum(on_wtnew2_02(i,:),2);
    off_times_wtnew2_02(i) = sum(off_wtnew2_02(i,:),2);
end
on_wtnew2_02 = on_wtnew2_02';
for i =1:length(wtnew2_act_02)
    b_dur_wtnew2_02 (i) = mean(on_wtnew2_02(on_wtnew2_02(:,i)~=0)); 
end
num_burst_wtnew2_02 = sum(on_wtnew2_02~=0);
koff_wtnew2_02 = 1./b_dur_wtnew2_02;
kon_wtnew2_02 = 1./off_times_wtnew2_02;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(wtnew2_act_03)
    smooth_wtnew2_03(:,i) = smooth(wtnew2_03(:,wtnew2_act_03(i)),0.1,'loess');
    id = smooth_wtnew2_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_wtnew2_03(1:(size(wtnew2_03,1)-idx+1),i) = smooth_wtnew2_03(idx:end,i);
    slope_wtnew2_03(idx:end,i) = diff(above_thr_wtnew2_03(1:(size(wtnew2_03,1)-idx+1),i))./0.35;
    tmp_wtnew2_03(1:size(slope_wtnew2_03,1),i) = slope_wtnew2_03(:,i) > 0;
    for j=2:size(tmp_wtnew2_03,1)-1
    if tmp_wtnew2_03(j,i)~=tmp_wtnew2_03(j-1,i) && tmp_wtnew2_03(j+1,i)==tmp_wtnew2_03(j-1,i)
        tmp_wtnew2_03(j,i)=tmp_wtnew2_03(j+1,i);
    else
        tmp_wtnew2_03(j,i)=tmp_wtnew2_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_wtnew2_03(1:size(slope_wtnew2_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_wtnew2_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_wtnew2_03(1:size(slope_wtnew2_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_wtnew2_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_wtnew2_03(i) = sum(on_wtnew2_03(i,:),2);
    off_times_wtnew2_03(i) = sum(off_wtnew2_03(i,:),2);
end
on_wtnew2_03 = on_wtnew2_03';
for i =1:length(wtnew2_act_03)
    b_dur_wtnew2_03 (i) = mean(on_wtnew2_03(on_wtnew2_03(:,i)~=0)); 
end
num_burst_wtnew2_03 = sum(on_wtnew2_03~=0);
koff_wtnew2_03 = 1./b_dur_wtnew2_03;
kon_wtnew2_03 = 1./off_times_wtnew2_03;
clear id idx only_ones only_zeros p_ones p_zeros

% dl3
for i=1:length(dl3_act_01)
    smooth_dl3_01(:,i) = smooth(dl3_01(:,dl3_act_01(i)),0.1,'loess');
    id = smooth_dl3_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl3_01(1:(size(dl3_01,1)-idx+1),i) = smooth_dl3_01(idx:end,i);
    slope_dl3_01(idx:end,i) = diff(above_thr_dl3_01(1:(size(dl3_01,1)-idx+1),i))./0.35;
    tmp_dl3_01(1:size(slope_dl3_01,1),i) = slope_dl3_01(:,i) > 0;
    for j=2:size(tmp_dl3_01,1)-1
    if tmp_dl3_01(j,i)~=tmp_dl3_01(j-1,i) && tmp_dl3_01(j+1,i)==tmp_dl3_01(j-1,i)
        tmp_dl3_01(j,i)=tmp_dl3_01(j+1,i);
    else
        tmp_dl3_01(j,i)=tmp_dl3_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl3_01(1:size(slope_dl3_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl3_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl3_01(1:size(slope_dl3_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl3_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros; 
    on_times_dl3_01(i) = sum(on_dl3_01(i,:),2);
    off_times_dl3_01(i) = sum(off_dl3_01(i,:),2);
end
on_dl3_01 = on_dl3_01';
for i =1:length(dl3_act_01)
    b_dur_dl3_01 (i) = mean(on_dl3_01(on_dl3_01(:,i)~=0)); 
end
num_burst_dl3_01 = sum(on_dl3_01~=0);
koff_dl3_01 = 1./b_dur_dl3_01;
kon_dl3_01 = 1./off_times_dl3_01;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(dl3_act_02)
    smooth_dl3_02(:,i) = smooth(dl3_02(:,dl3_act_02(i)),0.1,'loess');
    id = smooth_dl3_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl3_02(1:(size(dl3_02,1)-idx+1),i) = smooth_dl3_02(idx:end,i);
    slope_dl3_02(idx:end,i) = diff(above_thr_dl3_02(1:(size(dl3_02,1)-idx+1),i))./0.35;
    tmp_dl3_02(1:size(slope_dl3_02,1),i) = slope_dl3_02(:,i) > 0;
    for j=2:size(tmp_dl3_02,1)-1
    if tmp_dl3_02(j,i)~=tmp_dl3_02(j-1,i) && tmp_dl3_02(j+1,i)==tmp_dl3_02(j-1,i)
        tmp_dl3_02(j,i)=tmp_dl3_02(j+1,i);
    else
        tmp_dl3_02(j,i)=tmp_dl3_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl3_02(1:size(slope_dl3_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl3_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl3_02(1:size(slope_dl3_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl3_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl3_02(i) = sum(on_dl3_02(i,:),2);
    off_times_dl3_02(i) = sum(off_dl3_02(i,:),2);
end
on_dl3_02 = on_dl3_02';
for i =1:length(dl3_act_02)
    b_dur_dl3_02 (i) = mean(on_dl3_02(on_dl3_02(:,i)~=0)); 
end
num_burst_dl3_02 = sum(on_dl3_02~=0);
koff_dl3_02 = 1./b_dur_dl3_02;
kon_dl3_02 = 1./off_times_dl3_02;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(dl3_act_03)
    smooth_dl3_03(:,i) = smooth(dl3_03(:,dl3_act_03(i)),0.1,'loess');
    id = smooth_dl3_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl3_03(1:(size(dl3_03,1)-idx+1),i) = smooth_dl3_03(idx:end,i);
    slope_dl3_03(idx:end,i) = diff(above_thr_dl3_03(1:(size(dl3_03,1)-idx+1),i))./0.35;
    tmp_dl3_03(1:size(slope_dl3_03,1),i) = slope_dl3_03(:,i) > 0;
    for j=2:size(tmp_dl3_03,1)-1
    if tmp_dl3_03(j,i)~=tmp_dl3_03(j-1,i) && tmp_dl3_03(j+1,i)==tmp_dl3_03(j-1,i)
        tmp_dl3_03(j,i)=tmp_dl3_03(j+1,i);
    else
        tmp_dl3_03(j,i)=tmp_dl3_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl3_03(1:size(slope_dl3_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl3_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl3_03(1:size(slope_dl3_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl3_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl3_03(i) = sum(on_dl3_03(i,:),2);
    off_times_dl3_03(i) = sum(off_dl3_03(i,:),2);
end
on_dl3_03 = on_dl3_03';
for i =1:length(dl3_act_03)
    b_dur_dl3_03 (i) = mean(on_dl3_03(on_dl3_03(:,i)~=0)); 
end
num_burst_dl3_03 = sum(on_dl3_03~=0);
koff_dl3_03 = 1./b_dur_dl3_03;
kon_dl3_03 = 1./off_times_dl3_03;
clear id idx only_ones only_zeros p_ones p_zeros
% 
% twi2
for i=1:length(twi2_act_01)
    smooth_twi2_01(:,i) = smooth(twi2_01(:,twi2_act_01(i)),0.1,'loess');
    id = smooth_twi2_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_twi2_01(1:(size(twi2_01,1)-idx+1),i) = smooth_twi2_01(idx:end,i);
    slope_twi2_01(idx:end,i) = diff(above_thr_twi2_01(1:(size(twi2_01,1)-idx+1),i))./0.35;
    tmp_twi2_01(1:size(slope_twi2_01,1),i) = slope_twi2_01(:,i) > 0;
    for j=2:size(tmp_twi2_01,1)-1
    if tmp_twi2_01(j,i)~=tmp_twi2_01(j-1,i) && tmp_twi2_01(j+1,i)==tmp_twi2_01(j-1,i)
        tmp_twi2_01(j,i)=tmp_twi2_01(j+1,i);
    else
        tmp_twi2_01(j,i)=tmp_twi2_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_twi2_01(1:size(slope_twi2_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_twi2_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_twi2_01(1:size(slope_twi2_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_twi2_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros; 
    on_times_twi2_01(i) = sum(on_twi2_01(i,:),2);
    off_times_twi2_01(i) = sum(off_twi2_01(i,:),2);
end
on_twi2_01 = on_twi2_01';
for i =1:length(twi2_act_01)
    b_dur_twi2_01 (i) = mean(on_twi2_01(on_twi2_01(:,i)~=0)); 
end
num_burst_twi2_01 = sum(on_twi2_01~=0);
koff_twi2_01 = 1./b_dur_twi2_01;
kon_twi2_01 = 1./off_times_twi2_01;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(twi2_act_02)
    smooth_twi2_02(:,i) = smooth(twi2_02(:,twi2_act_02(i)),0.1,'loess');
    id = smooth_twi2_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_twi2_02(1:(size(twi2_02,1)-idx+1),i) = smooth_twi2_02(idx:end,i);
    slope_twi2_02(idx:end,i) = diff(above_thr_twi2_02(1:(size(twi2_02,1)-idx+1),i))./0.35;
    tmp_twi2_02(1:size(slope_twi2_02,1),i) = slope_twi2_02(:,i) > 0;
    for j=2:size(tmp_twi2_02,1)-1
    if tmp_twi2_02(j,i)~=tmp_twi2_02(j-1,i) && tmp_twi2_02(j+1,i)==tmp_twi2_02(j-1,i)
        tmp_twi2_02(j,i)=tmp_twi2_02(j+1,i);
    else
        tmp_twi2_02(j,i)=tmp_twi2_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_twi2_02(1:size(slope_twi2_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_twi2_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_twi2_02(1:size(slope_twi2_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_twi2_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_twi2_02(i) = sum(on_twi2_02(i,:),2);
    off_times_twi2_02(i) = sum(off_twi2_02(i,:),2);
end
on_twi2_02 = on_twi2_02';
for i =1:length(twi2_act_02)
    b_dur_twi2_02 (i) = mean(on_twi2_02(on_twi2_02(:,i)~=0)); 
end
num_burst_twi2_02 = sum(on_twi2_02~=0);
koff_twi2_02 = 1./b_dur_twi2_02;
kon_twi2_02 = 1./off_times_twi2_02;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(twi2_act_03)
    smooth_twi2_03(:,i) = smooth(twi2_03(:,twi2_act_03(i)),0.1,'loess');
    id = smooth_twi2_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_twi2_03(1:(size(twi2_03,1)-idx+1),i) = smooth_twi2_03(idx:end,i);
    slope_twi2_03(idx:end,i) = diff(above_thr_twi2_03(1:(size(twi2_03,1)-idx+1),i))./0.35;
    tmp_twi2_03(1:size(slope_twi2_03,1),i) = slope_twi2_03(:,i) > 0;
    for j=2:size(tmp_twi2_03,1)-1
    if tmp_twi2_03(j,i)~=tmp_twi2_03(j-1,i) && tmp_twi2_03(j+1,i)==tmp_twi2_03(j-1,i)
        tmp_twi2_03(j,i)=tmp_twi2_03(j+1,i);
    else
        tmp_twi2_03(j,i)=tmp_twi2_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_twi2_03(1:size(slope_twi2_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_twi2_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_twi2_03(1:size(slope_twi2_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_twi2_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros; 
    on_times_twi2_03(i) = sum(on_twi2_03(i,:),2);
    off_times_twi2_03(i) = sum(off_twi2_03(i,:),2);
end
on_twi2_03 = on_twi2_03';
for i =1:length(twi2_act_03)
    b_dur_twi2_03 (i) = mean(on_twi2_03(on_twi2_03(:,i)~=0)); 
end
num_burst_twi2_03 = sum(on_twi2_03~=0);
koff_twi2_03 = 1./b_dur_twi2_03;
kon_twi2_03 = 1./off_times_twi2_03;
clear id idx only_ones only_zeros p_ones p_zeros

% 
% dl3twi2
for i=1:length(dl3twi2_act_01)
    smooth_dl3twi2_01(:,i) = smooth(dl3twi2_01(:,dl3twi2_act_01(i)),0.1,'loess');
    id = smooth_dl3twi2_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl3twi2_01(1:(size(dl3twi2_01,1)-idx+1),i) = smooth_dl3twi2_01(idx:end,i);
    slope_dl3twi2_01(idx:end,i) = diff(above_thr_dl3twi2_01(1:(size(dl3twi2_01,1)-idx+1),i))./0.35;
    tmp_dl3twi2_01(1:size(slope_dl3twi2_01,1),i) = slope_dl3twi2_01(:,i) > 0;
    for j=2:size(tmp_dl3twi2_01,1)-1
    if tmp_dl3twi2_01(j,i)~=tmp_dl3twi2_01(j-1,i) && tmp_dl3twi2_01(j+1,i)==tmp_dl3twi2_01(j-1,i)
        tmp_dl3twi2_01(j,i)=tmp_dl3twi2_01(j+1,i);
    else
        tmp_dl3twi2_01(j,i)=tmp_dl3twi2_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl3twi2_01(1:size(slope_dl3twi2_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl3twi2_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl3twi2_01(1:size(slope_dl3twi2_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl3twi2_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl3twi2_01(i) = sum(on_dl3twi2_01(i,:),2);
    off_times_dl3twi2_01(i) = sum(off_dl3twi2_01(i,:),2);
end
on_dl3twi2_01 = on_dl3twi2_01';
for i =1:length(dl3twi2_act_01)
    b_dur_dl3twi2_01 (i) = mean(on_dl3twi2_01(on_dl3twi2_01(:,i)~=0)); 
end
num_burst_dl3twi2_01 = sum(on_dl3twi2_01~=0);
koff_dl3twi2_01 = 1./b_dur_dl3twi2_01;
kon_dl3twi2_01 = 1./off_times_dl3twi2_01;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(dl3twi2_act_02)
    smooth_dl3twi2_02(:,i) = smooth(dl3twi2_02(:,dl3twi2_act_02(i)),0.1,'loess');
    id = smooth_dl3twi2_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl3twi2_02(1:(size(dl3twi2_02,1)-idx+1),i) = smooth_dl3twi2_02(idx:end,i);
    slope_dl3twi2_02(idx:end,i) = diff(above_thr_dl3twi2_02(1:(size(dl3twi2_02,1)-idx+1),i))./0.35;
    tmp_dl3twi2_02(1:size(slope_dl3twi2_02,1),i) = slope_dl3twi2_02(:,i) > 0;
    for j=2:size(tmp_dl3twi2_02,1)-1
    if tmp_dl3twi2_02(j,i)~=tmp_dl3twi2_02(j-1,i) && tmp_dl3twi2_02(j+1,i)==tmp_dl3twi2_02(j-1,i)
        tmp_dl3twi2_02(j,i)=tmp_dl3twi2_02(j+1,i);
    else
        tmp_dl3twi2_02(j,i)=tmp_dl3twi2_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl3twi2_02(1:size(slope_dl3twi2_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl3twi2_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl3twi2_02(1:size(slope_dl3twi2_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl3twi2_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl3twi2_02(i) = sum(on_dl3twi2_02(i,:),2);
    off_times_dl3twi2_02(i) = sum(off_dl3twi2_02(i,:),2);
end
on_dl3twi2_02 = on_dl3twi2_02';
for i =1:length(dl3twi2_act_02)
    b_dur_dl3twi2_02 (i) = mean(on_dl3twi2_02(on_dl3twi2_02(:,i)~=0)); 
end
num_burst_dl3twi2_02 = sum(on_dl3twi2_02~=0);
koff_dl3twi2_02 = 1./b_dur_dl3twi2_02;
kon_dl3twi2_02 = 1./off_times_dl3twi2_02;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(dl3twi2_act_03)
    smooth_dl3twi2_03(:,i) = smooth(dl3twi2_03(:,dl3twi2_act_03(i)),0.1,'loess');
    id = smooth_dl3twi2_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl3twi2_03(1:(size(dl3twi2_03,1)-idx+1),i) = smooth_dl3twi2_03(idx:end,i);
    slope_dl3twi2_03(idx:end,i) = diff(above_thr_dl3twi2_03(1:(size(dl3twi2_03,1)-idx+1),i))./0.35;
    tmp_dl3twi2_03(1:size(slope_dl3twi2_03,1),i) = slope_dl3twi2_03(:,i) > 0;
    for j=2:size(tmp_dl3twi2_03,1)-1
    if tmp_dl3twi2_03(j,i)~=tmp_dl3twi2_03(j-1,i) && tmp_dl3twi2_03(j+1,i)==tmp_dl3twi2_03(j-1,i)
        tmp_dl3twi2_03(j,i)=tmp_dl3twi2_03(j+1,i);
    else
        tmp_dl3twi2_03(j,i)=tmp_dl3twi2_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl3twi2_03(1:size(slope_dl3twi2_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl3twi2_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl3twi2_03(1:size(slope_dl3twi2_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl3twi2_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl3twi2_03(i) = sum(on_dl3twi2_03(i,:),2);
    off_times_dl3twi2_03(i) = sum(off_dl3twi2_03(i,:),2);
end
on_dl3twi2_03 = on_dl3twi2_03';
for i =1:length(dl3twi2_act_03)
    b_dur_dl3twi2_03 (i) = mean(on_dl3twi2_03(on_dl3twi2_03(:,i)~=0)); 
end
num_burst_dl3twi2_03 = sum(on_dl3twi2_03~=0);
koff_dl3twi2_03 = 1./b_dur_dl3twi2_03;
kon_dl3twi2_03 = 1./off_times_dl3twi2_03;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(dl3twi2_act_04)
    smooth_dl3twi2_04(:,i) = smooth(dl3twi2_04(:,dl3twi2_act_04(i)),0.1,'loess');
    id = smooth_dl3twi2_04(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl3twi2_04(1:(size(dl3twi2_04,1)-idx+1),i) = smooth_dl3twi2_04(idx:end,i);
    slope_dl3twi2_04(idx:end,i) = diff(above_thr_dl3twi2_04(1:(size(dl3twi2_04,1)-idx+1),i))./0.35;
    tmp_dl3twi2_04(1:size(slope_dl3twi2_04,1),i) = slope_dl3twi2_04(:,i) > 0;
    for j=2:size(tmp_dl3twi2_04,1)-1
    if tmp_dl3twi2_04(j,i)~=tmp_dl3twi2_04(j-1,i) && tmp_dl3twi2_04(j+1,i)==tmp_dl3twi2_04(j-1,i)
        tmp_dl3twi2_04(j,i)=tmp_dl3twi2_04(j+1,i);
    else
        tmp_dl3twi2_04(j,i)=tmp_dl3twi2_04(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl3twi2_04(1:size(slope_dl3twi2_04,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl3twi2_04(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl3twi2_04(1:size(slope_dl3twi2_04,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl3twi2_04(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl3twi2_04(i) = sum(on_dl3twi2_04(i,:),2);
    off_times_dl3twi2_04(i) = sum(off_dl3twi2_04(i,:),2);
end
on_dl3twi2_04 = on_dl3twi2_04';
for i =1:length(dl3twi2_act_04)
    b_dur_dl3twi2_04 (i) = mean(on_dl3twi2_04(on_dl3twi2_04(:,i)~=0)); 
end
num_burst_dl3twi2_04 = sum(on_dl3twi2_04~=0);
koff_dl3twi2_04 = 1./b_dur_dl3twi2_04;
kon_dl3twi2_04 = 1./off_times_dl3twi2_04;
clear id idx only_ones only_zeros p_ones p_zeros

%dl1
for i=1:length(dl1_act_01)
    smooth_dl1_01(:,i) = smooth(dl1_01(:,dl1_act_01(i)),0.1,'loess');
    id = smooth_dl1_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl1_01(1:(size(dl1_01,1)-idx+1),i) = smooth_dl1_01(idx:end,i);
    slope_dl1_01(idx:end,i) = diff(above_thr_dl1_01(1:(size(dl1_01,1)-idx+1),i))./0.35;
    tmp_dl1_01(1:size(slope_dl1_01,1),i) = slope_dl1_01(:,i) > 0;
    for j=2:size(tmp_dl1_01,1)-1
    if tmp_dl1_01(j,i)~=tmp_dl1_01(j-1,i) && tmp_dl1_01(j+1,i)==tmp_dl1_01(j-1,i)
        tmp_dl1_01(j,i)=tmp_dl1_01(j+1,i);
    else
        tmp_dl1_01(j,i)=tmp_dl1_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl1_01(1:size(slope_dl1_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl1_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl1_01(1:size(slope_dl1_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl1_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl1_01(i) = sum(on_dl1_01(i,:),2);
    off_times_dl1_01(i) = sum(off_dl1_01(i,:),2);
end
on_dl1_01 = on_dl1_01';
for i =1:length(dl1_act_01)
    b_dur_dl1_01 (i) = mean(on_dl1_01(on_dl1_01(:,i)~=0)); 
end
num_burst_dl1_01 = sum(on_dl1_01~=0);
koff_dl1_01 = 1./b_dur_dl1_01;
kon_dl1_01 = 1./off_times_dl1_01;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(dl1_act_02)
    smooth_dl1_02(:,i) = smooth(dl1_02(:,dl1_act_02(i)),0.1,'loess');
    id = smooth_dl1_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl1_02(1:(size(dl1_02,1)-idx+1),i) = smooth_dl1_02(idx:end,i);
    slope_dl1_02(idx:end,i) = diff(above_thr_dl1_02(1:(size(dl1_02,1)-idx+1),i))./0.35;
    tmp_dl1_02(1:size(slope_dl1_02,1),i) = slope_dl1_02(:,i) > 0;
    for j=2:size(tmp_dl1_02,1)-1
    if tmp_dl1_02(j,i)~=tmp_dl1_02(j-1,i) && tmp_dl1_02(j+1,i)==tmp_dl1_02(j-1,i)
        tmp_dl1_02(j,i)=tmp_dl1_02(j+1,i);
    else
        tmp_dl1_02(j,i)=tmp_dl1_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl1_02(1:size(slope_dl1_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl1_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl1_02(1:size(slope_dl1_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl1_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl1_02(i) = sum(on_dl1_02(i,:),2);
    off_times_dl1_02(i) = sum(off_dl1_02(i,:),2);
end
on_dl1_02 = on_dl1_02';
for i =1:length(dl1_act_02)
    b_dur_dl1_02 (i) = mean(on_dl1_02(on_dl1_02(:,i)~=0)); 
end
num_burst_dl1_02 = sum(on_dl1_02~=0);
koff_dl1_02 = 1./b_dur_dl1_02;
kon_dl1_02 = 1./off_times_dl1_02;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(dl1_act_03)
    smooth_dl1_03(:,i) = smooth(dl1_03(:,dl1_act_03(i)),0.1,'loess');
    id = smooth_dl1_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl1_03(1:(size(dl1_03,1)-idx+1),i) = smooth_dl1_03(idx:end,i);
    slope_dl1_03(idx:end,i) = diff(above_thr_dl1_03(1:(size(dl1_03,1)-idx+1),i))./0.35;
    tmp_dl1_03(1:size(slope_dl1_03,1),i) = slope_dl1_03(:,i) > 0;
    for j=2:size(tmp_dl1_03,1)-1
    if tmp_dl1_03(j,i)~=tmp_dl1_03(j-1,i) && tmp_dl1_03(j+1,i)==tmp_dl1_03(j-1,i)
        tmp_dl1_03(j,i)=tmp_dl1_03(j+1,i);
    else
        tmp_dl1_03(j,i)=tmp_dl1_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl1_03(1:size(slope_dl1_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl1_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl1_03(1:size(slope_dl1_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl1_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl1_03(i) = sum(on_dl1_03(i,:),2);
    off_times_dl1_03(i) = sum(off_dl1_03(i,:),2);
end
on_dl1_03 = on_dl1_03';
for i =1:length(dl1_act_03)
    b_dur_dl1_03 (i) = mean(on_dl1_03(on_dl1_03(:,i)~=0)); 
end
num_burst_dl1_03 = sum(on_dl1_03~=0);
koff_dl1_03 = 1./b_dur_dl1_03;
kon_dl1_03 = 1./off_times_dl1_03;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(dl1_act_04)
    smooth_dl1_04(:,i) = smooth(dl1_04(:,dl1_act_04(i)),0.1,'loess');
    id = smooth_dl1_04(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl1_04(1:(size(dl1_04,1)-idx+1),i) = smooth_dl1_04(idx:end,i);
    slope_dl1_04(idx:end,i) = diff(above_thr_dl1_04(1:(size(dl1_04,1)-idx+1),i))./0.35;
    tmp_dl1_04(1:size(slope_dl1_04,1),i) = slope_dl1_04(:,i) > 0;
    for j=2:size(tmp_dl1_04,1)-1
    if tmp_dl1_04(j,i)~=tmp_dl1_04(j-1,i) && tmp_dl1_04(j+1,i)==tmp_dl1_04(j-1,i)
        tmp_dl1_04(j,i)=tmp_dl1_04(j+1,i);
    else
        tmp_dl1_04(j,i)=tmp_dl1_04(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl1_04(1:size(slope_dl1_04,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl1_04(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl1_04(1:size(slope_dl1_04,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl1_04(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl1_04(i) = sum(on_dl1_04(i,:),2);
    off_times_dl1_04(i) = sum(off_dl1_04(i,:),2);
end
on_dl1_04 = on_dl1_04';
for i =1:length(dl1_act_04)
    b_dur_dl1_04 (i) = mean(on_dl1_04(on_dl1_04(:,i)~=0)); 
end
num_burst_dl1_04 = sum(on_dl1_04~=0);
koff_dl1_04 = 1./b_dur_dl1_04;
kon_dl1_04 = 1./off_times_dl1_04;
clear id idx only_ones only_zeros p_ones p_zeros

% dl2
for i=1:length(dl2_act_01)
    smooth_dl2_01(:,i) = smooth(dl2_01(:,dl2_act_01(i)),0.1,'loess');
    id = smooth_dl2_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl2_01(1:(size(dl2_01,1)-idx+1),i) = smooth_dl2_01(idx:end,i);
    slope_dl2_01(idx:end,i) = diff(above_thr_dl2_01(1:(size(dl2_01,1)-idx+1),i))./0.35;
    tmp_dl2_01(1:size(slope_dl2_01,1),i) = slope_dl2_01(:,i) > 0;
    for j=2:size(tmp_dl2_01,1)-1
    if tmp_dl2_01(j,i)~=tmp_dl2_01(j-1,i) && tmp_dl2_01(j+1,i)==tmp_dl2_01(j-1,i)
        tmp_dl2_01(j,i)=tmp_dl2_01(j+1,i);
    else
        tmp_dl2_01(j,i)=tmp_dl2_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl2_01(1:size(slope_dl2_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl2_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl2_01(1:size(slope_dl2_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl2_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl2_01(i) = sum(on_dl2_01(i,:),2);
    off_times_dl2_01(i) = sum(off_dl2_01(i,:),2);
end
on_dl2_01 = on_dl2_01';
for i =1:length(dl2_act_01)
    b_dur_dl2_01 (i) = mean(on_dl2_01(on_dl2_01(:,i)~=0)); 
end
num_burst_dl2_01 = sum(on_dl2_01~=0);
koff_dl2_01 = 1./b_dur_dl2_01;
kon_dl2_01 = 1./off_times_dl2_01;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(dl2_act_02)
    smooth_dl2_02(:,i) = smooth(dl2_02(:,dl2_act_02(i)),0.1,'loess');
    id = smooth_dl2_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl2_02(1:(size(dl2_02,1)-idx+1),i) = smooth_dl2_02(idx:end,i);
    slope_dl2_02(idx:end,i) = diff(above_thr_dl2_02(1:(size(dl2_02,1)-idx+1),i))./0.35;
    tmp_dl2_02(1:size(slope_dl2_02,1),i) = slope_dl2_02(:,i) > 0;
    for j=2:size(tmp_dl2_02,1)-1
    if tmp_dl2_02(j,i)~=tmp_dl2_02(j-1,i) && tmp_dl2_02(j+1,i)==tmp_dl2_02(j-1,i)
        tmp_dl2_02(j,i)=tmp_dl2_02(j+1,i);
    else
        tmp_dl2_02(j,i)=tmp_dl2_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl2_02(1:size(slope_dl2_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl2_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl2_02(1:size(slope_dl2_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl2_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl2_02(i) = sum(on_dl2_02(i,:),2);
    off_times_dl2_02(i) = sum(off_dl2_02(i,:),2);
end
on_dl2_02 = on_dl2_02';
for i =1:length(dl2_act_02)
    b_dur_dl2_02 (i) = mean(on_dl2_02(on_dl2_02(:,i)~=0)); 
end
num_burst_dl2_02 = sum(on_dl2_02~=0);
koff_dl2_02 = 1./b_dur_dl2_02;
kon_dl2_02 = 1./off_times_dl2_02;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(dl2_act_03)
    smooth_dl2_03(:,i) = smooth(dl2_03(:,dl2_act_03(i)),0.1,'loess');
    id = smooth_dl2_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl2_03(1:(size(dl2_03,1)-idx+1),i) = smooth_dl2_03(idx:end,i);
    slope_dl2_03(idx:end,i) = diff(above_thr_dl2_03(1:(size(dl2_03,1)-idx+1),i))./0.35;
    tmp_dl2_03(1:size(slope_dl2_03,1),i) = slope_dl2_03(:,i) > 0;
    for j=2:size(tmp_dl2_03,1)-1
    if tmp_dl2_03(j,i)~=tmp_dl2_03(j-1,i) && tmp_dl2_03(j+1,i)==tmp_dl2_03(j-1,i)
        tmp_dl2_03(j,i)=tmp_dl2_03(j+1,i);
    else
        tmp_dl2_03(j,i)=tmp_dl2_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl2_03(1:size(slope_dl2_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl2_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl2_03(1:size(slope_dl2_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl2_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl2_03(i) = sum(on_dl2_03(i,:),2);
    off_times_dl2_03(i) = sum(off_dl2_03(i,:),2);
end
on_dl2_03 = on_dl2_03';
for i =1:length(dl2_act_03)
    b_dur_dl2_03 (i) = mean(on_dl2_03(on_dl2_03(:,i)~=0)); 
end
num_burst_dl2_03 = sum(on_dl2_03~=0);
koff_dl2_03 = 1./b_dur_dl2_03;
kon_dl2_03 = 1./off_times_dl2_03;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(dl2_act_04)
    smooth_dl2_04(:,i) = smooth(dl2_04(:,dl2_act_04(i)),0.1,'loess');
    id = smooth_dl2_04(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl2_04(1:(size(dl2_04,1)-idx+1),i) = smooth_dl2_04(idx:end,i);
    slope_dl2_04(idx:end,i) = diff(above_thr_dl2_04(1:(size(dl2_04,1)-idx+1),i))./0.35;
    tmp_dl2_04(1:size(slope_dl2_04,1),i) = slope_dl2_04(:,i) > 0;
    for j=2:size(tmp_dl2_04,1)-1
    if tmp_dl2_04(j,i)~=tmp_dl2_04(j-1,i) && tmp_dl2_04(j+1,i)==tmp_dl2_04(j-1,i)
        tmp_dl2_04(j,i)=tmp_dl2_04(j+1,i);
    else
        tmp_dl2_04(j,i)=tmp_dl2_04(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl2_04(1:size(slope_dl2_04,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl2_04(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl2_04(1:size(slope_dl2_04,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl2_04(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl2_04(i) = sum(on_dl2_04(i,:),2);
    off_times_dl2_04(i) = sum(off_dl2_04(i,:),2);
end
on_dl2_04 = on_dl2_04';
for i =1:length(dl2_act_04)
    b_dur_dl2_04 (i) = mean(on_dl2_04(on_dl2_04(:,i)~=0)); 
end
num_burst_dl2_04 = sum(on_dl2_04~=0);
koff_dl2_04 = 1./b_dur_dl2_04;
kon_dl2_04 = 1./off_times_dl2_04;
clear id idx only_ones only_zeros p_ones p_zeros

% dl1/2
for i=1:length(dl12_act_01)
    smooth_dl12_01(:,i) = smooth(dl12_01(:,dl12_act_01(i)),0.1,'loess');
    id = smooth_dl12_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl12_01(1:(size(dl12_01,1)-idx+1),i) = smooth_dl12_01(idx:end,i);
    slope_dl12_01(idx:end,i) = diff(above_thr_dl12_01(1:(size(dl12_01,1)-idx+1),i))./0.35;
    tmp_dl12_01(1:size(slope_dl12_01,1),i) = slope_dl12_01(:,i) > 0;
    for j=2:size(tmp_dl12_01,1)-1
    if tmp_dl12_01(j,i)~=tmp_dl12_01(j-1,i) && tmp_dl12_01(j+1,i)==tmp_dl12_01(j-1,i)
        tmp_dl12_01(j,i)=tmp_dl12_01(j+1,i);
    else
        tmp_dl12_01(j,i)=tmp_dl12_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl12_01(1:size(slope_dl12_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl12_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl12_01(1:size(slope_dl12_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl12_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros; 
    on_times_dl12_01(i) = sum(on_dl12_01(i,:),2);
    off_times_dl12_01(i) = sum(off_dl12_01(i,:),2);
end
on_dl12_01 = on_dl12_01';
for i =1:length(dl12_act_01)
    b_dur_dl12_01 (i) = mean(on_dl12_01(on_dl12_01(:,i)~=0)); 
end
num_burst_dl12_01 = sum(on_dl12_01~=0);
koff_dl12_01 = 1./b_dur_dl12_01;
kon_dl12_01 = 1./off_times_dl12_01;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(dl12_act_02)
    smooth_dl12_02(:,i) = smooth(dl12_02(:,dl12_act_02(i)),0.1,'loess');
    id = smooth_dl12_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl12_02(1:(size(dl12_02,1)-idx+1),i) = smooth_dl12_02(idx:end,i);
    slope_dl12_02(idx:end,i) = diff(above_thr_dl12_02(1:(size(dl12_02,1)-idx+1),i))./0.35;
    tmp_dl12_02(1:size(slope_dl12_02,1),i) = slope_dl12_02(:,i) > 0;
    for j=2:size(tmp_dl12_02,1)-1
    if tmp_dl12_02(j,i)~=tmp_dl12_02(j-1,i) && tmp_dl12_02(j+1,i)==tmp_dl12_02(j-1,i)
        tmp_dl12_02(j,i)=tmp_dl12_02(j+1,i);
    else
        tmp_dl12_02(j,i)=tmp_dl12_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl12_02(1:size(slope_dl12_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl12_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl12_02(1:size(slope_dl12_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl12_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl12_02(i) = sum(on_dl12_02(i,:),2);
    off_times_dl12_02(i) = sum(off_dl12_02(i,:),2);
end
on_dl12_02 = on_dl12_02';
for i =1:length(dl12_act_02)
    b_dur_dl12_02 (i) = mean(on_dl12_02(on_dl12_02(:,i)~=0)); 
end
num_burst_dl12_02 = sum(on_dl12_02~=0);
koff_dl12_02 = 1./b_dur_dl12_02;
kon_dl12_02 = 1./off_times_dl12_02;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(dl12_act_03)
    smooth_dl12_03(:,i) = smooth(dl12_03(:,dl12_act_03(i)),0.1,'loess');
    id = smooth_dl12_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_dl12_03(1:(size(dl12_03,1)-idx+1),i) = smooth_dl12_03(idx:end,i);
    slope_dl12_03(idx:end,i) = diff(above_thr_dl12_03(1:(size(dl12_03,1)-idx+1),i))./0.35;
    tmp_dl12_03(1:size(slope_dl12_03,1),i) = slope_dl12_03(:,i) > 0;
    for j=2:size(tmp_dl12_03,1)-1
    if tmp_dl12_03(j,i)~=tmp_dl12_03(j-1,i) && tmp_dl12_03(j+1,i)==tmp_dl12_03(j-1,i)
        tmp_dl12_03(j,i)=tmp_dl12_03(j+1,i);
    else
        tmp_dl12_03(j,i)=tmp_dl12_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_dl12_03(1:size(slope_dl12_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_dl12_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_dl12_03(1:size(slope_dl12_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_dl12_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_dl12_03(i) = sum(on_dl12_03(i,:),2);
    off_times_dl12_03(i) = sum(off_dl12_03(i,:),2);
end
on_dl12_03 = on_dl12_03';
for i =1:length(dl12_act_03)
    b_dur_dl12_03 (i) = mean(on_dl12_03(on_dl12_03(:,i)~=0)); 
end
num_burst_dl12_03 = sum(on_dl12_03~=0);
koff_dl12_03 = 1./b_dur_dl12_03;
kon_dl12_03 = 1./off_times_dl12_03;
clear id idx only_ones only_zeros p_ones p_zeros

%zld opt
for i=1:length(zldopt_act_01)
    smooth_zldopt_01(:,i) = smooth(zldopt_01(:,zldopt_act_01(i)),0.1,'loess');
    id = smooth_zldopt_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_zldopt_01(1:(size(zldopt_01,1)-idx+1),i) = smooth_zldopt_01(idx:end,i);
    slope_zldopt_01(idx:end,i) = diff(above_thr_zldopt_01(1:(size(zldopt_01,1)-idx+1),i))./0.35;
    tmp_zldopt_01(1:size(slope_zldopt_01,1),i) = slope_zldopt_01(:,i) > 0;
    for j=2:size(tmp_zldopt_01,1)-1
    if tmp_zldopt_01(j,i)~=tmp_zldopt_01(j-1,i) && tmp_zldopt_01(j+1,i)==tmp_zldopt_01(j-1,i)
        tmp_zldopt_01(j,i)=tmp_zldopt_01(j+1,i);
    else
        tmp_zldopt_01(j,i)=tmp_zldopt_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_zldopt_01(1:size(slope_zldopt_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_zldopt_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_zldopt_01(1:size(slope_zldopt_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_zldopt_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros; 
    on_times_zldopt_01(i) = sum(on_zldopt_01(i,:),2);
    off_times_zldopt_01(i) = sum(off_zldopt_01(i,:),2);
end
on_zldopt_01 = on_zldopt_01';
for i =1:length(zldopt_act_01)
    b_dur_zldopt_01 (i) = mean(on_zldopt_01(on_zldopt_01(:,i)~=0)); 
end
num_burst_zldopt_01 = sum(on_zldopt_01~=0);
koff_zldopt_01 = 1./b_dur_zldopt_01;
kon_zldopt_01 = 1./off_times_zldopt_01;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(zldopt_act_02)
    smooth_zldopt_02(:,i) = smooth(zldopt_02(:,zldopt_act_02(i)),0.1,'loess');
    id = smooth_zldopt_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_zldopt_02(1:(size(zldopt_02,1)-idx+1),i) = smooth_zldopt_02(idx:end,i);
    slope_zldopt_02(idx:end,i) = diff(above_thr_zldopt_02(1:(size(zldopt_02,1)-idx+1),i))./0.35;
    tmp_zldopt_02(1:size(slope_zldopt_02,1),i) = slope_zldopt_02(:,i) > 0;
    for j=2:size(tmp_zldopt_02,1)-1
    if tmp_zldopt_02(j,i)~=tmp_zldopt_02(j-1,i) && tmp_zldopt_02(j+1,i)==tmp_zldopt_02(j-1,i)
        tmp_zldopt_02(j,i)=tmp_zldopt_02(j+1,i);
    else
        tmp_zldopt_02(j,i)=tmp_zldopt_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_zldopt_02(1:size(slope_zldopt_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_zldopt_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_zldopt_02(1:size(slope_zldopt_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_zldopt_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_zldopt_02(i) = sum(on_zldopt_02(i,:),2);
    off_times_zldopt_02(i) = sum(off_zldopt_02(i,:),2);
end
on_zldopt_02 = on_zldopt_02';
for i =1:length(zldopt_act_02)
    b_dur_zldopt_02 (i) = mean(on_zldopt_02(on_zldopt_02(:,i)~=0)); 
end
num_burst_zldopt_02 = sum(on_zldopt_02~=0);
koff_zldopt_02 = 1./b_dur_zldopt_02;
kon_zldopt_02 = 1./off_times_zldopt_02;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(zldopt_act_03)
    smooth_zldopt_03(:,i) = smooth(zldopt_03(:,zldopt_act_03(i)),0.1,'loess');
    id = smooth_zldopt_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_zldopt_03(1:(size(zldopt_03,1)-idx+1),i) = smooth_zldopt_03(idx:end,i);
    slope_zldopt_03(idx:end,i) = diff(above_thr_zldopt_03(1:(size(zldopt_03,1)-idx+1),i))./0.35;
    tmp_zldopt_03(1:size(slope_zldopt_03,1),i) = slope_zldopt_03(:,i) > 0;
    for j=2:size(tmp_zldopt_03,1)-1
    if tmp_zldopt_03(j,i)~=tmp_zldopt_03(j-1,i) && tmp_zldopt_03(j+1,i)==tmp_zldopt_03(j-1,i)
        tmp_zldopt_03(j,i)=tmp_zldopt_03(j+1,i);
    else
        tmp_zldopt_03(j,i)=tmp_zldopt_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_zldopt_03(1:size(slope_zldopt_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_zldopt_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_zldopt_03(1:size(slope_zldopt_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_zldopt_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_zldopt_03(i) = sum(on_zldopt_03(i,:),2);
    off_times_zldopt_03(i) = sum(off_zldopt_03(i,:),2);
end
on_zldopt_03 = on_zldopt_03';
for i =1:length(zldopt_act_03)
    b_dur_zldopt_03 (i) = mean(on_zldopt_03(on_zldopt_03(:,i)~=0)); 
end
num_burst_zldopt_03 = sum(on_zldopt_03~=0);
koff_zldopt_03 = 1./b_dur_zldopt_03;
kon_zldopt_03 = 1./off_times_zldopt_03;
clear id idx only_ones only_zeros p_ones p_zeros

%zld del
for i=1:length(zlddel_act_01)
    smooth_zlddel_01(:,i) = smooth(zlddel_01(:,zlddel_act_01(i)),0.1,'loess');
    id = smooth_zlddel_01(:,i)>700;
    idx = find(id,1,'First');
    above_thr_zlddel_01(1:(size(zlddel_01,1)-idx+1),i) = smooth_zlddel_01(idx:end,i);
    slope_zlddel_01(idx:end,i) = diff(above_thr_zlddel_01(1:(size(zlddel_01,1)-idx+1),i))./0.35;
    tmp_zlddel_01(1:size(slope_zlddel_01,1),i) = slope_zlddel_01(:,i) > 0;
    for j=2:size(tmp_zlddel_01,1)-1
    if tmp_zlddel_01(j,i)~=tmp_zlddel_01(j-1,i) && tmp_zlddel_01(j+1,i)==tmp_zlddel_01(j-1,i)
        tmp_zlddel_01(j,i)=tmp_zlddel_01(j+1,i);
    else
        tmp_zlddel_01(j,i)=tmp_zlddel_01(j,i);
    end
    end
    only_ones = find(diff([0,tmp_zlddel_01(1:size(slope_zlddel_01,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_zlddel_01(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_zlddel_01(1:size(slope_zlddel_01,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_zlddel_01(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros; 
    on_times_zlddel_01(i) = sum(on_zlddel_01(i,:),2);
    off_times_zlddel_01(i) = sum(off_zlddel_01(i,:),2);
end
on_zlddel_01 = on_zlddel_01';
for i =1:length(zlddel_act_01)
    b_dur_zlddel_01 (i) = mean(on_zlddel_01(on_zlddel_01(:,i)~=0)); 
end
num_burst_zlddel_01 = sum(on_zlddel_01~=0);
koff_zlddel_01 = 1./b_dur_zlddel_01;
kon_zlddel_01 = 1./off_times_zlddel_01;
clear id idx only_ones only_zeros p_ones p_zeros
% 
for i=1:length(zlddel_act_02)
    smooth_zlddel_02(:,i) = smooth(zlddel_02(:,zlddel_act_02(i)),0.1,'loess');
    id = smooth_zlddel_02(:,i)>700;
    idx = find(id,1,'First');
    above_thr_zlddel_02(1:(size(zlddel_02,1)-idx+1),i) = smooth_zlddel_02(idx:end,i);
    slope_zlddel_02(idx:end,i) = diff(above_thr_zlddel_02(1:(size(zlddel_02,1)-idx+1),i))./0.35;
    tmp_zlddel_02(1:size(slope_zlddel_02,1),i) = slope_zlddel_02(:,i) > 0;
    for j=2:size(tmp_zlddel_02,1)-1
    if tmp_zlddel_02(j,i)~=tmp_zlddel_02(j-1,i) && tmp_zlddel_02(j+1,i)==tmp_zlddel_02(j-1,i)
        tmp_zlddel_02(j,i)=tmp_zlddel_02(j+1,i);
    else
        tmp_zlddel_02(j,i)=tmp_zlddel_02(j,i);
    end
    end
    only_ones = find(diff([0,tmp_zlddel_02(1:size(slope_zlddel_02,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_zlddel_02(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_zlddel_02(1:size(slope_zlddel_02,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_zlddel_02(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_zlddel_02(i) = sum(on_zlddel_02(i,:),2);
    off_times_zlddel_02(i) = sum(off_zlddel_02(i,:),2);
end
on_zlddel_02 = on_zlddel_02';
for i =1:length(zlddel_act_02)
    b_dur_zlddel_02 (i) = mean(on_zlddel_02(on_zlddel_02(:,i)~=0)); 
end
num_burst_zlddel_02 = sum(on_zlddel_02~=0);
koff_zlddel_02 = 1./b_dur_zlddel_02;
kon_zlddel_02 = 1./off_times_zlddel_02;
clear id idx only_ones only_zeros p_ones p_zeros

for i=1:length(zlddel_act_03)
    smooth_zlddel_03(:,i) = smooth(zlddel_03(:,zlddel_act_03(i)),0.1,'loess');
    id = smooth_zlddel_03(:,i)>700;
    idx = find(id,1,'First');
    above_thr_zlddel_03(1:(size(zlddel_03,1)-idx+1),i) = smooth_zlddel_03(idx:end,i);
    slope_zlddel_03(idx:end,i) = diff(above_thr_zlddel_03(1:(size(zlddel_03,1)-idx+1),i))./0.35;
    tmp_zlddel_03(1:size(slope_zlddel_03,1),i) = slope_zlddel_03(:,i) > 0;
    for j=2:size(tmp_zlddel_03,1)-1
    if tmp_zlddel_03(j,i)~=tmp_zlddel_03(j-1,i) && tmp_zlddel_03(j+1,i)==tmp_zlddel_03(j-1,i)
        tmp_zlddel_03(j,i)=tmp_zlddel_03(j+1,i);
    else
        tmp_zlddel_03(j,i)=tmp_zlddel_03(j,i);
    end
    end
    only_ones = find(diff([0,tmp_zlddel_03(1:size(slope_zlddel_03,1),i)',0]==1));
    p_ones = only_ones(1:2:end-1);
    on_zlddel_03(i,1:length(p_ones)) = only_ones(2:2:end)-p_ones;  
    only_zeros = find(diff([1,tmp_zlddel_03(1:size(slope_zlddel_03,1),i)',1]==1));
    p_zeros = only_zeros(1:2:end-1);
    off_zlddel_03(i,1:length(p_zeros)) = only_zeros(2:2:end)-p_zeros;  
    on_times_zlddel_03(i) = sum(on_zlddel_03(i,:),2);
    off_times_zlddel_03(i) = sum(off_zlddel_03(i,:),2);
end
on_zlddel_03 = on_zlddel_03';
for i =1:length(zlddel_act_03)
    b_dur_zlddel_03 (i) = mean(on_zlddel_03(on_zlddel_03(:,i)~=0)); 
end
num_burst_zlddel_03 = sum(on_zlddel_03~=0);
koff_zlddel_03 = 1./b_dur_zlddel_03;
kon_zlddel_03 = 1./off_times_zlddel_03;
clear id idx only_ones only_zeros p_ones p_zeros

%% off times
off_times_wt = [off_times_wt_01, off_times_wt_02, off_times_wt_03]';
off_times_wtnew2 = [off_times_wtnew2_01, off_times_wtnew2_02, off_times_wtnew2_03]';
off_times_dl3 = [off_times_dl3_01, off_times_dl3_02, off_times_dl3_03]';
off_times_twi2 = [off_times_twi2_01, off_times_twi2_02, off_times_twi2_03]';
off_times_dl3twi2 = [off_times_dl3twi2_01, off_times_dl3twi2_02, off_times_dl3twi2_03, off_times_dl3twi2_04]';
off_times_dl1 = [off_times_dl1_01, off_times_dl1_02, off_times_dl1_03, off_times_dl1_04]';
off_times_dl2 = [off_times_dl2_01, off_times_dl2_02, off_times_dl2_03, off_times_dl2_04]';
off_times_dl12 = [off_times_dl12_01, off_times_dl12_02, off_times_dl12_03]';
off_times_zldopt = [off_times_zldopt_01, off_times_zldopt_02, off_times_zldopt_03]';
off_times_zlddel = [off_times_zlddel_01, off_times_zlddel_02, off_times_zlddel_03]';

figure,boxplot([off_times_wt; off_times_wtnew2; off_times_dl3; off_times_twi2; off_times_dl3twi2; ...
    off_times_dl1; off_times_dl2; off_times_dl12; off_times_zldopt; off_times_zlddel],...
    [ones(length(off_times_wt),1); 2*ones(length(off_times_wtnew2),1); 3*ones(length(off_times_dl3),1); 4*ones(length(off_times_twi2),1); ...
    5*ones(length(off_times_dl3twi2),1); 6*ones(length(off_times_dl1),1); 7*ones(length(off_times_dl2),1);...
    8*ones(length(off_times_dl12),1); 9*ones(length(off_times_zldopt),1); 10*ones(length(off_times_zlddel),1)], ...
    'labels',{'wt','wtnew2','dl3','twi2','dl3twi2','dl1','dl2','dl1/2','zld opt','zld del'}); ...
    title('Time off'); ylabel('Frames'); axis square; ylim([0 inf]);
   ax = gca; 
   ax.FontSize = 16;
% % fix for 10-90%
p = prctile(off_times_wt,[10 90]);
p(2,:) = prctile(off_times_wtnew2,[10 90]);
p(3,:) = prctile(off_times_dl3,[10 90]);
p(4,:) = prctile(off_times_twi2,[10 90]);
p(5,:) = prctile(off_times_dl3twi2,[10 90]);
p(6,:) = prctile(off_times_dl1,[10 90]);
p(7,:) = prctile(off_times_dl2,[10 90]);
p(8,:) = prctile(off_times_dl12,[10 90]);
p(9,:) = prctile(off_times_zldopt,[10 90]);
p(10,:) = prctile(off_times_zlddel,[10 90]);

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

%% kon
% kon_wt = [mean(1./off_times_wt_01), mean(1./off_times_wt_02), mean(1./off_times_wt_03)];
% kon_wtnew2 = [mean(1./off_times_wtnew2_01), mean(1./off_times_wtnew2_02), mean(1./off_times_wtnew2_03)];
% kon_dl3 = [mean(1./off_times_dl3_01), mean(1./off_times_dl3_02), mean(1./off_times_dl3_03)];
% kon_twi2 = [mean(1./off_times_twi2_01), mean(1./off_times_twi2_02), mean(1./off_times_twi2_03)];
% kon_dl3twi2 = [mean(1./off_times_dl3twi2_01), mean(1./off_times_dl3twi2_02), mean(1./off_times_dl3twi2_03), mean(1./off_times_dl3twi2_04)];
% kon_dl1 = [mean(1./off_times_dl1_01), mean(1./off_times_dl1_02), mean(1./off_times_dl1_03), mean(1./off_times_dl1_04)];
% kon_dl2 = [mean(1./off_times_dl2_01), mean(1./off_times_dl2_02), mean(1./off_times_dl2_03), mean(1./off_times_dl2_04)];
% kon_dl12 = [mean(1./off_times_dl12_01), mean(1./off_times_dl12_02), mean(1./off_times_dl12_03)];
% kon_zldopt = [mean(1./off_times_zldopt_01), mean(1./off_times_zldopt_02), mean(1./off_times_zldopt_03)];
% kon_zlddel = [mean(1./off_times_zlddel_01), mean(1./off_times_zlddel_02) mean(1./off_times_zlddel_03)];
% 
% avg_kon_wt = mean(kon_wt);
% err_kon_wt = std(kon_wt)./3;
% 
% avg_kon_wtnew2 = mean(kon_wtnew2);
% err_kon_wtnew2 = std(kon_wtnew2)./3;
% 
% avg_kon_dl3 = mean(kon_dl3);
% err_kon_dl3 = std(kon_dl3)./3;
% 
% avg_kon_twi2 = mean(kon_twi2);
% err_kon_twi2 = std(kon_twi2)./3;
% 
% avg_kon_dl3twi2 = mean(kon_dl3twi2);
% err_kon_dl3twi2 = std(kon_dl3twi2)./4;
% 
% avg_kon_dl1 = mean(kon_dl1);
% err_kon_dl1 = std(kon_dl1)./4;
% 
% avg_kon_dl2 = mean(kon_dl2);
% err_kon_dl2 = std(kon_dl2)./4;
% 
% avg_kon_dl12 = mean(kon_dl12);
% err_kon_dl12 = std(kon_dl12)./3;
% 
% avg_kon_zldopt = mean(kon_zldopt);
% err_kon_zldopt = std(kon_zldopt)./3;
% 
% avg_kon_zlddel = mean(kon_zlddel);
% err_kon_zlddel = std(kon_zlddel)./3;
% 
% figure,
% errorbar(1, avg_kon_wt, err_kon_wt, '.', 'Markersize', 10); hold on; 
% % errorbar(2, avg_kon_wtnew2, err_kon_wtnew2, '.', 'Markersize', 10); hold on; 
% errorbar(2, avg_kon_dl3, err_kon_dl3, '.', 'Markersize', 10); hold on; 
% errorbar(3, avg_kon_twi2, err_kon_twi2, '.', 'Markersize', 10); hold on; 
% errorbar(4, avg_kon_dl3twi2, err_kon_dl3twi2, '.', 'Markersize', 10); hold on; 
% errorbar(5, avg_kon_dl1, err_kon_dl1, '.', 'Markersize', 10); hold on; 
% errorbar(6, avg_kon_dl2, err_kon_dl2, '.', 'Markersize', 10); hold on; 
% errorbar(7, avg_kon_dl12, err_kon_dl12, '.', 'Markersize', 10); hold on; 
% errorbar(8, avg_kon_zldopt, err_kon_zldopt, '.', 'Markersize', 10); hold on; 
% errorbar(9, avg_kon_zlddel, err_kon_zlddel, '.', 'Markersize', 10); hold on;  
% title('Kon'); ylabel('Kon'); ylim([0 0.02]); xlim([0 10]);
%  xticks([1,2,3,4,5,6,7,8,9]);
% xticklabels({'wt','dl3','twi2','dl3twi2','dl1','dl2','dl1/2','zld opt','zld del'});  axis square;
% ax = gca;  ax.FontSize = 16;

%% Kon
kon_wt = [kon_wt_01, kon_wt_02, kon_wt_03];
avg_kon_wt = mean(kon_wt);
err_kon_wt = std(kon_wt);

kon_wtnew2 = [kon_wtnew2_01, kon_wtnew2_02, kon_wtnew2_03];
avg_kon_wtnew2 = mean(kon_wtnew2);
err_kon_wtnew2 = std(kon_wtnew2)./3;

kon_dl3 = [kon_dl3_01, kon_dl3_02, kon_dl3_03];
avg_kon_dl3 = mean(kon_dl3);
err_kon_dl3 = std(kon_dl3);

kon_twi2 = [kon_twi2_01, kon_twi2_02, kon_twi2_03];
avg_kon_twi2 = mean(kon_twi2);
err_kon_twi2 = std(kon_twi2);

kon_dl3twi2 = [kon_dl3twi2_01, kon_dl3twi2_02, kon_dl3twi2_03, kon_dl3twi2_04];
avg_kon_dl3twi2 = mean(kon_dl3twi2);
err_kon_dl3twi2 = std(kon_dl3twi2);

kon_dl1 = [kon_dl1_01, kon_dl1_02, kon_dl1_03, kon_dl1_04];
avg_kon_dl1 = mean(kon_dl1);
err_kon_dl1 = std(kon_dl1);

kon_dl2 = [kon_dl2_01, kon_dl2_02, kon_dl2_03, kon_dl2_04];
avg_kon_dl2 = mean(kon_dl2);
err_kon_dl2 = std(kon_dl2);

kon_dl12 = [kon_dl12_01, kon_dl12_02, kon_dl12_03];
avg_kon_dl12 = mean(kon_dl12);
err_kon_dl12 = std(kon_dl12);

% kon_zldopt = [kon_zldopt_01, kon_zldopt_02, kon_zldopt_03];
% avg_kon_zldopt = mean(kon_zldopt);
% err_kon_zldopt= std(kon_zldopt)./3;
% 
% kon_zlddel = [kon_zlddel_01, kon_zlddel_02, kon_zlddel_03];
% avg_kon_zlddel = mean(kon_zlddel);
% err_kon_zlddel= std(kon_zlddel)./3;

figure,
errorbar(1, avg_kon_wt, err_kon_wt, '.', 'Markersize', 10); hold on; 
% errorbar(2, avg_kon_wtnew2, err_kon_wtnew2, '.', 'Markersize', 10); hold on; 
errorbar(2, avg_kon_dl3, err_kon_dl3, '.', 'Markersize', 10); hold on; 
errorbar(3, avg_kon_twi2, err_kon_twi2, '.', 'Markersize', 10); hold on; 
errorbar(4, avg_kon_dl3twi2, err_kon_dl3twi2, '.', 'Markersize', 10); hold on; 
% errorbar(5, avg_kon_dl1, err_kon_dl1, '.', 'Markersize', 10); hold on; 
% errorbar(6, avg_kon_dl2, err_kon_dl2, '.', 'Markersize', 10); hold on; 
% errorbar(7, avg_kon_dl12, err_kon_dl12, '.', 'Markersize', 10); hold on; 
% errorbar(8, avg_kon_zldopt, err_kon_zldopt, '.', 'Markersize', 10); hold on; 
% errorbar(9, avg_kon_zlddel, err_kon_zlddel, '.', 'Markersize', 10); hold on;  
title('Kon'); ylabel('Kon'); ylim([0 0.03]); xlim([0 5]);
 xticks([1,2,3,4]);
xticklabels({'wt','dl3','twi2','dl3twi2'});  axis square;
ax = gca;  ax.FontSize = 16;

%% Number of bursts
num_burst_wt = [num_burst_wt_01, num_burst_wt_02, num_burst_wt_03]';
num_burst_wtnew2 = [num_burst_wtnew2_01, num_burst_wtnew2_02, num_burst_wtnew2_03]';
num_burst_dl3 = [num_burst_dl3_01, num_burst_dl3_02, num_burst_dl3_03]';
num_burst_twi2 = [num_burst_twi2_01, num_burst_twi2_02, num_burst_twi2_03]';
num_burst_dl3twi2 = [num_burst_dl3twi2_01, num_burst_dl3twi2_02, num_burst_dl3twi2_03, num_burst_dl3twi2_04]';
num_burst_dl1 = [num_burst_dl1_01, num_burst_dl1_02, num_burst_dl1_03, num_burst_dl1_04]';
num_burst_dl2 = [num_burst_dl2_01, num_burst_dl2_02, num_burst_dl2_03, num_burst_dl2_04]';
num_burst_dl12 = [num_burst_dl12_01, num_burst_dl12_02, num_burst_dl12_03]';
num_burst_zldopt = [num_burst_zldopt_01, num_burst_zldopt_02, num_burst_zldopt_03]';
num_burst_zlddel = [num_burst_zlddel_01, num_burst_zlddel_02, num_burst_zlddel_03]';

figure,boxplot([num_burst_wt; num_burst_wtnew2; num_burst_dl3; num_burst_twi2; num_burst_dl3twi2; ...
    num_burst_dl1; num_burst_dl2; num_burst_dl12; num_burst_zldopt; num_burst_zlddel],...
    [ones(length(num_burst_wt),1); 2*ones(length(num_burst_wtnew2),1); 3*ones(length(num_burst_dl3),1); 4*ones(length(num_burst_twi2),1);...
    5*ones(length(num_burst_dl3twi2),1); 6*ones(length(num_burst_dl1),1); 7*ones(length(num_burst_dl2),1); 8*ones(length(num_burst_dl12),1);...
    9*ones(length(num_burst_zldopt),1); 10*ones(length(num_burst_zlddel),1)], ...
    'labels',{'wt','wtnew2','dl3','twi2','dl3twi2','dl1','dl2','dl1/2','zldopt','zlddel'}); ...
    title('Number of bursts'); ylabel('Bursts'); axis square; ylim([0 inf]);
   ax = gca; 
   ax.FontSize = 16;
% % fix for 10-90%
p = prctile(num_burst_wt,[10 90]);
p(2,:) = prctile(num_burst_wtnew2,[10 90]);
p(3,:) = prctile(num_burst_dl3,[10 90]);
p(4,:) = prctile(num_burst_twi2,[10 90]);
p(5,:) = prctile(num_burst_dl3twi2,[10 90]);
p(6,:) = prctile(num_burst_dl1,[10 90]);
p(7,:) = prctile(num_burst_dl2,[10 90]);
p(8,:) = prctile(num_burst_dl12,[10 90]);
p(9,:) = prctile(num_burst_zldopt,[10 90]);
p(10,:) = prctile(num_burst_zlddel,[10 90]);

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

%% Duration of bursts
b_dur_wt = [b_dur_wt_01, b_dur_wt_02, b_dur_wt_03];
avg_b_dur_wt = mean(b_dur_wt);
err_b_dur_wt = std(b_dur_wt);

b_dur_wtnew2 = [b_dur_wtnew2_01, b_dur_wtnew2_02, b_dur_wtnew2_03];
avg_b_dur_wtnew2 = mean(b_dur_wtnew2);
err_b_dur_wtnew2 = std(b_dur_wtnew2)./length(b_dur_wtnew2);

b_dur_dl3 = [b_dur_dl3_01, b_dur_dl3_02, b_dur_dl3_03];
avg_b_dur_dl3 = mean(b_dur_dl3);
err_b_dur_dl3 = std(b_dur_dl3);

b_dur_twi2 = [b_dur_twi2_01, b_dur_twi2_02, b_dur_twi2_03];
avg_b_dur_twi2 = mean(b_dur_twi2);
err_b_dur_twi2 = std(b_dur_twi2);

b_dur_dl3twi2 = [b_dur_dl3twi2_01, b_dur_dl3twi2_02, b_dur_dl3twi2_03, b_dur_dl3twi2_04];
avg_b_dur_dl3twi2 = mean(b_dur_dl3twi2);
err_b_dur_dl3twi2 = std(b_dur_dl3twi2);

b_dur_dl1 = [b_dur_dl1_01, b_dur_dl1_02, b_dur_dl1_03, b_dur_dl1_04];
avg_b_dur_dl1 = mean(b_dur_dl1);
err_b_dur_dl1 = std(b_dur_dl1);

b_dur_dl2 = [b_dur_dl2_01, b_dur_dl2_02, b_dur_dl2_04];
avg_b_dur_dl2 = mean(b_dur_dl2);
err_b_dur_dl2 = std(b_dur_dl2);

b_dur_dl12 = [b_dur_dl12_01, b_dur_dl12_02, b_dur_dl12_03];
avg_b_dur_dl12 = mean(b_dur_dl12);
err_b_dur_dl12 = std(b_dur_dl12);

% b_dur_zldopt = [b_dur_zldopt_01, b_dur_zldopt_02, b_dur_zldopt_03];
% avg_b_dur_zldopt = mean(b_dur_zldopt);
% err_b_dur_zldopt= std(b_dur_zldopt)./3;
% 
% b_dur_zlddel = [b_dur_zlddel_01, b_dur_zlddel_02, b_dur_zlddel_03];
% avg_b_dur_zlddel = mean(b_dur_zlddel);
% err_b_dur_zlddel= std(b_dur_zlddel)./3;

figure,
errorbar(1, avg_b_dur_wt, err_b_dur_wt, '.', 'Markersize', 10); hold on; 
% errorbar(2, avg_b_dur_wtnew2, err_b_dur_wtnew2, '.', 'Markersize', 10); hold on; 
errorbar(2, avg_b_dur_dl3, err_b_dur_dl3, '.', 'Markersize', 10); hold on; 
errorbar(3, avg_b_dur_twi2, err_b_dur_twi2, '.', 'Markersize', 10); hold on; 
errorbar(4, avg_b_dur_dl3twi2, err_b_dur_dl3twi2, '.', 'Markersize', 10); hold on; 
errorbar(5, avg_b_dur_dl1, err_b_dur_dl1, '.', 'Markersize', 10); hold on; 
errorbar(6, avg_b_dur_dl2, err_b_dur_dl2, '.', 'Markersize', 10); hold on; 
errorbar(7, avg_b_dur_dl12, err_b_dur_dl12, '.', 'Markersize', 10); hold on; 
% errorbar(8, avg_b_dur_zldopt, err_b_dur_zldopt, '.', 'Markersize', 10); hold on; 
% errorbar(9, avg_b_dur_zlddel, err_b_dur_zlddel, '.', 'Markersize', 10); hold on;  
title('Duration of bursts'); ylabel('Frames'); ylim([0 8]); xlim([0 8]);
 xticks([1,2,3,4,5,6,7]);
xticklabels({'wt','dl3','twi2','dl3twi2','dl1','dl2','dl1/2'});  axis square;
ax = gca;  ax.FontSize = 16;

%% Koff
koff_wt = [koff_wt_01, koff_wt_02, koff_wt_03];
avg_koff_wt = mean(koff_wt);
err_koff_wt = std(koff_wt);

koff_dl3 = [koff_dl3_01, koff_dl3_02, koff_dl3_03];
avg_koff_dl3 = mean(koff_dl3);
err_koff_dl3 = std(koff_dl3);

koff_twi2 = [koff_twi2_01, koff_twi2_02, koff_twi2_03];
avg_koff_twi2 = mean(koff_twi2);
err_koff_twi2 = std(koff_twi2);

koff_dl3twi2 = [koff_dl3twi2_01, koff_dl3twi2_03, koff_dl3twi2_04];
avg_koff_dl3twi2 = mean(koff_dl3twi2);
err_koff_dl3twi2 = std(koff_dl3twi2);

koff_dl1 = [koff_dl1_01, koff_dl1_02, koff_dl1_03, koff_dl1_04];
avg_koff_dl1 = mean(koff_dl1);
err_koff_dl1 = std(koff_dl1);

koff_dl2 = [koff_dl2_01, koff_dl2_02, koff_dl2_04];
avg_koff_dl2 = mean(koff_dl2);
err_koff_dl2 = std(koff_dl2);

koff_dl12 = [koff_dl12_01, koff_dl12_02, koff_dl12_03];
avg_koff_dl12 = mean(koff_dl12);
err_koff_dl12 = std(koff_dl12);

% koff_zldopt = [koff_zldopt_01, koff_zldopt_02, koff_zldopt_03];
% avg_koff_zldopt = mean(koff_zldopt);
% err_koff_zldopt= std(koff_zldopt)./3;
% 
% koff_zlddel = [koff_zlddel_01, koff_zlddel_02, koff_zlddel_03];
% avg_koff_zlddel = mean(koff_zlddel);
% err_koff_zlddel= std(koff_zlddel)./3;

figure,
errorbar(1, avg_koff_wt, err_koff_wt, '.', 'Markersize', 10); hold on; 
% errorbar(2, avg_koff_wtnew2, err_koff_wtnew2, '.', 'Markersize', 10); hold on; 
% errorbar(2, avg_koff_dl3, err_koff_dl3, '.', 'Markersize', 10); hold on; 
% errorbar(3, avg_koff_twi2, err_koff_twi2, '.', 'Markersize', 10); hold on; 
% errorbar(4, avg_koff_dl3twi2, err_koff_dl3twi2, '.', 'Markersize', 10); hold on; 
errorbar(2, avg_koff_dl1, err_koff_dl1, '.', 'Markersize', 10); hold on; 
errorbar(3, avg_koff_dl2, err_koff_dl2, '.', 'Markersize', 10); hold on; 
errorbar(4, avg_koff_dl12, err_koff_dl12, '.', 'Markersize', 10); hold on; 
% errorbar(8, avg_koff_zldopt, err_koff_zldopt, '.', 'Markersize', 10); hold on; 
% errorbar(9, avg_koff_zlddel, err_koff_zlddel, '.', 'Markersize', 10); hold on;  
title('Koff'); ylabel('Koff'); ylim([0 0.3]); xlim([0 5]);
 xticks([1,2,3,4]);
xticklabels({'wt','dl1','dl2','dl12'});  axis square;
ax = gca;  ax.FontSize = 16;

%% Burst frequency
b_freq_wt = [(kon_wt_01.*koff_wt_01)./(kon_wt_01+koff_wt_01), (kon_wt_02.*koff_wt_02)./(kon_wt_02+koff_wt_02), (kon_wt_03.*koff_wt_03)./(kon_wt_03+koff_wt_03)];
avg_b_freq_wt = mean(b_freq_wt);
err_b_freq_wt = std(b_freq_wt)./3;

b_freq_dl3 = [(kon_dl3_01.*koff_dl3_01)./(kon_dl3_01+koff_dl3_01), (kon_dl3_02.*koff_dl3_02)./(kon_dl3_02+koff_dl3_02), (kon_dl3_03.*koff_dl3_03)./(kon_dl3_03+koff_dl3_03)];
avg_b_freq_dl3 = mean(b_freq_dl3);
err_b_freq_dl3 = std(b_freq_dl3)./3;

b_freq_twi2 = [(kon_twi2_01.*koff_twi2_01)./(kon_twi2_01+koff_twi2_01), (kon_twi2_02.*koff_twi2_02)./(kon_twi2_02+koff_twi2_02), (kon_twi2_03.*koff_twi2_03)./(kon_twi2_03+koff_twi2_03)];
avg_b_freq_twi2 = mean(b_freq_twi2);
err_b_freq_twi2 = std(b_freq_twi2)./3;

b_freq_dl3twi2 = [(kon_dl3twi2_01.*koff_dl3twi2_01)./(kon_dl3twi2_01+koff_dl3twi2_01), (kon_dl3twi2_02.*koff_dl3twi2_02)./(kon_dl3twi2_02+koff_dl3twi2_02),...
    (kon_dl3twi2_03.*koff_dl3twi2_03)./(kon_dl3twi2_03+koff_dl3twi2_03), (kon_dl3twi2_04.*koff_dl3twi2_04)./(kon_dl3twi2_04+koff_dl3twi2_04)];
avg_b_freq_dl3twi2 = mean(b_freq_dl3twi2);
err_b_freq_dl3twi2 = std(b_freq_dl3twi2)./4;

b_freq_dl1 = [(kon_dl1_01.*koff_dl1_01)./(kon_dl1_01+koff_dl1_01), (kon_dl1_02.*koff_dl1_02)./(kon_dl1_02+koff_dl1_02),....
    (kon_dl1_03.*koff_dl1_03)./(kon_dl1_03+koff_dl1_03), (kon_dl1_04.*koff_dl1_04)./(kon_dl1_04+koff_dl1_04)];
avg_b_freq_dl1 = mean(b_freq_dl1);
err_b_freq_dl1 = std(b_freq_dl1)./4;

b_freq_dl2 = [(kon_dl2_01.*koff_dl2_01)./(kon_dl2_01+koff_dl2_01), (kon_dl2_02.*koff_dl2_02)./(kon_dl2_02+koff_dl2_02), ...
    (kon_dl2_04.*koff_dl2_04)./(kon_dl2_04+koff_dl2_04)];
avg_b_freq_dl2 = mean(b_freq_dl2);
err_b_freq_dl2 = std(b_freq_dl2)./3;

b_freq_dl12 = [(kon_dl12_01.*koff_dl12_01)./(kon_dl12_01+koff_dl12_01), (kon_dl12_02.*koff_dl12_02)./(kon_dl12_02+koff_dl12_02), (kon_dl12_03.*koff_dl12_03)./(kon_dl12_03+koff_dl12_03)];
avg_b_freq_dl12 = mean(b_freq_dl12);
err_b_freq_dl12 = std(b_freq_dl12)./3;

b_freq_zldopt = [(kon_zldopt_01.*koff_zldopt_01)./(kon_zldopt_01+koff_zldopt_01), (kon_zldopt_02.*koff_zldopt_02)./(kon_zldopt_02+koff_zldopt_02), (kon_zldopt_03.*koff_zldopt_03)./(kon_zldopt_03+koff_zldopt_03)];
avg_b_freq_zldopt = mean(b_freq_zldopt);
err_b_freq_zldopt = std(b_freq_zldopt)./3;

b_freq_zlddel = [(kon_zlddel_01.*koff_zlddel_01)./(kon_zlddel_01+koff_zlddel_01), (kon_zlddel_02.*koff_zlddel_02)./(kon_zlddel_02+koff_zlddel_02), (kon_zlddel_03.*koff_zlddel_03)./(kon_zlddel_03+koff_zlddel_03)];
avg_b_freq_zlddel = mean(b_freq_zlddel);
err_b_freq_zlddel = std(b_freq_zlddel)./3;

figure,
errorbar(1, avg_b_freq_wt, err_b_freq_wt, '.', 'Markersize', 10); hold on; 
% errorbar(2, avg_b_freq_wtnew2, err_b_freq_wtnew2, '.', 'Markersize', 10); hold on; 
% errorbar(2, avg_b_freq_dl3, err_b_freq_dl3, '.', 'Markersize', 10); hold on; 
% errorbar(3, avg_b_freq_twi2, err_b_freq_twi2, '.', 'Markersize', 10); hold on; 
% errorbar(4, avg_b_freq_dl3twi2, err_b_freq_dl3twi2, '.', 'Markersize', 10); hold on; 
errorbar(2, avg_b_freq_dl1, err_b_freq_dl1, '.', 'Markersize', 10); hold on; 
errorbar(3, avg_b_freq_dl2, err_b_freq_dl2, '.', 'Markersize', 10); hold on; 
errorbar(4, avg_b_freq_dl12, err_b_freq_dl12, '.', 'Markersize', 10); hold on; 
% errorbar(8, avg_b_freq_zldopt, err_b_freq_zldopt, '.', 'Markersize', 10); hold on; 
% errorbar(9, avg_b_freq_zlddel, err_b_freq_zlddel, '.', 'Markersize', 10); hold on;  
title('Burst frequency'); ylabel('Frequency'); ylim([0 inf]); xlim([0 5]);
 xticks([1,2,3,4]);
xticklabels({'wt','dl3','twi2','dl3twi2'});  axis square;
ax = gca;  ax.FontSize = 16;