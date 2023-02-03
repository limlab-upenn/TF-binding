clear;
close all;
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl12');

wt_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb01\';
wt_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb02\';
wt_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb03\';

dl3_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3del_M1_2021_02_08\emb02\';
dl3_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3del_M1_2021_02_08\emb03\';
dl3_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3del_M1_2021_02_08\emb04\';

twi2_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2del_M1_2021_02_17\emb01\';
twi2_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2del_M1_2021_02_17\emb02\';
twi2_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2del_M1_2021_02_17\emb03\';

dl3twi2_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_04_20_REDO\emb01\';
dl3twi2_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_04_20_REDO\emb02\';
dl3twi2_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_02_16\emb03\';
dl3twi2_4 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_02_16\emb04\';

dl1_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1del_M3_2022_01_12\emb01\';
dl1_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1del_M3_2022_01_12\emb02\';
dl1_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1del_M3_2022_01_12\emb03\';
dl1_4 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1del_M3_2022_01_12\emb04\';

dl2_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2del_M2_2021_03_01\emb01\';
dl2_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2del_M2_2021_03_01\emb02\';
dl2_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2del_M2_2021_03_01\emb03\';
dl2_4 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2del_M2_2021_03_01\emb04\';

dl12_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1_2_del_M1_2021_03_05\emb01\';
dl12_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1_2_del_M1_2021_03_05\emb02\';
dl12_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1_2_del_M1_2021_03_05\emb03\';

load([wt_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); % find avg y-values for each nucleus
[sorted,id] = sort(avg_lineage_cy); % sort avg y-values and find indices
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); % create array with 16 bins
% for i = 1:16
%     idx = find(sorted >= x1(i) & sorted <= x1(i+1)); % find # of nuclei that have y-value between two numbers
%     avg_wt_dur_01(i) = mean(wt_dur_01(id(idx))); % calculate average dur on in each bin
% end
% 
% clear avg_lineage_cy sorted first last x1 idx id
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(wt_01)
        tmp = find(smooth(wt_01(:,i)) > thr); % find nuclei in each bin that is higher than threshold
    if isempty(tmp) == 1
         wt_time_01(i) = 0;
         wt_on_01(i) = 0;
    else
        wt_time_01(i) = tmp(1)*0.35; % find time activated
        wt_on_01(i) = length(tmp)*0.35; % find total duration on
    end
    end
    avg_wt_on_01(j) = mean(wt_on_01(id(idx))); % for each bin, average duration on of all nuclei
    avg_wt_time_01(j) = mean(wt_time_01(id(idx))); % for each bin, average time to activation of all nuclei
end

load([wt_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(wt_02)
        tmp = find(smooth(wt_02(:,i)) > thr);
    if isempty(tmp) == 1
         wt_time_02(i) = 0;
         wt_on_02(i) = 0;
    else
        wt_time_02(i) = tmp(1)*0.35;
        wt_on_02(i) = length(tmp)*0.35;
    end
    end
    avg_wt_on_02(j) = mean(wt_on_02(id(idx)));
    avg_wt_time_02(j) = mean(wt_time_02(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([wt_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(wt_03)
        tmp = find(smooth(wt_03(:,i)) > thr);
    if isempty(tmp) == 1
         wt_time_03(i) = 0;
         wt_on_03(i) = 0;
    else
        wt_time_03(i) = tmp(1)*0.35;
        wt_on_03(i) = length(tmp)*0.35;
    end
    end
    avg_wt_on_03(j) = mean(wt_on_03(id(idx)));
    avg_wt_time_03(j) = mean(wt_time_03(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

%dl3
load([dl3_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl3_01)
        tmp = find(smooth(dl3_01(:,i)) > thr);
    if isempty(tmp) == 1
         dl3_time_01(i) = 0;
         dl3_on_01(i) = 0;
    else
        dl3_time_01(i) = tmp(1)*0.35;
        dl3_on_01(i) = length(tmp)*0.35;
    end
    end
    avg_dl3_on_01(j) = mean(dl3_on_01(id(idx)));
    avg_dl3_time_01(j) = mean(dl3_time_01(id(idx)));
end

clear avg_lineage_cy sorted first last x1 idx id

load([dl3_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl3_02)
        tmp = find(smooth(dl3_02(:,i)) > thr);
    if isempty(tmp) == 1
         dl3_time_02(i) = 0;
         dl3_on_02(i) = 0;
    else
        dl3_time_02(i) = tmp(1)*0.35;
        dl3_on_02(i) = length(tmp)*0.35;
    end
    end
    avg_dl3_on_02(j) = mean(dl3_on_02(id(idx)));
    avg_dl3_time_02(j) = mean(dl3_time_02(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl3_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl3_03)
        tmp = find(smooth(dl3_03(:,i)) > thr);
    if isempty(tmp) == 1
         dl3_time_03(i) = 0;
         dl3_on_03(i) = 0;
    else
        dl3_time_03(i) = tmp(1)*0.35;
        dl3_on_03(i) = length(tmp)*0.35;
    end
    end
    avg_dl3_on_03(j) = mean(dl3_on_03(id(idx)));
    avg_dl3_time_03(j) = mean(dl3_time_03(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

%twi2
load([twi2_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(twi2_01)
        tmp = find(smooth(twi2_01(:,i)) > thr);
    if isempty(tmp) == 1
         twi2_time_01(i) = 0;
         twi2_on_01(i) = 0;
    else
        twi2_time_01(i) = tmp(1)*0.35;
        twi2_on_01(i) = length(tmp)*0.35;
    end
    end
    avg_twi2_on_01(j) = mean(twi2_on_01(id(idx)));
    avg_twi2_time_01(j) = mean(twi2_time_01(id(idx)));
end

clear avg_lineage_cy sorted first last x1 idx id

load([twi2_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(twi2_02)
        tmp = find(smooth(twi2_02(:,i)) > thr);
    if isempty(tmp) == 1
         twi2_time_02(i) = 0;
         twi2_on_02(i) = 0;
    else
        twi2_time_02(i) = tmp(1)*0.35;
        twi2_on_02(i) = length(tmp)*0.35;
    end
    end
    avg_twi2_on_02(j) = mean(twi2_on_02(id(idx)));
    avg_twi2_time_02(j) = mean(twi2_time_02(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([twi2_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(twi2_03)
        tmp = find(smooth(twi2_03(:,i)) > thr);
    if isempty(tmp) == 1
         twi2_time_03(i) = 0;
         twi2_on_03(i) = 0;
    else
        twi2_time_03(i) = tmp(1)*0.35;
        twi2_on_03(i) = length(tmp)*0.35;
    end
    end
    avg_twi2_on_03(j) = mean(twi2_on_03(id(idx)));
    avg_twi2_time_03(j) = mean(twi2_time_03(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

%dl3twi2
load([dl3twi2_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl3twi2_01)
        tmp = find(smooth(dl3twi2_01(:,i)) > thr);
    if isempty(tmp) == 1
         dl3twi2_time_01(i) = 0;
         dl3twi2_on_01(i) = 0;
    else
        dl3twi2_time_01(i) = tmp(1)*0.35;
        dl3twi2_on_01(i) = length(tmp)*0.35;
    end
    end
    avg_dl3twi2_on_01(j) = mean(dl3twi2_on_01(id(idx)));
    avg_dl3twi2_time_01(j) = mean(dl3twi2_time_01(id(idx)));
end

clear avg_lineage_cy sorted first last x1 idx id

load([dl3twi2_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl3twi2_02)
        tmp = find(smooth(dl3twi2_02(:,i)) > thr);
    if isempty(tmp) == 1
         dl3twi2_time_02(i) = 0;
         dl3twi2_on_02(i) = 0;
    else
        dl3twi2_time_02(i) = tmp(1)*0.35;
        dl3twi2_on_02(i) = length(tmp)*0.35;
    end
    end
    avg_dl3twi2_on_02(j) = mean(dl3twi2_on_02(id(idx)));
    avg_dl3twi2_time_02(j) = mean(dl3twi2_time_02(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl3twi2_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl3twi2_03)
        tmp = find(smooth(dl3twi2_03(:,i)) > thr);
    if isempty(tmp) == 1
         dl3twi2_time_03(i) = 0;
         dl3twi2_on_03(i) = 0;
    else
        dl3twi2_time_03(i) = tmp(1)*0.35;
        dl3twi2_on_03(i) = length(tmp)*0.35;
    end
    end
    avg_dl3twi2_on_03(j) = mean(dl3twi2_on_03(id(idx)));
    avg_dl3twi2_time_03(j) = mean(dl3twi2_time_03(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl3twi2_4 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl3twi2_04)
        tmp = find(smooth(dl3twi2_04(:,i)) > thr);
    if isempty(tmp) == 1
         dl3twi2_time_04(i) = 0;
         dl3twi2_on_04(i) = 0;
    else
        dl3twi2_time_04(i) = tmp(1)*0.35;
        dl3twi2_on_04(i) = length(tmp)*0.35;
    end
    end
    avg_dl3twi2_on_04(j) = mean(dl3twi2_on_04(id(idx)));
    avg_dl3twi2_time_04(j) = mean(dl3twi2_time_04(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

%dl1
load([dl1_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl1_01)
        tmp = find(smooth(dl1_01(:,i)) > thr);
    if isempty(tmp) == 1
         dl1_time_01(i) = 0;
         dl1_on_01(i) = 0;
    else
        dl1_time_01(i) = tmp(1)*0.35;
        dl1_on_01(i) = length(tmp)*0.35;
    end
    end
    avg_dl1_on_01(j) = mean(dl1_on_01(id(idx)));
    avg_dl1_time_01(j) = mean(dl1_time_01(id(idx)));
end

clear avg_lineage_cy sorted first last x1 idx id

load([dl1_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl1_02)
        tmp = find(smooth(dl1_02(:,i)) > thr);
    if isempty(tmp) == 1
         dl1_time_02(i) = 0;
         dl1_on_02(i) = 0;
    else
        dl1_time_02(i) = tmp(1)*0.35;
        dl1_on_02(i) = length(tmp)*0.35;
    end
    end
    avg_dl1_on_02(j) = mean(dl1_on_02(id(idx)));
    avg_dl1_time_02(j) = mean(dl1_time_02(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl1_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl1_03)
        tmp = find(smooth(dl1_03(:,i)) > thr);
    if isempty(tmp) == 1
         dl1_time_03(i) = 0;
         dl1_on_03(i) = 0;
    else
        dl1_time_03(i) = tmp(1)*0.35;
        dl1_on_03(i) = length(tmp)*0.35;
    end
    end
    avg_dl1_on_03(j) = mean(dl1_on_03(id(idx)));
    avg_dl1_time_03(j) = mean(dl1_time_03(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl1_4 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl1_04)
        tmp = find(smooth(dl1_04(:,i)) > thr);
    if isempty(tmp) == 1
         dl1_time_04(i) = 0;
         dl1_on_04(i) = 0;
    else
        dl1_time_04(i) = tmp(1)*0.35;
        dl1_on_04(i) = length(tmp)*0.35;
    end
    end
    avg_dl1_on_04(j) = mean(dl1_on_04(id(idx)));
    avg_dl1_time_04(j) = mean(dl1_time_04(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

%dl2
load([dl2_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl2_01)
        tmp = find(smooth(dl2_01(:,i)) > thr);
    if isempty(tmp) == 1
         dl2_time_01(i) = 0;
         dl2_on_01(i) = 0;
    else
        dl2_time_01(i) = tmp(1)*0.35;
        dl2_on_01(i) = length(tmp)*0.35;
    end
    end
    avg_dl2_on_01(j) = mean(dl2_on_01(id(idx)));
    avg_dl2_time_01(j) = mean(dl2_time_01(id(idx)));
end

clear avg_lineage_cy sorted first last x1 idx id

load([dl2_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl2_02)
        tmp = find(smooth(dl2_02(:,i)) > thr);
    if isempty(tmp) == 1
         dl2_time_02(i) = 0;
         dl2_on_02(i) = 0;
    else
        dl2_time_02(i) = tmp(1)*0.35;
        dl2_on_02(i) = length(tmp)*0.35;
    end
    end
    avg_dl2_on_02(j) = mean(dl2_on_02(id(idx)));
    avg_dl2_time_02(j) = mean(dl2_time_02(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl2_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl2_03)
        tmp = find(smooth(dl2_03(:,i)) > thr);
    if isempty(tmp) == 1
         dl2_time_03(i) = 0;
         dl2_on_03(i) = 0;
    else
        dl2_time_03(i) = tmp(1)*0.35;
        dl2_on_03(i) = length(tmp)*0.35;
    end
    end
    avg_dl2_on_03(j) = mean(dl2_on_03(id(idx)));
    avg_dl2_time_03(j) = mean(dl2_time_03(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl2_4 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl2_04)
        tmp = find(smooth(dl2_04(:,i)) > thr);
    if isempty(tmp) == 1
         dl2_time_04(i) = 0;
         dl2_on_04(i) = 0;
    else
        dl2_time_04(i) = tmp(1)*0.35;
        dl2_on_04(i) = length(tmp)*0.35;
    end
    end
    avg_dl2_on_04(j) = mean(dl2_on_04(id(idx)));
    avg_dl2_time_04(j) = mean(dl2_time_04(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

%dl1/2 
load([dl12_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl12_01)
        tmp = find(smooth(dl12_01(:,i)) > thr);
    if isempty(tmp) == 1
         dl12_time_01(i) = 0;
         dl12_on_01(i) = 0;
    else
        dl12_time_01(i) = tmp(1)*0.35;
        dl12_on_01(i) = length(tmp)*0.35;
    end
    end
    avg_dl12_on_01(j) = mean(dl12_on_01(id(idx)));
    avg_dl12_time_01(j) = mean(dl12_time_01(id(idx)));
end

clear avg_lineage_cy sorted first last x1 idx id

load([dl12_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl12_02)
        tmp = find(smooth(dl12_02(:,i)) > thr);
    if isempty(tmp) == 1
         dl12_time_02(i) = 0;
         dl12_on_02(i) = 0;
    else
        dl12_time_02(i) = tmp(1)*0.35;
        dl12_on_02(i) = length(tmp)*0.35;
    end
    end
    avg_dl12_on_02(j) = mean(dl12_on_02(id(idx)));
    avg_dl12_time_02(j) = mean(dl12_time_02(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl12_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:16
    idx = find(sorted >= x1(j) & sorted <= x1(j+1)); % find # of nuclei that have y-value between two numbers
    thr = 500;
    for i = 1:length(dl12_03)
        tmp = find(smooth(dl12_03(:,i)) > thr);
    if isempty(tmp) == 1
         dl12_time_03(i) = 0;
         dl12_on_03(i) = 0;
    else
        dl12_time_03(i) = tmp(1)*0.35;
        dl12_on_03(i) = length(tmp)*0.35;
    end
    end
    avg_dl12_on_03(j) = mean(dl12_on_03(id(idx)));
    avg_dl12_time_03(j) = mean(dl12_time_03(id(idx)));
end
clear avg_lineage_cy sorted first last x1 idx id


%% combine replicates - time to activation
wt_time(1,1:15) = avg_wt_time_01(2:16);
wt_time(2,1:15) = avg_wt_time_02(2:16);
wt_time(3,1:16) = avg_wt_time_03(1:16);
avg_wt_time = mean(wt_time(:,1:16));
err_wt_time = std(wt_time(:,1:16))./sqrt(size(wt_time,1));

dl3_time(1,1:15) = avg_dl3_time_01(2:16);
dl3_time(2,2:17) = avg_dl3_time_02(1:16);
dl3_time(3,1:16) = avg_dl3_time_03(1:16);
avg_dl3_time = mean(dl3_time(:,1:16));
err_dl3_time = std(dl3_time(:,1:16))./sqrt(size(dl3_time,1));

twi2_time(1,1:15) = avg_twi2_time_01(2:16);
twi2_time(2,2:17) = avg_twi2_time_02(1:16);
twi2_time(3,1:15) = avg_twi2_time_03(2:16);
avg_twi2_time = mean(twi2_time(:,1:16));
err_twi2_time = std(twi2_time(:,1:16))./sqrt(size(twi2_time,1));

dl3twi2_time(1,:) = avg_dl3twi2_time_01;
dl3twi2_time(2,1:15) = avg_dl3twi2_time_02(2:16);
dl3twi2_time(3,:) = avg_dl3twi2_time_03;
dl3twi2_time(4,:) = avg_dl3twi2_time_04;
avg_dl3twi2_time = mean(dl3twi2_time);
err_dl3twi2_time = std(dl3twi2_time)./sqrt(size(dl3twi2_time,1));

dl1_time(1,4:19) = avg_dl1_time_01(1:16);
dl1_time(2,1:16) = avg_dl1_time_02(1:16);
dl1_time(3,1:16) = avg_dl1_time_03(1:16);
dl1_time(4,1:15) = avg_dl1_time_04(2:16);
avg_dl1_time = mean(dl1_time(:,1:16));
err_dl1_time = std(dl1_time(:,1:16))./sqrt(size(dl1_time,1));

dl2_time(1,3:18) = avg_dl2_time_01(1:16);
dl2_time(2,1:15) = avg_dl2_time_02(2:16);
dl2_time(3,1:15) = avg_dl2_time_03(2:16);
dl2_time(4,3:18) = avg_dl2_time_04(1:16);
avg_dl2_time = mean(dl2_time(:,1:16));
err_dl2_time = std(dl2_time(:,1:16))./sqrt(size(dl2_time,1));

dl12_time(1,2:17) = avg_dl12_time_01(1:16);
dl12_time(2,1:15) = avg_dl12_time_02(2:16);
dl12_time(3,1:16) = avg_dl12_time_03(1:16);
avg_dl12_time = mean(dl12_time(:,1:16));
err_dl12_time = std(dl12_time(:,1:16))./sqrt(size(dl12_time,1));

T = 1:16;
figure(5),
shadedErrorBar(T(1:16), avg_wt_time, err_wt_time,'lineprops','-'); hold on;
% shadedErrorBar(T(1:16),avg_dl3_time, err_dl3_time,'lineprops','-'); hold on;
% shadedErrorBar(T(1:16),avg_twi2_time, err_twi2_time,'lineprops','-'); hold on;
% shadedErrorBar(T(1:16),avg_dl3twi2_time, err_dl3twi2_time,'lineprops','-');
shadedErrorBar(T(1:16),avg_dl1_time, err_dl1_time,'lineprops','-');
shadedErrorBar(T(1:16),avg_dl2_time, err_dl2_time,'lineprops','-');
shadedErrorBar(T(1:16),avg_dl12_time, err_dl12_time','lineprops','-');
title('Time activation'); ylabel('Time (min)'); legend('wt','dl1','dl2','dl1/2')
 xlim([0 17]); xlabel('Location'); ylim([0 25]);
ax = gca;  ax.FontSize = 16; axis square

%% combine replicates - Duration
wt_on(1,1:15) = avg_wt_on_01(2:16);
wt_on(2,1:15) = avg_wt_on_02(2:16);
wt_on(3,1:16) = avg_wt_on_03(1:16);
avg_wt_on = mean(wt_on(:,1:16));
err_wt_on = std(wt_on(:,1:16))./sqrt(size(wt_on,1));

dl3_on(1,1:15) = avg_dl3_on_01(2:16);
dl3_on(2,2:17) = avg_dl3_on_02(1:16);
dl3_on(3,1:16) = avg_dl3_on_03(1:16);
avg_dl3_on = mean(dl3_on(:,1:16));
err_dl3_on = std(dl3_on(:,1:16))./sqrt(size(dl3_on,1));

twi2_on(1,1:15) = avg_twi2_on_01(2:16);
twi2_on(2,2:17) = avg_twi2_on_02(1:16);
twi2_on(3,1:15) = avg_twi2_on_03(2:16);
avg_twi2_on = mean(twi2_on(:,1:16));
err_twi2_on = std(twi2_on(:,1:16))./sqrt(size(twi2_on,1));

dl3twi2_on(1,:) = avg_dl3twi2_on_01;
dl3twi2_on(2,1:15) = avg_dl3twi2_on_02(2:16);
dl3twi2_on(3,:) = avg_dl3twi2_on_03;
dl3twi2_on(4,:) = avg_dl3twi2_on_04;
avg_dl3twi2_on = mean(dl3twi2_on);
err_dl3twi2_on = std(dl3twi2_on)./sqrt(size(dl3twi2_on,1));

dl1_on(1,4:19) = avg_dl1_on_01(1:16);
dl1_on(2,1:16) = avg_dl1_on_02(1:16);
dl1_on(3,1:16) = avg_dl1_on_03(1:16);
dl1_on(4,1:15) = avg_dl1_on_04(2:16);
avg_dl1_on = mean(dl1_on(:,1:16));
err_dl1_on = std(dl1_on(:,1:16))./sqrt(size(dl1_on,1));

dl2_on(1,3:18) = avg_dl2_on_01(1:16);
dl2_on(2,1:15) = avg_dl2_on_02(2:16);
dl2_on(3,1:15) = avg_dl2_on_03(2:16);
dl2_on(4,3:18) = avg_dl2_on_04(1:16);
avg_dl2_on = mean(dl2_on(:,1:16));
err_dl2_on = std(dl2_on(:,1:16))./sqrt(size(dl2_on,1));

dl12_on(1,2:17) = avg_dl12_on_01(1:16);
dl12_on(2,1:15) = avg_dl12_on_02(2:16);
dl12_on(3,1:16) = avg_dl12_on_03(1:16);
avg_dl12_on = mean(dl12_on(:,1:16));
err_dl12_on = std(dl12_on(:,1:16))./sqrt(size(dl12_on,1));

T = 1:16;
figure(6),
shadedErrorBar(T(1:16), avg_wt_on, err_wt_on,'lineprops','-'); hold on;
% shadedErrorBar(T(1:16),avg_dl3_on, err_dl3_on,'lineprops','-'); hold on;
% shadedErrorBar(T(1:16),avg_twi2_on, err_twi2_on,'lineprops','-'); hold on;
% shadedErrorBar(T(1:16),avg_dl3twi2_on, err_dl3twi2_on,'lineprops','-');
shadedErrorBar(T(1:16),avg_dl1_on, err_dl1_on,'lineprops','-');
shadedErrorBar(T(1:16),avg_dl2_on, err_dl2_on,'lineprops','-');
shadedErrorBar(T(1:16),avg_dl12_on, err_dl12_on','lineprops','-');
title('Duration'); ylabel('Time (min)'); legend('wt','dl1','dl2','dl1/2')
 xlim([0 17]); xlabel('Location'); ylim([0 35])
ax = gca;  ax.FontSize = 16; axis square