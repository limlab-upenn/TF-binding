clear;
close all;
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

wt_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb01\';
wt_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb02\';
wt_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb03\';

wtnew_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_02_22\emb01\';
wtnew_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_02_22\emb02\';
wtnew_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_02_22\emb03\';

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

zldopt_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt_M2_2022_01_31\emb01\';
zldopt_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt_M2_2022_01_31\emb02\';
zldopt_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt_M2_2022_01_31\emb04\';

zlddel_1 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel_M3_2022_02_03\emb01\';
zlddel_2 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel_M3_2022_02_03\emb02\';
zlddel_3 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel_M3_2022_02_03\emb03\';

load([wt_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); % find avg y-values for each nucleus
[sorted,id] = sort(avg_lineage_cy); % sort avg y-values and find indices
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); % create array with 16 bins
for j = 1:size(wt_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); % find # of nuclei that have y-value between two numbers
        avg_wt_output_01(i) = mean(wt_out_01(id(idx))); % find avg output of those nuclei
        avg_wt_intensity_01(i,j) = mean(wt_01(j,id(idx))); % find avg intensity of those nuclei
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([wt_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(wt_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_wt_output_02(i) = mean(wt_out_02(id(idx)));
        avg_wt_intensity_02(i,j) = mean(wt_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([wt_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(wt_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_wt_output_03(i) = mean(wt_out_03(id(idx)));
        avg_wt_intensity_03(i,j) = mean(wt_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%wtnew
load([wtnew_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(wtnew2_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_wtnew2_output_01(i) = mean(wtnew2_out_01(id(idx))); 
        avg_wtnew2_intensity_01(i,j) = mean(wtnew2_01(j,id(idx))); 
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([wtnew_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(wtnew2_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_wtnew2_output_02(i) = mean(wtnew2_out_02(id(idx)));
        avg_wtnew2_intensity_02(i,j) = mean(wtnew2_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([wtnew_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(wtnew2_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_wtnew2_output_03(i) = mean(wtnew2_out_03(id(idx)));
        avg_wtnew2_intensity_03(i,j) = mean(wtnew2_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%dl3
load([dl3_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl3_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl3_output_01(i) = mean(dl3_out_01(id(idx))); 
        avg_dl3_intensity_01(i,j) = mean(dl3_01(j,id(idx))); 
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl3_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl3_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl3_output_02(i) = mean(dl3_out_02(id(idx)));
        avg_dl3_intensity_02(i,j) = mean(dl3_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl3_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl3_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl3_output_03(i) = mean(dl3_out_03(id(idx)));
        avg_dl3_intensity_03(i,j) = mean(dl3_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%twi2
load([twi2_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(twi2_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_twi2_output_01(i) = mean(twi2_out_01(id(idx))); 
        avg_twi2_intensity_01(i,j) = mean(twi2_01(j,id(idx))); 
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([twi2_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(twi2_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_twi2_output_02(i) = mean(twi2_out_02(id(idx)));
        avg_twi2_intensity_02(i,j) = mean(twi2_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([twi2_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(twi2_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_twi2_output_03(i) = mean(twi2_out_03(id(idx)));
        avg_twi2_intensity_03(i,j) = mean(twi2_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%dl3twi2
load([dl3twi2_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl3twi2_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl3twi2_output_01(i) = mean(dl3twi2_out_01(id(idx))); 
        avg_dl3twi2_intensity_01(i,j) = mean(dl3twi2_01(j,id(idx))); 
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl3twi2_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl3twi2_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl3twi2_output_02(i) = mean(dl3twi2_out_02(id(idx)));
        avg_dl3twi2_intensity_02(i,j) = mean(dl3twi2_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl3twi2_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl3twi2_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl3twi2_output_03(i) = mean(dl3twi2_out_03(id(idx)));
        avg_dl3twi2_intensity_03(i,j) = mean(dl3twi2_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl3twi2_4 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl3twi2_04,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl3twi2_output_04(i) = mean(dl3twi2_out_04(id(idx))); 
        avg_dl3twi2_intensity_04(i,j) = mean(dl3twi2_04(j,id(idx))); 
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%dl1
load([dl1_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl1_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl1_output_01(i) = mean(dl1_out_01(id(idx))); 
        avg_dl1_intensity_01(i,j) = mean(dl1_01(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl1_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl1_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl1_output_02(i) = mean(dl1_out_02(id(idx)));
        avg_dl1_intensity_02(i,j) = mean(dl1_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl1_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl1_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl1_output_03(i) = mean(dl1_out_03(id(idx)));
        avg_dl1_intensity_03(i,j) = mean(dl1_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl1_4 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl1_04,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl1_output_04(i) = mean(dl1_out_04(id(idx)));
        avg_dl1_intensity_04(i,j) = mean(dl1_04(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%dl2
load([dl2_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl2_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl2_output_01(i) = mean(dl2_out_01(id(idx))); 
        avg_dl2_intensity_01(i,j) = mean(dl2_01(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl2_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl2_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl2_output_02(i) = mean(dl2_out_02(id(idx)));
        avg_dl2_intensity_02(i,j) = mean(dl2_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl2_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl2_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl2_output_03(i) = mean(dl2_out_03(id(idx)));
        avg_dl2_intensity_03(i,j) = mean(dl2_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl2_4 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl2_04,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl2_output_04(i) = mean(dl2_out_04(id(idx)));
        avg_dl2_intensity_04(i,j) = mean(dl2_04(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%dl12
load([dl12_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl12_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl12_output_01(i) = mean(dl12_out_01(id(idx))); 
        avg_dl12_intensity_01(i,j) = mean(dl12_01(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl12_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl12_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl12_output_02(i) = mean(dl12_out_02(id(idx))); 
        avg_dl12_intensity_02(i,j) = mean(dl12_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([dl12_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(dl12_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_dl12_output_03(i) = mean(dl12_out_03(id(idx))); 
        avg_dl12_intensity_03(i,j) = mean(dl12_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%zld opt
load([zldopt_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(zldopt_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_zldopt_output_01(i) = mean(zldopt_out_01(id(idx))); 
        avg_zldopt_intensity_01(i,j) = mean(zldopt_01(j,id(idx))); 
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([zldopt_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(zldopt_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_zldopt_output_02(i) = mean(zldopt_out_02(id(idx)));
        avg_zldopt_intensity_02(i,j) = mean(zldopt_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([zldopt_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(zldopt_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_zldopt_output_03(i) = mean(zldopt_out_03(id(idx)));
        avg_zldopt_intensity_03(i,j) = mean(zldopt_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

%zld del
load([zlddel_1 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(zlddel_01,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_zlddel_output_01(i) = mean(zlddel_out_01(id(idx))); 
        avg_zlddel_intensity_01(i,j) = mean(zlddel_01(j,id(idx))); 
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([zlddel_2 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(zlddel_02,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_zlddel_output_02(i) = mean(zlddel_out_02(id(idx)));
        avg_zlddel_intensity_02(i,j) = mean(zlddel_02(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

load([zlddel_3 'trajectories_nc14.mat']);
avg_lineage_cy = mean(lineage_cy); 
[sorted,id] = sort(avg_lineage_cy); 
first = min(sorted);
last = max(sorted);
x1 = linspace(first,last,17); 
for j = 1:size(zlddel_03,1)
    for i = 1:16
        idx = find(sorted >= x1(i) & sorted <= x1(i+1)); 
        avg_zlddel_output_03(i) = mean(zlddel_out_03(id(idx)));
        avg_zlddel_intensity_03(i,j) = mean(zlddel_03(j,id(idx)));
    end
end
clear avg_lineage_cy sorted first last x1 idx id

% %% plot average outputs
% figure(1),
% plot(avg_wt_output_01); hold on
% plot(avg_wt_output_02); hold on
% plot(avg_wt_output_03);
% title('wt output'); ylabel('Intensity'); ylim([0 1.5e5])
% figure(2),
% plot(avg_dl3_output_01); hold on
% plot(avg_dl3_output_02); hold on
% plot(avg_dl3_output_03);
% title('dl3 del output'); ylabel('Intensity');  ylim([0 5e4])
% figure(3),
% plot(avg_twi2_output_01); hold on
% plot(avg_twi2_output_02); hold on
% plot(avg_twi2_output_03);
% title('twi2 del output'); ylabel('Intensity');  ylim([0 3e4])
% figure(4),
% plot(avg_dl3twi2_output_02); hold on
% plot(avg_dl3twi2_output_03);
% title('dl3twi2 del output'); ylabel('Intensity');  ylim([0 3e4])

%% combine replicates - output
output_wt(1,1:15) = avg_wt_output_01(2:16);
output_wt(2,1:15) = avg_wt_output_02(2:16);
output_wt(3,1:16) = avg_wt_output_03(1:16);
avg_output_wt = mean(output_wt(:,1:16));
err_output_wt = std(output_wt(:,1:16))./sqrt(size(output_wt,1));

output_wtnew2(1,1:16) = avg_wtnew2_output_01(1:16);
output_wtnew2(2,2:17) = avg_wtnew2_output_02(1:16);
output_wtnew2(3,1:15) = avg_wtnew2_output_03(2:16);
avg_output_wtnew2 = mean(output_wtnew2(:,1:16));
err_output_wtnew2 = std(output_wtnew2(:,1:16))./sqrt(size(output_wtnew2,1));

output_dl3(1,1:15) = avg_dl3_output_01(2:16);
output_dl3(2,2:17) = avg_dl3_output_02(1:16);
output_dl3(3,1:16) = avg_dl3_output_03(1:16);
avg_output_dl3 = mean(output_dl3(:,1:16));
err_output_dl3 = std(output_dl3(:,1:16))./sqrt(size(output_dl3,1));

output_twi2(1,1:15) = avg_twi2_output_01(2:16);
output_twi2(2,2:17) = avg_twi2_output_02(1:16);
output_twi2(3,1:15) = avg_twi2_output_03(2:16);
avg_output_twi2 = mean(output_twi2(:,1:16));
err_output_twi2 = std(output_twi2(:,1:16))./sqrt(size(output_twi2,1));

output_dl3twi2(1,:) = avg_dl3twi2_output_01;
output_dl3twi2(2,:) = avg_dl3twi2_output_02;
output_dl3twi2(3,:) = avg_dl3twi2_output_03;
output_dl3twi2(4,:) = avg_dl3twi2_output_04;
avg_output_dl3twi2 = mean(output_dl3twi2);
err_output_dl3twi2 = std(output_dl3twi2)./sqrt(size(output_dl3twi2,1));

output_dl1(1,4:19) = avg_dl1_output_01(1:16);
output_dl1(2,1:16) = avg_dl1_output_02(1:16);
output_dl1(3,1:16) = avg_dl1_output_03(1:16);
output_dl1(4,1:15) = avg_dl1_output_04(2:16);
avg_output_dl1 = mean(output_dl1(:,1:16));
err_output_dl1 = std(output_dl1(:,1:16))./sqrt(size(output_dl1,1));

output_dl2(1,3:18) = avg_dl2_output_01(1:16);
output_dl2(2,1:15) = avg_dl2_output_02(2:16);
output_dl2(3,1:15) = avg_dl2_output_03(2:16);
output_dl2(4,3:18) = avg_dl2_output_04(1:16);
avg_output_dl2 = mean(output_dl2(:,1:16));
err_output_dl2 = std(output_dl2(:,1:16))./sqrt(size(output_dl2,1));

output_dl12(1,2:17) = avg_dl12_output_01(1:16);
output_dl12(2,1:15) = avg_dl12_output_02(2:16);
output_dl12(3,1:16) = avg_dl12_output_03(1:16);
avg_output_dl12 = mean(output_dl12(:,1:16));
err_output_dl12 = std(output_dl12(:,1:16))./sqrt(size(output_dl12,1));

output_zldopt(1,3:18) = avg_zldopt_output_01(1:16);
output_zldopt(2,1:14) = avg_zldopt_output_02(3:16);
output_zldopt(3,1:16) = avg_zldopt_output_03(1:16);
avg_output_zldopt = mean(output_zldopt(:,1:16));
err_output_zldopt = std(output_zldopt(:,1:16))./sqrt(size(output_zldopt,1));

output_zlddel(1,1:15) = avg_zlddel_output_01(2:16);
output_zlddel(2,2:17) = avg_zlddel_output_02(1:16);
output_zlddel(3,1:15) = avg_zlddel_output_03(2:16);
avg_output_zlddel = mean(output_zlddel(:,1:16));
err_output_zlddel = std(output_zlddel(:,1:16))./sqrt(size(output_zlddel,1));

T = (1:16);
figure,
shadedErrorBar(T(1:16),avg_output_wt(1:16), err_output_wt(1:16),'lineprops','-'); hold on;
% errorbar(avg_output_wtnew2, err_output_wtnew2); hold on;
% shadedErrorBar(T(1:16),avg_output_dl3(1:16), err_output_dl3(1:16),'lineprops','-'); hold on;
% shadedErrorBar(T(1:16),avg_output_twi2(1:16), err_output_twi2(1:16),'lineprops','-'); hold on;
% shadedErrorBar(T(1:16),avg_output_dl3twi2(1:16), err_output_dl3twi2(1:16),'lineprops','-');
shadedErrorBar(T(1:16),avg_output_dl1(1:16), err_output_dl1(1:16),'lineprops','-');
shadedErrorBar(T(1:16),avg_output_dl2(1:16), err_output_dl2(1:16),'lineprops','-');
shadedErrorBar(T(1:16),avg_output_dl12(1:16), err_output_dl12(1:16),'lineprops','-');
% errorbar(avg_output_zldopt, err_output_zldopt);
% errorbar(avg_output_zlddel, err_output_zlddel);
ylim([0 12e4]); xlim([0 17]);
title('Output'); ylabel('Total mRNA output'); legend('wt','dl1','dl2','dl1/2')
ax = gca;  ax.FontSize = 16; axis square;  xlabel('Location');

figure,
shadedErrorBar(T(1:16),avg_output_wt(1:16), err_output_wt(1:16),'lineprops','-'); hold on;
% errorbar(avg_output_wtnew2, err_output_wtnew2); hold on;
shadedErrorBar(T(1:16),avg_output_dl3(1:16), err_output_dl3(1:16),'lineprops','-'); hold on;
shadedErrorBar(T(1:16),avg_output_twi2(1:16), err_output_twi2(1:16),'lineprops','-'); hold on;
shadedErrorBar(T(1:16),avg_output_dl3twi2(1:16), err_output_dl3twi2(1:16),'lineprops','-');
% shadedErrorBar(T(1:16),avg_output_dl1(1:16), err_output_dl1(1:16),'lineprops','-');
% shadedErrorBar(T(1:16),avg_output_dl2(1:16), err_output_dl2(1:16),'lineprops','-');
% shadedErrorBar(T(1:16),avg_output_dl12(1:16), err_output_dl12(1:16),'lineprops','-');
% errorbar(avg_output_zldopt, err_output_zldopt);
% errorbar(avg_output_zlddel, err_output_zlddel);
ylim([0 12e4]); xlim([0 17]);
title('Output'); ylabel('Total mRNA output'); legend('wt','d13','twi2','dl3twi2')
ax = gca;  ax.FontSize = 16; axis square;  xlabel('Location');

% figure(6),
% errorbar(avg_output_dl3, err_output_dl3); hold on;
% errorbar(avg_output_twi2, err_output_twi2); hold on;
% errorbar(avg_output_dl3twi2, err_output_dl3twi2);
% errorbar(avg_output_dl1, err_output_dl1);
% errorbar(avg_output_dl2, err_output_dl2);
% errorbar(avg_output_dl12, err_output_dl12);
% errorbar(avg_output_zldopt, err_output_zldopt);
% errorbar(avg_output_zlddel, err_output_zlddel);
% ylim([0 4e4]); xlim([0 17]);
% title('Output'); ylabel('Total mRNA output'); legend('dl3','twi2','dl3twi2','dl1','dl2','dl1/2','zld opt','zld del')
% ax = gca;  ax.FontSize = 16; axis square; xlabel('Location'); ylim([0 inf]);
%%
max_der_wt_01 = max(diff(avg_wt_output_01));
max_der_wt_02 = max(diff(avg_wt_output_02));
max_der_wt_03 = max(diff(avg_wt_output_03));
avg_max_der_wt = mean([max_der_wt_01, max_der_wt_02, max_der_wt_03]);
err_max_der_wt = std([max_der_wt_01, max_der_wt_02, max_der_wt_03])./sqrt(3);

max_der_dl3_01 = max(diff(avg_dl3_output_01));
max_der_dl3_02 = max(diff(avg_dl3_output_02));
max_der_dl3_03 = max(diff(avg_dl3_output_03));
avg_max_der_dl3 = mean([max_der_dl3_01, max_der_dl3_02, max_der_dl3_03]);
err_max_der_dl3 = std([max_der_dl3_01, max_der_dl3_02, max_der_dl3_03])./sqrt(3);

max_der_twi2_01 = max(diff(avg_twi2_output_01));
max_der_twi2_02 = max(diff(avg_twi2_output_02));
max_der_twi2_03 = max(diff(avg_twi2_output_03));
avg_max_der_twi2 = mean([max_der_twi2_01, max_der_twi2_02, max_der_twi2_03]);
err_max_der_twi2 = std([max_der_twi2_01, max_der_twi2_02, max_der_twi2_03])./sqrt(3);

max_der_dl3twi2_01 = max(diff(avg_dl3twi2_output_01));
max_der_dl3twi2_02 = max(diff(avg_dl3twi2_output_02));
max_der_dl3twi2_03 = max(diff(avg_dl3twi2_output_03));
max_der_dl3twi2_04 = max(diff(avg_dl3twi2_output_04));
avg_max_der_dl3twi2 = mean([max_der_dl3twi2_01, max_der_dl3twi2_02, max_der_dl3twi2_03, max_der_dl3twi2_04]);
err_max_der_dl3twi2 = std([max_der_dl3twi2_01, max_der_dl3twi2_02, max_der_dl3twi2_03, max_der_dl3twi2_03])./sqrt(4);

max_der_dl1_01 = max(diff(avg_dl1_output_01));
max_der_dl1_02 = max(diff(avg_dl1_output_02));
max_der_dl1_03 = max(diff(avg_dl1_output_03));
max_der_dl1_04 = max(diff(avg_dl1_output_04));
avg_max_der_dl1 = mean([max_der_dl1_01, max_der_dl1_02, max_der_dl1_03,  max_der_dl1_04]);
err_max_der_dl1 = std([max_der_dl1_01, max_der_dl1_02, max_der_dl1_03, max_der_dl1_04])./sqrt(4);

max_der_dl2_01 = max(diff(avg_dl2_output_01));
max_der_dl2_02 = max(diff(avg_dl2_output_02));
max_der_dl2_03 = max(diff(avg_dl2_output_03));
max_der_dl2_04 = max(diff(avg_dl2_output_04));
avg_max_der_dl2 = mean([max_der_dl2_01, max_der_dl2_02, max_der_dl2_03, max_der_dl2_04]);
err_max_der_dl2 = std([max_der_dl2_01, max_der_dl2_02, max_der_dl2_03, max_der_dl2_04])./sqrt(4);

max_der_dl12_01 = max(diff(avg_dl12_output_01));
max_der_dl12_02 = max(diff(avg_dl12_output_02));
max_der_dl12_03 = max(diff(avg_dl12_output_03));
avg_max_der_dl12 = mean([max_der_dl12_01, max_der_dl12_02, max_der_dl12_03]);
err_max_der_dl12 = std([max_der_dl12_01, max_der_dl12_02, max_der_dl12_03])./sqrt(3);

figure,
errorbar(1, avg_max_der_wt, err_max_der_wt, '.','Markersize',10); hold on;
% errorbar(2, avg_max_der_dl3, err_max_der_dl3,'.', 'Markersize',10); hold on;
% errorbar(3, avg_max_der_twi2, err_max_der_twi2,'.', 'Markersize',10); hold on;
% errorbar(4, avg_max_der_dl3twi2, err_max_der_dl3twi2,'.', 'Markersize',10);
errorbar(2, avg_max_der_dl1, err_max_der_dl1, '.' ,'Markersize',10);
errorbar(3, avg_max_der_dl2, err_max_der_dl2, '.', 'Markersize',10);
errorbar(4, avg_max_der_dl12, err_max_der_dl12, '.', 'Markersize',10);
xlim([0 5]); ylim([0 4.5e4])
title('Expression steepness'); ylabel('steepness'); legend('wt','dl1','dl2','dl12')
ax = gca;  ax.FontSize = 16; axis square;  xlabel('x');

%% combine replicates - average intensity
avg_wt_intensity_01 = mean(avg_wt_intensity_01,2)'; avg_wt_intensity_02 = mean(avg_wt_intensity_02,2)'; avg_wt_intensity_03 = mean(avg_wt_intensity_03,2)';
intensity_wt(1,1:15) = avg_wt_intensity_01(2:16);
intensity_wt(2,1:15) = avg_wt_intensity_02(2:16);
intensity_wt(3,1:16) = avg_wt_intensity_03(1:16);
avg_intensity_wt = mean(intensity_wt(:,1:16));
err_intensity_wt = std(intensity_wt(:,1:16))./sqrt(size(intensity_wt,1));

intensity_wtnew2(1,1:16) = avg_wtnew2_intensity_01(1:16);
intensity_wtnew2(2,2:17) = avg_wtnew2_intensity_02(1:16);
intensity_wtnew2(3,1:15) = avg_wtnew2_intensity_03(2:16);
avg_intensity_wtnew2 = mean(intensity_wtnew2(:,1:16));
err_intensity_wtnew2 = std(intensity_wtnew2(:,1:16))./sqrt(size(intensity_wtnew2,1));

avg_dl3_intensity_01 = mean(avg_dl3_intensity_01,2)'; avg_dl3_intensity_02 = mean(avg_dl3_intensity_02,2)'; avg_dl3_intensity_03 = mean(avg_dl3_intensity_03,2)';
intensity_dl3(1,1:15) = avg_dl3_intensity_01(2:16);
intensity_dl3(2,2:17) = avg_dl3_intensity_02(1:16);
intensity_dl3(3,1:16) = avg_dl3_intensity_03(1:16);
avg_intensity_dl3 = mean(intensity_dl3(:,1:16));
err_intensity_dl3 = std(intensity_dl3(:,1:16))./sqrt(size(intensity_dl3,1));

avg_twi2_intensity_01 = mean(avg_twi2_intensity_01,2)'; avg_twi2_intensity_02 = mean(avg_twi2_intensity_02,2)'; avg_twi2_intensity_03 = mean(avg_twi2_intensity_03,2)';
intensity_twi2(1,1:15) = avg_twi2_intensity_01(2:16);
intensity_twi2(2,2:17) = avg_twi2_intensity_02(1:16);
intensity_twi2(3,1:15) = avg_twi2_intensity_03(2:16);
avg_intensity_twi2 = mean(intensity_twi2(:,1:16));
err_intensity_twi2 = std(intensity_twi2(:,1:16))./sqrt(size(intensity_twi2,1));

avg_dl3twi2_intensity_01 = mean(avg_dl3twi2_intensity_01,2)'; avg_dl3twi2_intensity_02 = mean(avg_dl3twi2_intensity_02,2)';...
    avg_dl3twi2_intensity_03 = mean(avg_dl3twi2_intensity_03,2)'; avg_dl3twi2_intensity_04 = mean(avg_dl3twi2_intensity_04,2');
intensity_dl3twi2(1,1:16) = avg_dl3twi2_intensity_01(1:16);
intensity_dl3twi2(2,1:16) = avg_dl3twi2_intensity_02(1:16);
intensity_dl3twi2(3,1:16) = avg_dl3twi2_intensity_03(1:16);
intensity_dl3twi2(4,1:16) = avg_dl3twi2_intensity_04(1:16);
avg_intensity_dl3twi2 = mean(intensity_dl3twi2(:,1:16));
err_intensity_dl3twi2 = std(intensity_dl3twi2(:,1:16))./sqrt(size(intensity_dl3twi2,1));

avg_dl1_intensity_01 = mean(avg_dl1_intensity_01,2)'; avg_dl1_intensity_02 = mean(avg_dl1_intensity_02,2)';...
    avg_dl1_intensity_03 = mean(avg_dl1_intensity_03,2)'; avg_dl1_intensity_04 = mean(avg_dl1_intensity_04,2)';
intensity_dl1(1,4:19) = avg_dl1_intensity_01(1:16);
intensity_dl1(2,1:16) = avg_dl1_intensity_02(1:16);
intensity_dl1(3,1:16) = avg_dl1_intensity_03(1:16);
intensity_dl1(4,1:15) = avg_dl1_intensity_04(2:16);
avg_intensity_dl1 = mean(intensity_dl1(:,1:16));
err_intensity_dl1 = std(intensity_dl1(:,1:16))./sqrt(size(intensity_dl1,1));

avg_dl2_intensity_01 = mean(avg_dl2_intensity_01,2)'; avg_dl2_intensity_02 = mean(avg_dl2_intensity_02,2)';...
    avg_dl2_intensity_03 = mean(avg_dl2_intensity_03,2)'; avg_dl2_intensity_04 = mean(avg_dl2_intensity_04,2)';
intensity_dl2(1,3:18) = avg_dl2_intensity_01(1:16);
intensity_dl2(2,1:15) = avg_dl2_intensity_02(2:16);
intensity_dl2(3,1:15) = avg_dl2_intensity_03(2:16);
intensity_dl2(4,3:18) = avg_dl2_intensity_04(1:16);
avg_intensity_dl2 = mean(intensity_dl2(:,1:16));
err_intensity_dl2 = std(intensity_dl2(:,1:16))./sqrt(size(intensity_dl2,1));

avg_dl12_intensity_01 = mean(avg_dl12_intensity_01,2)'; avg_dl12_intensity_02 = mean(avg_dl12_intensity_02,2)'; avg_dl12_intensity_03 = mean(avg_dl12_intensity_03,2)';
intensity_dl12(1,2:17) = avg_dl12_intensity_01(1:16);
intensity_dl12(2,1:15) = avg_dl12_intensity_02(2:16);
intensity_dl12(3,1:16) = avg_dl12_intensity_03(1:16);
avg_intensity_dl12 = mean(intensity_dl12(:,1:16));
err_intensity_dl12 = std(intensity_dl12(:,1:16))./sqrt(size(intensity_dl12,1));

avg_zldopt_intensity_01 = mean(avg_zldopt_intensity_01,2)'; avg_zldopt_intensity_02 = mean(avg_zldopt_intensity_02,2)'; avg_zldopt_intensity_03 = mean(avg_zldopt_intensity_03,2)';
intensity_zldopt(1,3:18) = avg_zldopt_intensity_01(1:16);
intensity_zldopt(2,1:14) = avg_zldopt_intensity_02(3:16);
intensity_zldopt(3,1:16) = avg_zldopt_intensity_03(1:16);
avg_intensity_zldopt = mean(intensity_zldopt(:,1:16));
err_intensity_zldopt = std(intensity_zldopt(:,1:16))./sqrt(size(intensity_zldopt,1));

avg_zlddel_intensity_01 = mean(avg_zlddel_intensity_01,2)'; avg_zlddel_intensity_02 = mean(avg_zlddel_intensity_02,2)'; avg_zlddel_intensity_03 = mean(avg_zlddel_intensity_03,2)';
intensity_zlddel(1,1:15) = avg_zlddel_intensity_01(2:16);
intensity_zlddel(2,2:17) = avg_zlddel_intensity_02(1:16);
intensity_zlddel(3,1:15) = avg_zlddel_intensity_03(2:16);
avg_intensity_zlddel = mean(intensity_zlddel(:,1:16));
err_intensity_zlddel = std(intensity_zlddel(:,1:16))./sqrt(size(intensity_zlddel,1));

T = (1:16);
figure,
shadedErrorBar(T(1:16), avg_intensity_wt(1:16), err_intensity_wt(1:16),'lineprops','-'); hold on;
% errorbar(avg_intensity_wtnew2, err_intensity_wtnew2); hold on;
shadedErrorBar(T(1:16), avg_intensity_dl3(1:16), err_intensity_dl3(1:16),'lineprops','-'); hold on;
shadedErrorBar(T(1:16), avg_intensity_twi2(1:16), err_intensity_twi2(1:16),'lineprops','-'); hold on;
shadedErrorBar(T(1:16), avg_intensity_dl3twi2(1:16), err_intensity_dl3twi2(1:16),'lineprops','-');
% shadedErrorBar(T(1:16), avg_intensity_dl1(1:16), err_intensity_dl1(1:16),'lineprops','-');
% shadedErrorBar(T(1:16), avg_intensity_dl2(1:16), err_intensity_dl2(1:16),'lineprops','-');
% shadedErrorBar(T(1:16), avg_intensity_dl12(1:16), err_intensity_dl12(1:16),'lineprops','-');
% shadedErrorBar(T(1:16), avg_intensity_zldopt, err_intensity_zldopt);
% shadedErrorBar(T(1:16), avg_intensity_zlddel, err_intensity_zlddel);
ylim([0 2.5e3]); xlim([0 17]);
title('Average intensity'); ylabel('fluorescence intensity(a.u.)'); legend('wt','dl3','twi2','dl3twi2')
ax = gca;  ax.FontSize = 16; axis square;  xlabel('Location');

%% expression domain
half_max_output_wt_01 = 0.5*max(avg_wt_output_01);
dom_wt_01 = length(find(avg_wt_output_01>half_max_output_wt_01));
half_max_output_wt_02 = 0.5*max(avg_wt_output_02);
dom_wt_02 = length(find(avg_wt_output_02>half_max_output_wt_02));
half_max_output_wt_03 = 0.5*max(avg_wt_output_03);
dom_wt_03 = length(find(avg_wt_output_03>half_max_output_wt_03));
avg_dom_wt = mean([dom_wt_01, dom_wt_02, dom_wt_03]);
err_dom_wt = std([dom_wt_01, dom_wt_02, dom_wt_03])./sqrt(3);

half_max_output_wtnew2_01 = 0.5*max(avg_wtnew2_output_01);
dom_wtnew2_01 = length(find(avg_wtnew2_output_01>half_max_output_wtnew2_01));
half_max_output_wtnew2_02 = 0.5*max(avg_wtnew2_output_02);
dom_wtnew2_02 = length(find(avg_wtnew2_output_02>half_max_output_wtnew2_02));
half_max_output_wtnew2_03 = 0.5*max(avg_wtnew2_output_03);
dom_wtnew2_03 = length(find(avg_wtnew2_output_03>half_max_output_wtnew2_03));
avg_dom_wtnew2 = mean([dom_wtnew2_01, dom_wtnew2_02, dom_wtnew2_03]);
err_dom_wtnew2 = std([dom_wtnew2_01, dom_wtnew2_02, dom_wtnew2_03]);

half_max_output_dl3_01 = 0.5*max(avg_dl3_output_01);
dom_dl3_01 = length(find(avg_dl3_output_01>half_max_output_dl3_01));
half_max_output_dl3_02 = 0.5*max(avg_dl3_output_02);
dom_dl3_02 = length(find(avg_dl3_output_02>half_max_output_dl3_02));
half_max_output_dl3_03 = 0.5*max(avg_dl3_output_03);
dom_dl3_03 = length(find(avg_dl3_output_03>half_max_output_dl3_03));
avg_dom_dl3 = mean([dom_dl3_01, dom_dl3_02, dom_dl3_03]);
err_dom_dl3 = std([dom_dl3_01, dom_dl3_02, dom_dl3_03])./sqrt(3);

half_max_output_twi2_01 = 0.5*max(avg_twi2_output_01);
dom_twi2_01 = length(find(avg_twi2_output_01>half_max_output_twi2_01));
half_max_output_twi2_02 = 0.5*max(avg_twi2_output_02);
dom_twi2_02 = length(find(avg_twi2_output_02>half_max_output_twi2_02));
half_max_output_twi2_03 = 0.5*max(avg_twi2_output_03);
dom_twi2_03 = length(find(avg_twi2_output_03>half_max_output_twi2_03));
avg_dom_twi2 = mean([dom_twi2_01, dom_twi2_02, dom_twi2_03]);
err_dom_twi2 = std([dom_twi2_01, dom_twi2_02, dom_twi2_03])./sqrt(3);

half_max_output_dl3twi2_01 = 0.5*max(avg_dl3twi2_output_01);
dom_dl3twi2_01 = length(find(avg_dl3twi2_output_01>half_max_output_dl3twi2_01));
half_max_output_dl3twi2_02 = 0.5*max(avg_dl3twi2_output_02);
dom_dl3twi2_02 = length(find(avg_dl3twi2_output_02>half_max_output_dl3twi2_02));
half_max_output_dl3twi2_03 = 0.5*max(avg_dl3twi2_output_03);
dom_dl3twi2_03 = length(find(avg_dl3twi2_output_03>half_max_output_dl3twi2_03));
half_max_output_dl3twi2_04 = 0.5*max(avg_dl3twi2_output_04);
dom_dl3twi2_04 = length(find(avg_dl3twi2_output_04>half_max_output_dl3twi2_04));
avg_dom_dl3twi2 = mean([dom_dl3twi2_01, dom_dl3twi2_02, dom_dl3twi2_03, dom_dl3twi2_04]);
err_dom_dl3twi2 = std([dom_dl3twi2_01, dom_dl3twi2_02, dom_dl3twi2_03, dom_dl3twi2_04])./sqrt(4);

half_max_output_dl1_01 = 0.5*max(avg_dl1_output_01);
dom_dl1_01 = length(find(avg_dl1_output_01>half_max_output_dl1_01));
half_max_output_dl1_02 = 0.5*max(avg_dl1_output_02);
dom_dl1_02 = length(find(avg_dl1_output_02>half_max_output_dl1_02));
half_max_output_dl1_03 = 0.5*max(avg_dl1_output_03);
dom_dl1_03 = length(find(avg_dl1_output_03>half_max_output_dl1_03));
half_max_output_dl1_04 = 0.5*max(avg_dl1_output_04);
dom_dl1_04 = length(find(avg_dl1_output_04>half_max_output_dl1_04));
avg_dom_dl1 = mean([dom_dl1_01, dom_dl1_02, dom_dl1_03, dom_dl1_04]);
err_dom_dl1 = std([dom_dl1_01, dom_dl1_02, dom_dl1_03, dom_dl1_04])./sqrt(4);

half_max_output_dl2_01 = 0.5*max(avg_dl2_output_01);
dom_dl2_01 = length(find(avg_dl2_output_01>half_max_output_dl2_01));
half_max_output_dl2_02 = 0.5*max(avg_dl2_output_02);
dom_dl2_02 = length(find(avg_dl2_output_02>half_max_output_dl2_02));
half_max_output_dl2_03 = 0.5*max(avg_dl2_output_03);
dom_dl2_03 = length(find(avg_dl2_output_03>half_max_output_dl2_03));
half_max_output_dl2_04 = 0.5*max(avg_dl2_output_04);
dom_dl2_04 = length(find(avg_dl2_output_04>half_max_output_dl2_04));
avg_dom_dl2 = mean([dom_dl2_01, dom_dl2_02, dom_dl2_03, dom_dl2_04]);
err_dom_dl2 = std([dom_dl2_01, dom_dl2_02, dom_dl2_03, dom_dl2_04])./sqrt(4);

half_max_output_dl12_01 = 0.5*max(avg_dl12_output_01);
dom_dl12_01 = length(find(avg_dl12_output_01>half_max_output_dl12_01));
half_max_output_dl12_02 = 0.5*max(avg_dl12_output_02);
dom_dl12_02 = length(find(avg_dl12_output_02>half_max_output_dl12_02));
half_max_output_dl12_03 = 0.5*max(avg_dl12_output_03);
dom_dl12_03 = length(find(avg_dl12_output_03>half_max_output_dl12_03));
avg_dom_dl12 = mean([dom_dl12_01, dom_dl12_02, dom_dl12_03]);
err_dom_dl12 = std([dom_dl12_01, dom_dl12_02, dom_dl12_03])./sqrt(3);

half_max_output_zldopt_01 = 0.5*max(avg_zldopt_output_01);
dom_zldopt_01 = length(find(avg_zldopt_output_01>half_max_output_zldopt_01));
half_max_output_zldopt_02 = 0.5*max(avg_zldopt_output_02);
dom_zldopt_02 = length(find(avg_zldopt_output_02>half_max_output_zldopt_02));
half_max_output_zldopt_03 = 0.5*max(avg_zldopt_output_03);
dom_zldopt_03 = length(find(avg_zldopt_output_03>half_max_output_zldopt_03));
avg_dom_zldopt = mean([dom_zldopt_01, dom_zldopt_02, dom_zldopt_03]);
err_dom_zldopt = std([dom_zldopt_01, dom_zldopt_02, dom_zldopt_03]);

half_max_output_zlddel_01 = 0.5*max(avg_zlddel_output_01);
dom_zlddel_01 = length(find(avg_zlddel_output_01>half_max_output_zlddel_01));
half_max_output_zlddel_02 = 0.5*max(avg_zlddel_output_02);
dom_zlddel_02 = length(find(avg_zlddel_output_02>half_max_output_zlddel_02));
half_max_output_zlddel_03 = 0.5*max(avg_zlddel_output_03);
dom_zlddel_03 = length(find(avg_zlddel_output_03>half_max_output_zlddel_03));
avg_dom_zlddel = mean([dom_zlddel_01, dom_zlddel_02, dom_zlddel_03]);
err_dom_zlddel = std([dom_zlddel_01, dom_zlddel_02, dom_zlddel_03])./sqrt(3);

figure(7),
errorbar(1, avg_dom_wt, err_dom_wt, '.','Markersize',10); hold on;
% errorbar(2, avg_dom_wtnew2, err_dom_wtnew2, '.', 'Markersize',10);
errorbar(2, avg_dom_dl3, err_dom_dl3,'.', 'Markersize',10); hold on;
errorbar(3, avg_dom_twi2, err_dom_twi2,'.', 'Markersize',10); hold on;
errorbar(4, avg_dom_dl3twi2, err_dom_dl3twi2,'.', 'Markersize',10);
errorbar(5, avg_dom_dl1, err_dom_dl1, '.' ,'Markersize',10);
errorbar(6, avg_dom_dl2, err_dom_dl2, '.', 'Markersize',10);
errorbar(7, avg_dom_dl12, err_dom_dl12, '.', 'Markersize',10);
% errorbar(9, avg_dom_zldopt, err_dom_zldopt, '.', 'Markersize',10);
% errorbar(10, avg_dom_zlddel, err_dom_zlddel, '.', 'Markersize',10);
xlim([0 8]); ylim([7 15])
title('Expression domains'); ylabel('Expression domain'); legend('wt','dl3','twi2','dl3twi2','dl1','dl2','dl1/2')
ax = gca;  ax.FontSize = 16; axis square;  xlabel('x');

% %% 
% adj_wt_intensity_01 = zeros(16,126); adj_wt_intensity_02 = zeros(16,128); adj_wt_intensity_03 = zeros(16,135); 
% 
% adj_wt_intensity_01(1:15,:) = avg_wt_intensity_01(2:16,:);
% adj_wt_intensity_02(1:15,:) = avg_wt_intensity_02(2:16,:);
% adj_wt_intensity_03(1:16,:) = avg_wt_intensity_03(1:16,:);
% 
% for j = 1:size(wt_01,1)
%     for i = 1:16
%         avg_wt_intensity(i,j) = mean([adj_wt_intensity_01(i,j), adj_wt_intensity_02(i,j), adj_wt_intensity_03(i,j)]);
%     end
% end
% 
% adj_dl3_intensity_01 = zeros(16,169); adj_dl3_intensity_02 = zeros(16,142); adj_dl3_intensity_03 = zeros(16,146); 
% adj_dl3_intensity_01(1:15,:) = avg_dl3_intensity_01(2:16,:);
% adj_dl3_intensity_02(2:17,:) = avg_dl3_intensity_02(1:16,:);
% adj_dl3_intensity_03(1:16,:) = avg_dl3_intensity_03(1:16,:);
% 
% for j = 1:size(dl3_02,1)
%     for i =1:16
%         avg_dl3_intensity(i,j) = mean([adj_dl3_intensity_01(i,j), adj_dl3_intensity_02(i,j), adj_dl3_intensity_03(i,j)]);
%     end
% end
% 
% adj_twi2_intensity_01 = zeros(16,124); adj_twi2_intensity_02 = zeros(16,123); adj_twi2_intensity_03 = zeros(16,123); 
% adj_twi2_intensity_01(1:15,:) = avg_twi2_intensity_01(2:16,:);
% adj_twi2_intensity_02(2:17,:) = avg_twi2_intensity_02(1:16,:);
% adj_twi2_intensity_03(1:15,:) = avg_twi2_intensity_03(2:16,:);
% for j = 1:size(twi2_02,1)
%     for i =1:16
%         avg_twi2_intensity(i,j) = mean([adj_twi2_intensity_01(i,j), adj_twi2_intensity_02(i,j), adj_twi2_intensity_03(i,j)]);
%     end
% end
% adj_d3twi2_intensity_01 = zeros(16,125); adj_dl3twi2_intensity_02 = zeros(16,129); adj_d3twi2_intensity_03 = zeros(16,135); adj_dl3twi2_intensity_04 = zeros(16,126);
% adj_dl3twi2_intensity_01(1:16,:) = avg_dl3twi2_intensity_01(1:16,:);
% adj_dl3twi2_intensity_02(1:15,:) = avg_dl3twi2_intensity_02(2:16,:);
% adj_dl3twi2_intensity_03(1:16,:) = avg_dl3twi2_intensity_03(1:16,:);
% adj_dl3twi2_intensity_04(1:16,:) = avg_dl3twi2_intensity_04(1:16,:);
% for j = 1:size(dl3twi2_01,1)
%     for i =1:16
%         avg_dl3twi2_intensity(i,j) = mean([adj_dl3twi2_intensity_01(i,j), adj_dl3twi2_intensity_02(i,j),...
%             adj_dl3twi2_intensity_03(i,j), adj_dl3twi2_intensity_04(i,j)]);
%     end
% end
% 
% adj_dl2_intensity_01 = zeros(16,133); adj_dl2_intensity_02 = zeros(16,132); adj_dl2_intensity_03 = zeros(16,125); adj_dl2_intensity_04 = zeros(16,124); 
% adj_dl2_intensity_01(3:18,:) = avg_dl2_intensity_01(1:16,:);
% adj_dl2_intensity_02(1:15,:) = avg_dl2_intensity_02(2:16,:);
% adj_dl2_intensity_03(1:15,:) = avg_dl2_intensity_03(2:16,:);
% adj_dl2_intensity_04(3:18,:) = avg_dl2_intensity_04(1:16,:);
% for j = 1:size(dl2_04,1)
%     for i =1:16
%         avg_dl2_intensity(i,j) = mean([adj_dl2_intensity_01(i,j), adj_dl2_intensity_02(i,j), adj_dl2_intensity_03(i,j), adj_dl2_intensity_04(i,j)]);
%     end
% end
% 
% adj_dl12_intensity_01 = zeros(16,131); adj_dl12_intensity_02 = zeros(16,119); adj_dl12_intensity_03 = zeros(16,129);
% adj_dl12_intensity_01(2:17,:) = avg_dl12_intensity_01(1:16,:);
% adj_dl12_intensity_02(1:15,:) = avg_dl12_intensity_02(2:16,:);
% adj_dl12_intensity_03(1:16,:) = avg_dl12_intensity_03(1:16,:);
% for j = 1:size(dl12_02,1)
%     for i =1:15
%         avg_dl12_intensity(i,j) = mean([adj_dl12_intensity_01(i,j), adj_dl12_intensity_02(i,j), adj_dl12_intensity_03(i,j)]);
%     end
% end