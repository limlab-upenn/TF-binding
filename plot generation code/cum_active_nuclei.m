clear
close all
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt_new');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_wt_new2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl12');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel');

%wt
for i = 1:size(wt_01,1)
    tmp = find(wt_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wt_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wt_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wt_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wt_01(i,1:size(tmp3,2)) = tmp3;
            cum_wt_act_01(i) = length(find(act_nuc_wt_01(i,:)~=0));
        end
    end
end
half_max_wt_01 = find(cum_wt_act_01> max(cum_wt_act_01)/2,1)*0.35; % find time-point that 50% of total active nuclei is reached
fcum_wt_01 = cum_wt_act_01./size(act_nuc_wt_01,2);
for i = 1:size(wt_02,1)
    tmp = find(wt_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wt_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wt_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wt_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wt_02(i,1:size(tmp3,2)) = tmp3;
            cum_wt_act_02(i) = length(find(act_nuc_wt_02(i,:)~=0));
        end
    end
end
half_max_wt_02 = find(cum_wt_act_02> max(cum_wt_act_02)/2,1)*0.35;
fcum_wt_02 = cum_wt_act_02./size(act_nuc_wt_02,2);
for i = 1:size(wt_03,1)
    tmp = find(wt_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wt_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wt_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wt_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wt_03(i,1:size(tmp3,2)) = tmp3;
            cum_wt_act_03(i) = length(find(act_nuc_wt_03(i,:)~=0));
        end
    end
end
half_max_wt_03 = find(cum_wt_act_01> max(cum_wt_act_03)/2,1)*0.35;
fcum_wt_03 = cum_wt_act_03./size(act_nuc_wt_03,2);

%wtnew 
for i = 1:size(wtnew_01,1)
    tmp = find(wtnew_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wtnew_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wtnew_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wtnew_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wtnew_01(i,1:size(tmp3,2)) = tmp3;
            cum_wtnew_act_01(i) = length(find(act_nuc_wtnew_01(i,:)~=0));
        end
    end
end
half_max_wtnew_01 = find(cum_wtnew_act_01> max(cum_wtnew_act_01)/2,1)*0.35;
fcum_wtnew_01 = cum_wtnew_act_01./size(act_nuc_wtnew_01,2);
for i = 1:size(wtnew_02,1)
    tmp = find(wtnew_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wtnew_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wtnew_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wtnew_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wtnew_02(i,1:size(tmp3,2)) = tmp3;
            cum_wtnew_act_02(i) = length(find(act_nuc_wtnew_02(i,:)~=0));
        end
    end
end
half_max_wtnew_02 = find(cum_wtnew_act_02> max(cum_wtnew_act_02)/2,1)*0.35;
fcum_wtnew_02 = cum_wtnew_act_02./size(act_nuc_wtnew_02,2);
for i = 1:size(wtnew_03,1)
    tmp = find(wtnew_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wtnew_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wtnew_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wtnew_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wtnew_03(i,1:size(tmp3,2)) = tmp3;
            cum_wtnew_act_03(i) = length(find(act_nuc_wtnew_03(i,:)~=0));
        end
    end
end
half_max_wtnew_03 = find(cum_wtnew_act_03> max(cum_wtnew_act_03)/2,1)*0.35;
fcum_wtnew_03 = cum_wtnew_act_03./size(act_nuc_wtnew_03,2);

%wtnew2 
for i = 1:size(wtnew2_01,1)
    tmp = find(wtnew2_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wtnew2_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wtnew2_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wtnew2_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wtnew2_01(i,1:size(tmp3,2)) = tmp3;
            cum_wtnew2_act_01(i) = length(find(act_nuc_wtnew2_01(i,:)~=0));
        end
    end
end
half_max_wtnew2_01 = find(cum_wtnew2_act_01> max(cum_wtnew2_act_01)/2,1)*0.35;
fcum_wtnew2_01 = cum_wtnew2_act_01./size(act_nuc_wtnew2_01,2);
for i = 1:size(wtnew2_02,1)
    tmp = find(wtnew2_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wtnew2_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wtnew2_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wtnew2_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wtnew2_02(i,1:size(tmp3,2)) = tmp3;
            cum_wtnew2_act_02(i) = length(find(act_nuc_wtnew2_02(i,:)~=0));
        end
    end
end
half_max_wtnew2_02 = find(cum_wtnew2_act_02> max(cum_wtnew2_act_02)/2,1)*0.35;
fcum_wtnew2_02 = cum_wtnew2_act_02./size(act_nuc_wtnew2_02,2);
for i = 1:size(wtnew2_03,1)
    tmp = find(wtnew2_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_wtnew2_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_wtnew2_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_wtnew2_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_wtnew2_03(i,1:size(tmp3,2)) = tmp3;
            cum_wtnew2_act_03(i) = length(find(act_nuc_wtnew2_03(i,:)~=0));
        end
    end
end
half_max_wtnew2_03 = find(cum_wtnew2_act_03> max(cum_wtnew2_act_03)/2,1)*0.35;
fcum_wtnew2_03 = cum_wtnew2_act_03./size(act_nuc_wtnew2_03,2);

%dl3 
for i = 1:size(dl3_01,1)
    tmp = find(dl3_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl3_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl3_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl3_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl3_01(i,1:size(tmp3,2)) = tmp3;
            cum_dl3_act_01(i) = length(find(act_nuc_dl3_01(i,:)~=0));
        end
    end
end
half_max_dl3_01 = find(cum_dl3_act_01> max(cum_dl3_act_01)/2,1)*0.35;
fcum_dl3_01 = cum_dl3_act_01./size(act_nuc_dl3_01,2);
for i = 1:size(dl3_02,1)
    tmp = find(dl3_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl3_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl3_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl3_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl3_02(i,1:size(tmp3,2)) = tmp3;
            cum_dl3_act_02(i) = length(find(act_nuc_dl3_02(i,:)~=0));
        end
    end
end
half_max_dl3_02 = find(cum_dl3_act_02> max(cum_dl3_act_02)/2,1)*0.35;
fcum_dl3_02 = cum_dl3_act_02./size(act_nuc_dl3_02,2);
for i = 1:size(dl3_03,1)
    tmp = find(dl3_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl3_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl3_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl3_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl3_03(i,1:size(tmp3,2)) = tmp3;
            cum_dl3_act_03(i) = length(find(act_nuc_dl3_03(i,:)~=0));
        end
    end
end
half_max_dl3_03 = find(cum_dl3_act_03> max(cum_dl3_act_03)/2,1)*0.35;
fcum_dl3_03 = cum_dl3_act_03./size(act_nuc_dl3_03,2);

%twi2
for i = 1:size(twi2_01,1)
    tmp = find(twi2_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_twi2_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_twi2_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_twi2_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_twi2_01(i,1:size(tmp3,2)) = tmp3;
            cum_twi2_act_01(i) = length(find(act_nuc_twi2_01(i,:)~=0));
        end
    end
end
half_max_twi2_01 = find(cum_twi2_act_01> max(cum_twi2_act_01)/2,1)*0.35;
fcum_twi2_01 = cum_twi2_act_01./size(act_nuc_twi2_01,2);
for i = 1:size(twi2_02,1)
    tmp = find(twi2_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_twi2_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_twi2_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_twi2_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_twi2_02(i,1:size(tmp3,2)) = tmp3;
            cum_twi2_act_02(i) = length(find(act_nuc_twi2_02(i,:)~=0));
        end
    end
end
half_max_twi2_02 = find(cum_twi2_act_02> max(cum_twi2_act_02)/2,1)*0.35;
fcum_twi2_02 = cum_twi2_act_02./size(act_nuc_twi2_02,2);
for i = 1:size(twi2_03,1)
    tmp = find(twi2_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_twi2_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_twi2_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_twi2_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_twi2_03(i,1:size(tmp3,2)) = tmp3;
            cum_twi2_act_03(i) = length(find(act_nuc_twi2_03(i,:)~=0));
        end
    end
end
half_max_twi2_03 = find(cum_twi2_act_03> max(cum_twi2_act_03)/2,1)*0.35;
fcum_twi2_03 = cum_twi2_act_03./size(act_nuc_twi2_03,2);

%dl3twi2
for i = 1:size(dl3twi2_01,1)
    tmp = find(dl3twi2_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl3twi2_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl3twi2_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl3twi2_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl3twi2_01(i,1:size(tmp3,2)) = tmp3;
            cum_dl3twi2_act_01(i) = length(find(act_nuc_dl3twi2_01(i,:)~=0));
        end
    end
end
half_max_dl3twi2_01 = find(cum_dl3twi2_act_01> max(cum_dl3twi2_act_01)/2,1)*0.35;
fcum_dl3twi2_01 = cum_dl3twi2_act_01./size(act_nuc_dl3twi2_01,2);
for i = 1:size(dl3twi2_02,1)
    tmp = find(dl3twi2_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl3twi2_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl3twi2_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl3twi2_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl3twi2_02(i,1:size(tmp3,2)) = tmp3;
            cum_dl3twi2_act_02(i) = length(find(act_nuc_dl3twi2_02(i,:)~=0));
        end
    end
end
half_max_dl3twi2_02 = find(cum_dl3twi2_act_02> max(cum_dl3twi2_act_02)/2,1)*0.35;
fcum_dl3twi2_02 = cum_dl3twi2_act_02./size(act_nuc_dl3twi2_02,2);
for i = 1:size(dl3twi2_03,1)
    tmp = find(dl3twi2_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl3twi2_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl3twi2_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl3twi2_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl3twi2_03(i,1:size(tmp3,2)) = tmp3;
            cum_dl3twi2_act_03(i) = length(find(act_nuc_dl3twi2_03(i,:)~=0));
        end
    end
end
half_max_dl3twi2_03 = find(cum_dl3twi2_act_03> max(cum_dl3twi2_act_03)/2,1)*0.35;
fcum_dl3twi2_03 = cum_dl3twi2_act_03./size(act_nuc_dl3twi2_03,2);

for i = 1:size(dl3twi2_04,1)
    tmp = find(dl3twi2_04(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl3twi2_04(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl3twi2_04(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl3twi2_04(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl3twi2_04(i,1:size(tmp3,2)) = tmp3;
            cum_dl3twi2_act_04(i) = length(find(act_nuc_dl3twi2_04(i,:)~=0));
        end
    end
end
half_max_dl3twi2_04 = find(cum_dl3twi2_act_04> max(cum_dl3twi2_act_04)/2,1)*0.35;
fcum_dl3twi2_04 = cum_dl3twi2_act_04./size(act_nuc_dl3twi2_04,2);

%dl1
for i = 1:size(dl1_01,1)
    tmp = find(dl1_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl1_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl1_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl1_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl1_01(i,1:size(tmp3,2)) = tmp3;
            cum_dl1_act_01(i) = length(find(act_nuc_dl1_01(i,:)~=0));
        end
    end
end
half_max_dl1_01 = find(cum_dl1_act_01> max(cum_dl1_act_01)/2,1)*0.35;
fcum_dl1_01 = cum_dl1_act_01./size(act_nuc_dl1_01,2);
for i = 1:size(dl1_02,1)
    tmp = find(dl1_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl1_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl1_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl1_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl1_02(i,1:size(tmp3,2)) = tmp3;
            cum_dl1_act_02(i) = length(find(act_nuc_dl1_02(i,:)~=0));
        end
    end
end
half_max_dl1_02 = find(cum_dl1_act_02> max(cum_dl1_act_02)/2,1)*0.35;
fcum_dl1_02 = cum_dl1_act_02./size(act_nuc_dl1_02,2);
for i = 1:size(dl1_03,1)
    tmp = find(dl1_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl1_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl1_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl1_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl1_03(i,1:size(tmp3,2)) = tmp3;
            cum_dl1_act_03(i) = length(find(act_nuc_dl1_03(i,:)~=0));
        end
    end
end
half_max_dl1_03 = find(cum_dl1_act_03> max(cum_dl1_act_03)/2,1)*0.35;
fcum_dl1_03 = cum_dl1_act_03./size(act_nuc_dl1_03,2);

for i = 1:size(dl1_04,1)
    tmp = find(dl1_04(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl1_04(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl1_04(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl1_04(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl1_04(i,1:size(tmp3,2)) = tmp3;
            cum_dl1_act_04(i) = length(find(act_nuc_dl1_04(i,:)~=0));
        end
    end
end
half_max_dl1_04 = find(cum_dl1_act_04> max(cum_dl1_act_04)/2,1)*0.35;
fcum_dl1_04 = cum_dl1_act_04./size(act_nuc_dl1_04,2);

%dl2
for i = 1:size(dl2_01,1)
    tmp = find(dl2_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl2_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl2_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl2_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl2_01(i,1:size(tmp3,2)) = tmp3;
            cum_dl2_act_01(i) = length(find(act_nuc_dl2_01(i,:)~=0));
        end
    end
end
half_max_dl2_01 = find(cum_dl2_act_01> max(cum_dl2_act_01)/2,1)*0.35;
fcum_dl2_01 = cum_dl2_act_01./size(act_nuc_dl2_01,2);
for i = 1:size(dl2_02,1)
    tmp = find(dl2_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl2_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl2_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl2_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl2_02(i,1:size(tmp3,2)) = tmp3;
            cum_dl2_act_02(i) = length(find(act_nuc_dl2_02(i,:)~=0));
        end
    end
end
half_max_dl2_02 = find(cum_dl2_act_02> max(cum_dl2_act_02)/2,1)*0.35;
fcum_dl2_02 = cum_dl2_act_02./size(act_nuc_dl2_02,2);
for i = 1:size(dl2_03,1)
    tmp = find(dl2_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl2_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl2_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl2_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl2_03(i,1:size(tmp3,2)) = tmp3;
            cum_dl2_act_03(i) = length(find(act_nuc_dl2_03(i,:)~=0));
        end
    end
end
half_max_dl2_03 = find(cum_dl2_act_03> max(cum_dl2_act_03)/2,1)*0.35;
fcum_dl2_03 = cum_dl2_act_03./size(act_nuc_dl2_03,2);
for i = 1:size(dl2_04,1)
    tmp = find(dl2_04(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl2_04(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl2_04(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl2_04(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl2_04(i,1:size(tmp3,2)) = tmp3;
            cum_dl2_act_04(i) = length(find(act_nuc_dl2_04(i,:)~=0));
        end
    end
end
half_max_dl2_04 = find(cum_dl2_act_04> max(cum_dl2_act_04)/2,1)*0.35;
fcum_dl2_04 = cum_dl2_act_04./size(act_nuc_dl2_04,2);

%dl12
for i = 1:size(dl12_01,1)
    tmp = find(dl12_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl12_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl12_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl12_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl12_01(i,1:size(tmp3,2)) = tmp3;
            cum_dl12_act_01(i) = length(find(act_nuc_dl12_01(i,:)~=0));
        end
    end
end
half_max_dl12_01 = find(cum_dl12_act_01> max(cum_dl12_act_01)/2,1)*0.35;
fcum_dl12_01 = cum_dl12_act_01./size(act_nuc_dl12_01,2);
for i = 1:size(dl12_02,1)
    tmp = find(dl12_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl12_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl12_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl12_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl12_02(i,1:size(tmp3,2)) = tmp3;
            cum_dl12_act_02(i) = length(find(act_nuc_dl12_02(i,:)~=0));
        end
    end
end
half_max_dl12_02 = find(cum_dl12_act_02> max(cum_dl12_act_02)/2,1)*0.35;
fcum_dl12_02 = cum_dl12_act_02./size(act_nuc_dl12_02,2);
for i = 1:size(dl12_03,1)
    tmp = find(dl12_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_dl12_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_dl12_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_dl12_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_dl12_03(i,1:size(tmp3,2)) = tmp3;
            cum_dl12_act_03(i) = length(find(act_nuc_dl12_03(i,:)~=0));
        end
    end 
end
half_max_dl12_03 = find(cum_dl12_act_03> max(cum_dl12_act_03)/2,1)*0.35;
fcum_dl12_03 = cum_dl12_act_03./size(act_nuc_dl12_03,2);

%zld opt
for i = 1:size(zldopt_01,1)
    tmp = find(zldopt_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_zldopt_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_zldopt_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_zldopt_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_zldopt_01(i,1:size(tmp3,2)) = tmp3;
            cum_zldopt_act_01(i) = length(find(act_nuc_zldopt_01(i,:)~=0));
        end
    end
end
half_max_zldopt_01 = find(cum_zldopt_act_01> max(cum_zldopt_act_01)/2,1)*0.35;
fcum_zldopt_01 = cum_zldopt_act_01./size(act_nuc_zldopt_01,2);
for i = 1:size(zldopt_02,1)
    tmp = find(zldopt_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_zldopt_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_zldopt_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_zldopt_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_zldopt_02(i,1:size(tmp3,2)) = tmp3;
            cum_zldopt_act_02(i) = length(find(act_nuc_zldopt_02(i,:)~=0));
        end
    end
end
half_max_zldopt_02 = find(cum_zldopt_act_02> max(cum_zldopt_act_02)/2,1)*0.35;
fcum_zldopt_02 = cum_zldopt_act_02./size(act_nuc_zldopt_02,2);
for i = 1:size(zldopt_03,1)
    tmp = find(zldopt_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_zldopt_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_zldopt_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_zldopt_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_zldopt_03(i,1:size(tmp3,2)) = tmp3;
            cum_zldopt_act_03(i) = length(find(act_nuc_zldopt_03(i,:)~=0));
        end
    end
end
half_max_zldopt_03 = find(cum_zldopt_act_03> max(cum_zldopt_act_03)/2,1)*0.35;
fcum_zldopt_03 = cum_zldopt_act_03./size(act_nuc_zldopt_03,2);

%zld del
for i = 1:size(zlddel_01,1)
    tmp = find(zlddel_01(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_zlddel_01(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_zlddel_01(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_zlddel_01(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_zlddel_01(i,1:size(tmp3,2)) = tmp3;
            cum_zlddel_act_01(i) = length(find(act_nuc_zlddel_01(i,:)~=0));
        end
    end
end
half_max_zlddel_01 = find(cum_zlddel_act_01> max(cum_zlddel_act_01)/2,1)*0.35;
fcum_zlddel_01 = cum_zlddel_act_01./size(act_nuc_zlddel_01,2);
for i = 1:size(zlddel_02,1)
    tmp = find(zlddel_02(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_zlddel_02(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_zlddel_02(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_zlddel_02(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_zlddel_02(i,1:size(tmp3,2)) = tmp3;
            cum_zlddel_act_02(i) = length(find(act_nuc_zlddel_02(i,:)~=0));
        end
    end
end
half_max_zlddel_02 = find(cum_zlddel_act_02> max(cum_zlddel_act_02)/2,1)*0.35;
fcum_zlddel_02 = cum_zlddel_act_02./size(act_nuc_zlddel_02,2);
for i = 1:size(zlddel_03,1)
    tmp = find(zlddel_03(i,:)>1000);
    if tmp~=0
        if i == 1
            act_nuc_zlddel_03(i,1:size(tmp,2)) = tmp;
        else
            act_nuc_zlddel_03(i,1:size(tmp,2)) = tmp;
            tmp2 = unique([tmp act_nuc_zlddel_03(i-1,:)]);
            tmp3 = tmp2(tmp2~=0);
            act_nuc_zlddel_03(i,1:size(tmp3,2)) = tmp3;
            cum_zlddel_act_03(i) = length(find(act_nuc_zlddel_03(i,:)~=0));
        end
    end
end
half_max_zlddel_03 = find(cum_zlddel_act_03> max(cum_zlddel_act_03)/2,1)*0.35;
fcum_zlddel_03 = cum_zlddel_act_03./size(act_nuc_zlddel_03,2);
%%
figure(1),
plot(cum_wt_act_01); hold on;
plot(cum_wt_act_02); hold on;
plot(cum_wt_act_03); 
title('WT Cumulative number of nuclei in each time frame'); ylabel('Number of nuclei'); xlabel('Frames')
figure(2),
plot(cum_dl1_act_01); hold on;
plot(cum_dl1_act_02); hold on;
plot(cum_dl1_act_03); 
plot(cum_dl1_act_04); 
title('dl1 Cumulative number of nuclei in each time frame'); ylabel('Number of nuclei'); xlabel('Frames')
figure(3),
plot(cum_dl2_act_01); hold on;
plot(cum_dl2_act_02); hold on;
plot(cum_dl2_act_03); 
plot(cum_dl2_act_04); 
title('dl2 Cumulative number of nuclei in each time frame'); ylabel('Number of nuclei'); xlabel('Frames')
figure(4),
plot(cum_dl12_act_01); hold on;
plot(cum_dl12_act_02); hold on;
plot(cum_dl12_act_03); 
title('dl12 Cumulative number of nuclei in each time frame'); ylabel('Number of nuclei'); xlabel('Frames')

% %% fraction
% figure(1),
% plot(fcum_wt_01); hold on;
% plot(fcum_wt_02); hold on;
% plot(fcum_wt_03); 
% title('WT Cumulative fraction of nuclei in each time frame'); ylabel('Fraction'); xlabel('Frames'); ylim([0 0.9]);
% figure(2),
% plot(fcum_dl3_01); hold on;
% plot(fcum_dl3_02); hold on;
% plot(fcum_dl3_03); 
% title('dl3 Cumulative fraction of nuclei in each time frame'); ylabel('Fraction'); xlabel('Frames'); ylim([0 0.9]);
% figure(3),
% plot(fcum_twi2_01); hold on;
% plot(fcum_twi2_02); hold on;
% plot(fcum_twi2_03); 
% title('twi2 Cumulative fraction of nuclei in each time frame'); ylabel('Fraction'); xlabel('Frames'); ylim([0 0.9]);
% figure(4),
% plot(fcum_dl3twi2_02); hold on;
% plot(fcum_dl3twi2_03); 
% title('dl3twi2 Cumulative fraction of nuclei in each time frame'); ylabel('Fraction'); xlabel('Frames'); ylim([0 0.9]);

%% combine replicates - total number
cum_wt_act = zeros(3,135); cum_wtnew2_act = zeros(3,123); cum_dl3_act = zeros(3,169); cum_twi2_act = zeros(3,124); cum_dl3twi2_act = zeros(4,135);...
cum_dl1_act = zeros(4,136); cum_dl2_act = zeros(3,125); cum_dl12_act = zeros(2,129);  cum_zldopt_act = zeros(3,132); cum_zlddel_act = zeros(3,128);

cum_wt_act(1,1:126) = cum_wt_act_01;
cum_wt_act(2,1:128) = cum_wt_act_02;
cum_wt_act(3,1:135) = cum_wt_act_03;
avg_cum_wt_act = mean(cum_wt_act(:,1:126));
err_cum_wt_act = std(cum_wt_act(:,1:126))./sqrt(size(cum_wt_act,1));

cum_wtnew2_act(1,1:123) = cum_wtnew2_act_01;
cum_wtnew2_act(2,1:124) = cum_wtnew2_act_02;
cum_wtnew2_act(3,1:126) = cum_wtnew2_act_03;
avg_cum_wtnew2_act = mean(cum_wtnew2_act(:,1:123));
err_cum_wtnew2_act = std(cum_wtnew2_act(:,1:123))./sqrt(size(cum_wtnew2_act,1));

cum_dl3_act(1,1:169) = cum_dl3_act_01;
cum_dl3_act(2,1:142) = cum_dl3_act_02;
cum_dl3_act(3,1:146) = cum_dl3_act_03;
avg_cum_dl3_act = mean(cum_dl3_act(:,1:142));
err_cum_dl3_act = std(cum_dl3_act(:,1:142))./sqrt(size(cum_dl3_act,1)); 

cum_twi2_act(1,1:124) = cum_twi2_act_01;
cum_twi2_act(2,1:123) = cum_twi2_act_02;
cum_twi2_act(3,1:123) = cum_twi2_act_03;
avg_cum_twi2_act = mean(cum_twi2_act(:,1:123));
err_cum_twi2_act = std(cum_twi2_act(:,1:123))./sqrt(size(cum_twi2_act,1)); 

cum_dl3twi2_act(1,1:125) = cum_dl3twi2_act_01;
cum_dl3twi2_act(2,1:129) = cum_dl3twi2_act_02;
cum_dl3twi2_act(3,1:135) = cum_dl3twi2_act_03;
cum_dl3twi2_act(4,1:126) = cum_dl3twi2_act_04;
avg_cum_dl3twi2_act = mean(cum_dl3twi2_act(:,1:125));
err_cum_dl3twi2_act = std(cum_dl3twi2_act(:,1:125))./sqrt(size(cum_dl3twi2_act,1)); 

cum_dl1_act(1,1:119) = cum_dl1_act_01;
cum_dl1_act(2,1:136) = cum_dl1_act_02;
cum_dl1_act(3,1:128) = cum_dl1_act_03;
cum_dl1_act(4,1:122) = cum_dl1_act_04;
avg_cum_dl1_act = mean(cum_dl1_act(:,1:119));
err_cum_dl1_act = std(cum_dl1_act(:,1:119))./sqrt(size(cum_dl1_act,1)); 

cum_dl2_act(1,1:133) = cum_dl2_act_01;
cum_dl2_act(2,1:132) = cum_dl2_act_02;
cum_dl2_act(3,1:125) = cum_dl2_act_03;
% cum_dl2_act(4,1:124) = cum_dl2_act_04;
avg_cum_dl2_act = mean(cum_dl2_act(:,1:124));
err_cum_dl2_act = std(cum_dl2_act(:,1:124))./sqrt(size(cum_dl2_act,1)); 

cum_dl12_act(1,1:131) = cum_dl12_act_01;
cum_dl12_act(2,1:119) = cum_dl12_act_02;
% cum_dl12_act(3,1:129) = cum_dl12_act_03;
avg_cum_dl12_act = mean(cum_dl12_act(:,1:119));
err_cum_dl12_act = std(cum_dl12_act(:,1:119))./sqrt(size(cum_dl12_act,1)); 

cum_zldopt_act(1,1:116) = cum_zldopt_act_01;
cum_zldopt_act(2,1:129) = cum_zldopt_act_02;
cum_zldopt_act(3,1:132) = cum_zldopt_act_03;
avg_cum_zldopt_act = mean(cum_zldopt_act(:,1:116));
err_cum_zldopt_act = std(cum_zldopt_act(:,1:116))./sqrt(size(cum_zldopt_act,1)); 

cum_zlddel_act(1,1:128) = cum_zlddel_act_01;
cum_zlddel_act(2,1:115) = cum_zlddel_act_02;
cum_zlddel_act(3,1:123) = cum_zlddel_act_03;
avg_cum_zlddel_act = mean(cum_zlddel_act(:,1:115));
err_cum_zlddel_act = std(cum_zlddel_act(:,1:115))./sqrt(size(cum_zlddel_act,1)); 

T = (1:150)*0.35;
figure,
shadedErrorBar(T(1:126), avg_cum_wt_act, err_cum_wt_act, 'lineprops','-'); hold on;
% shadedErrorBarerrorbar(avg_cum_wtnew2_act, err_cum_wtnew2_act); hold on;
% h.CapSize=0;
shadedErrorBar(T(1:142), avg_cum_dl3_act, err_cum_dl3_act, 'lineprops','-'); hold on;
shadedErrorBar(T(1:123), avg_cum_twi2_act, err_cum_twi2_act, 'lineprops','-'); hold on;
shadedErrorBar(T(1:125), avg_cum_dl3twi2_act, err_cum_dl3twi2_act, 'lineprops','-');
shadedErrorBar(T(1:119), avg_cum_dl1_act, err_cum_dl1_act, 'lineprops','-'); hold on;
shadedErrorBar(T(1:124), avg_cum_dl2_act, err_cum_dl2_act, 'lineprops','-');
shadedErrorBar(T(1:119), avg_cum_dl12_act, err_cum_dl12_act, 'lineprops','-');
legend('wt','dl3','twi2','dl3twi2','dl1','dl2','dl1/2');
title('Cumulative number of active nuclei'); ylabel('Number of nuclei'); xlabel('Frames');
ax = gca;  ax.FontSize = 16; axis square; ylim([0 420]); xlim([0 50])

figure,
h = errorbar(T(1:126),avg_cum_wt_act, err_cum_wt_act); hold on;
h.CapSize=0;
% h = errorbar(avg_cum_wtnew2_act, err_cum_wtnew2_act); hold on;
% h.CapSize=0;
h = errorbar(T(1:119),avg_cum_dl1_act, err_cum_dl1_act); hold on;
h.CapSize=0;
h = errorbar(T(1:124),avg_cum_dl2_act, err_cum_dl2_act);
h.CapSize=0;
h = errorbar(T(1:119),avg_cum_dl12_act, err_cum_dl12_act);
h.CapSize=0;
legend('wt','dl1','dl2','dl1/2');
title('Cumulative number of active nuclei'); ylabel('Number of nuclei'); xlabel('Frames');
ax = gca;  ax.FontSize = 16; axis square; ylim([0 420]);

%% combine replicates - fraction
T = 0.35*(1:146);
fcum_wt = zeros(3,135); fcum_dl3 = zeros(3,169); fcum_twi2 = zeros(3,124); fcum_dl3twi2 = zeros(4,135);...
    fcum_dl2 = zeros(3,125); fcum_dl12 = zeros(3,119);
fcum_wt(1,1:126) = fcum_wt_01;
fcum_wt(2,1:128) = fcum_wt_02;
fcum_wt(3,1:135) = fcum_wt_03;
avg_fcum_wt = mean(fcum_wt(:,1:126));
err_fcum_wt = std(fcum_wt(:,1:126))./sqrt(size(fcum_wt,1)); 

fcum_dl3(1,1:169) = fcum_dl3_01;
fcum_dl3(2,1:142) = fcum_dl3_02;
fcum_dl3(3,1:146) = fcum_dl3_03;
avg_fcum_dl3 = mean(fcum_dl3(:,1:142));
err_fcum_dl3 = std(fcum_dl3(:,1:142))./sqrt(size(fcum_dl3,1)); 

fcum_twi2(1,1:124) = fcum_twi2_01;
fcum_twi2(2,1:123) = fcum_twi2_02;
fcum_twi2(3,1:123) = fcum_twi2_03;
avg_fcum_twi2 = mean(fcum_twi2(:,1:123));
err_fcum_twi2 = std(fcum_twi2(:,1:123))./sqrt(size(fcum_twi2,1)); 

fcum_dl3twi2(1,1:125) = fcum_dl3twi2_01;
fcum_dl3twi2(2,1:129) = fcum_dl3twi2_02;
fcum_dl3twi2(3,1:135) = fcum_dl3twi2_03;
fcum_dl3twi2(4,1:126) = fcum_dl3twi2_04;
avg_fcum_dl3twi2 = mean(fcum_dl3twi2(:,1:125));
err_fcum_dl3twi2 = std(fcum_dl3twi2(:,1:125))./sqrt(size(fcum_dl3twi2,1)); 

fcum_dl1(1,1:119) = fcum_dl1_01;
fcum_dl1(2,1:136) = fcum_dl1_02;
fcum_dl1(3,1:128) = fcum_dl1_03;
fcum_dl1(4,1:122) = fcum_dl1_04;
avg_fcum_dl1 = mean(fcum_dl1(:,1:119));
err_fcum_dl1 = std(fcum_dl1(:,1:119))./sqrt(size(fcum_dl1,1)); 

fcum_dl2(1,1:133) = fcum_dl2_01;
fcum_dl2(2,1:132) = fcum_dl2_02;
fcum_dl2(3,1:125) = fcum_dl2_03;
fcum_dl2(4,1:124) = fcum_dl2_04;
avg_fcum_dl2 = mean(fcum_dl2(:,1:124));
err_fcum_dl2 = std(fcum_dl2(:,1:124))./sqrt(size(fcum_dl2,1)); 

fcum_dl12(1,1:131) = fcum_dl12_01;
fcum_dl12(2,1:119) = fcum_dl12_02;
fcum_dl12(3,1:129) = fcum_dl12_03;
avg_fcum_dl12 = mean(fcum_dl12(:,1:119));
err_fcum_dl12 = std(fcum_dl12(:,1:119))./sqrt(size(fcum_dl12,1)); 


figure (8);
h = errorbar(T(1:126), avg_fcum_wt, err_fcum_wt); hold on;
h.CapSize=0;
h = errorbar(T(1:142), avg_fcum_dl3, err_fcum_dl3); hold on;
h.CapSize=0;
h = errorbar(T(1:123), avg_fcum_twi2, err_fcum_twi2); hold on;
h.CapSize=0;
h = errorbar(T(1:125), avg_fcum_dl3twi2, err_fcum_dl3twi2);
h.CapSize=0;
h = errorbar(T(1:119), avg_fcum_dl1, err_fcum_dl1);
h.CapSize=0;
h = errorbar(T(1:124), avg_fcum_dl2, err_fcum_dl2);
h.CapSize=0;
h = errorbar(T(1:119), avg_fcum_dl12, err_fcum_dl12);
h.CapSize=0;
legend('wt','dl3 del','twi2 del','dl3twi2 del','dl1','dl2','dl1/2');
title('Cumulative fraction of active nuclei'); ylabel('Fraction'); xlabel('Time (min)');
ax = gca;  ax.FontSize = 16; axis square; ylim([0 inf]);

figure (9);
h = errorbar(T(1:126), avg_fcum_wt, err_fcum_wt); hold on;
h.CapSize=0;
h = errorbar(T(1:119), avg_fcum_dl1, err_fcum_dl1);
h.CapSize=0;
h = errorbar(T(1:124), avg_fcum_dl2, err_fcum_dl2);
h.CapSize=0;
h = errorbar(T(1:119), avg_fcum_dl12, err_fcum_dl12);
h.CapSize=0;
legend('wt','dl1','dl2','dl1/2');
title('Cumulative fraction of active nuclei'); ylabel('Fraction'); xlabel('Time (min)');
ax = gca;  ax.FontSize = 16; axis square; ylim([0 inf]);
%% time to reach half max active nuclei
half_max_wt(1,:) = half_max_wt_01;
half_max_wt(2,:) = half_max_wt_02;
half_max_wt(3,:) = half_max_wt_03;
avg_half_max_wt = mean(half_max_wt);
err_half_max_wt = std(half_max_wt)./size(half_max_wt,1);

half_max_dl3(1,:) = half_max_dl3_01;
half_max_dl3(2,:) = half_max_dl3_02;
half_max_dl3(3,:) = half_max_dl3_03;
avg_half_max_dl3 = mean(half_max_dl3);
err_half_max_dl3 = std(half_max_dl3)./size(half_max_dl3,1);

half_max_twi2(1,:) = half_max_twi2_01;
half_max_twi2(2,:) = half_max_twi2_02;
half_max_twi2(3,:) = half_max_twi2_03;
avg_half_max_twi2 = mean(half_max_twi2);
err_half_max_twi2 = std(half_max_twi2)./size(half_max_twi2,1);

half_max_dl3twi2(1,:) = half_max_dl3twi2_01;
half_max_dl3twi2(2,:) = half_max_dl3twi2_02;
half_max_dl3twi2(3,:) = half_max_dl3twi2_03;
half_max_dl3twi2(4,:) = half_max_dl3twi2_04;
avg_half_max_dl3twi2 = mean(half_max_dl3twi2);
err_half_max_dl3twi2 = std(half_max_dl3twi2)./size(half_max_dl3twi2,1);

half_max_dl1(1,:) = half_max_dl1_01;
half_max_dl1(2,:) = half_max_dl1_02;
half_max_dl1(3,:) = half_max_dl1_03;
half_max_dl1(4,:) = half_max_dl1_04;
avg_half_max_dl1 = mean(half_max_dl1);
err_half_max_dl1 = std(half_max_dl1)./size(half_max_dl1,1);

half_max_dl2(1,:) = half_max_dl2_01;
half_max_dl2(2,:) = half_max_dl2_02;
half_max_dl2(3,:) = half_max_dl2_03;
half_max_dl2(4,:) = half_max_dl2_04;
avg_half_max_dl2 = mean(half_max_dl2);
err_half_max_dl2 = std(half_max_dl2)./size(half_max_dl2,1);

half_max_dl12(1,:) = half_max_dl12_01;
half_max_dl12(2,:) = half_max_dl12_02;
half_max_dl12(3,:) = half_max_dl12_03;
avg_half_max_dl12 = mean(half_max_dl12);
err_half_max_dl12 = std(half_max_dl12)./size(half_max_dl12,1);

figure;
h = errorbar(1, avg_half_max_wt, err_half_max_wt,'.','Markersize',10); hold on;
h = errorbar(2, avg_half_max_dl3, err_half_max_dl3,'.','Markersize',10); hold on;
h = errorbar(3, avg_half_max_twi2, err_half_max_twi2,'.','Markersize',10); hold on;
h = errorbar(4, avg_half_max_dl3twi2, err_half_max_dl3twi2,'.','Markersize',10);
h = errorbar(5, avg_half_max_dl1, err_half_max_dl1,'.','Markersize',10);
h = errorbar(6, avg_half_max_dl2, err_half_max_dl2,'.','Markersize',10);
h = errorbar(7, avg_half_max_dl12, err_half_max_dl12,'.','Markersize',10); xlim([0 7]);
set(gca,'xtick',[1 2 3 4 5 6 7] ,'xticklabel',{'wt','dl1','dl2','dl1/2'});
title('time to reach 50% max active nuclei'); ylabel('Time(min)'); xlim([0 8]); ylim([0 22]);
ax = gca;  ax.FontSize = 16; axis square

%% combine replicates - normalized to avg wt
wt_avg = mean([max(cum_wt_act(1,:)), max(cum_wt_act(2,:)), max(cum_wt_act(3,:))]);
cum_wt_act = zeros(3,135); cum_dl3_act = zeros(3,169); cum_twi2_act = zeros(3,124); cum_dl3twi2_act = zeros(4,135);...
    cum_dl2_act = zeros(3,125); cum_dl12_act = zeros(3,119);
cum_wt_act(1,1:126) = cum_wt_act_01;
cum_wt_act(2,1:128) = cum_wt_act_02;
cum_wt_act(3,1:135) = cum_wt_act_03;
n_cum_wt_act = cum_wt_act(:,1:126)./wt_avg;
avg_ncum_wt_act = mean(n_cum_wt_act(:,1:126));
err_ncum_wt_act = std(n_cum_wt_act(:,1:126))./sqrt(size(n_cum_wt_act,1)); 

cum_dl3_act(1,1:169) = cum_dl3_act_01;
cum_dl3_act(2,1:142) = cum_dl3_act_02;
cum_dl3_act(3,1:146) = cum_dl3_act_03;
n_cum_dl3_act = cum_dl3_act(:,1:142)./wt_avg;
avg_ncum_dl3_act = mean(n_cum_dl3_act(:,1:142));
err_ncum_dl3_act = std(n_cum_dl3_act(:,1:142))./sqrt(size(n_cum_dl3_act,1)); 

cum_twi2_act(1,1:124) = cum_twi2_act_01;
cum_twi2_act(2,1:123) = cum_twi2_act_02;
cum_twi2_act(3,1:123) = cum_twi2_act_03;
n_cum_twi2_act = cum_twi2_act(:,1:123)./wt_avg;
avg_ncum_twi2_act = mean(n_cum_twi2_act(:,1:123));
err_ncum_twi2_act = std(n_cum_twi2_act(:,1:123))./sqrt(size(n_cum_twi2_act,1)); 

cum_dl3twi2_act(1,1:125) = cum_dl3twi2_act_01;
cum_dl3twi2_act(2,1:129) = cum_dl3twi2_act_02;
cum_dl3twi2_act(3,1:135) = cum_dl3twi2_act_03;
cum_dl3twi2_act(4,1:126) = cum_dl3twi2_act_04;
n_cum_dl3twi2_act = cum_dl3twi2_act(:,1:125)./wt_avg;
avg_ncum_dl3twi2_act = mean(n_cum_dl3twi2_act(:,1:125));
err_ncum_dl3twi2_act = std(n_cum_dl3twi2_act(:,1:125))./sqrt(size(n_cum_dl3twi2_act,1)); 

cum_dl2_act(1,1:133) = cum_dl2_act_01;
cum_dl2_act(2,1:132) = cum_dl2_act_02;
cum_dl2_act(3,1:125) = cum_dl2_act_03;
cum_dl2_act(4,1:124) = cum_dl2_act_04;
n_cum_dl2_act = cum_dl2_act(:,1:124)./wt_avg;
avg_ncum_dl2_act = mean(n_cum_dl2_act(:,1:124));
err_ncum_dl2_act = std(n_cum_dl2_act(:,1:124))./sqrt(size(n_cum_dl2_act,1)); 

cum_dl12_act(1,1:131) = cum_dl12_act_01;
cum_dl12_act(2,1:119) = cum_dl12_act_02;
cum_dl12_act(3,1:129) = cum_dl12_act_03;
n_cum_dl12_act = cum_dl12_act(:,1:119)./wt_avg;
avg_ncum_dl12_act = mean(n_cum_dl12_act(:,1:119));
err_ncum_dl12_act = std(n_cum_dl12_act(:,1:119))./sqrt(size(n_cum_dl12_act,1)); 

figure (10);
h = errorbar(avg_ncum_wt_act, err_ncum_wt_act,'lineprops','-'); hold on;
h.CapSize=0;
h = errorbar(avg_ncum_dl3_act, err_ncum_dl3_act,'lineprops','-'); hold on;
h.CapSize=0;
h = errorbar(avg_ncum_twi2_act, err_ncum_twi2_act,'lineprops','-'); hold on;
h.CapSize=0;
h = errorbar(avg_ncum_dl3twi2_act, err_ncum_dl3twi2_act,'lineprops','-');
h.CapSize=0;
h = errorbar(avg_ncum_dl2_act, err_ncum_dl2_act,'lineprops','-');
h.CapSize=0;
h = errorbar(avg_ncum_dl12_act, err_ncum_dl12_act,'lineprops','-');
h.CapSize=0;
legend('wt','dl3 del','twi2 del','dl3twi2 del','dl2','dl1/2');
title('Number of active nuclei'); ylabel('Fraction with respect to WT'); xlabel('Frames');
ax = gca;  ax.FontSize = 16; axis square; ylim([0 inf]);