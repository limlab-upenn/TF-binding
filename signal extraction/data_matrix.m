 clear 
close all
%thr snaSEmin = 1000; thr snaSE = 700; thr snaSE hp = 700;
% wt_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb01\';
% wt_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb02\';
% wt_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2021_01_28\emb03\';

% dl3_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3del_M1_2021_02_08\emb02\';
% dl3_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3del_M1_2021_02_08\emb03\';
% dl3_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3del_M1_2021_02_08\emb04\';

% twi2_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2del_M1_2021_02_17\emb01\';
% twi2_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2del_M1_2021_02_17\emb02\';
% twi2_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2del_M1_2021_02_17\emb03\';

% dl3twi2_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_02_16\emb02\';
% dl3twi2_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_02_16\emb03\';
% dl3twi2_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_02_16\emb04\';

% dl3twi2_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_04_20_REDO\emb01\';
% dl3twi2_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_04_20_REDO\emb02\';
% dl3twi2_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_02_16\emb03\';
% dl3twi2_04 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl3twi2del_M2_2021_02_16\emb04\';
% 
% dl2_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2del_M2_2021_03_01\emb01\';
% dl2_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2del_M2_2021_03_01\emb02\';
% dl2_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2del_M2_2021_03_01\emb03\';
% dl2_04 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl2del_M2_2021_03_01\emb04\';

% dl12_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1_2_del_M1_2021_03_05\emb01\';
% dl12_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1_2_del_M1_2021_03_05\emb02\';
% dl12_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1_2_del_M1_2021_03_05\emb03\';

% dl1_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1del_M3_2022_01_12\emb01\';
% dl1_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1del_M3_2022_01_12\emb02\';
% dl1_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1del_M3_2022_01_12\emb03\';
% dl1_04 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_dl1del_M3_2022_01_12\emb04\';

% zldopt_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt_M2_2022_01_31\emb01\';
% zldopt_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt_M2_2022_01_31\emb02\';
% zldopt_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zldopt_M2_2022_01_31\emb04\';

% zlddel_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel_M3_2022_02_03\emb01\';
% zlddel_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel_M3_2022_02_03\emb02\';
% zlddel_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_zlddel_M3_2022_02_03\emb03\';

% wtnew_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_01_21\emb01\';
% wtnew_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_01_21\emb02\';
% wtnew_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_01_21\emb03\';
% twi2new_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2del_M1_2022_01_26\emb01\';

% wtnew2_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_02_22\emb01\';
% wtnew2_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_02_22\emb02\';
% wtnew2_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_02_22\emb03\';

% SE_wt_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2021_10_22\emb01\';
% SE_wt_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2021_10_22\emb02\';
% SE_wt_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2021_10_22\emb03\';
% 
% SE_wt_04 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2022_02_11\emb01\';
% SE_wt_05 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2022_02_11\emb02\';
% SE_wt_06 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2022_02_11\emb03\';

% SE_dl1_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_01_25\emb01/';
% SE_dl1_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_01_25\emb02/';
% SE_dl1_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_01_25\emb03/';
% 
% SE_dl2_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_02_08\emb01\';
% SE_dl2_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_02_08\emb02\';
% SE_dl2_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_02_08\emb03\';
% SE_dl2_04 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_02_08\emb04\';

% SE_dl12_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl12del_M3_2022_02_17\emb01\';
% SE_dl12_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl12del_M3_2022_02_17\emb02\';
% SE_dl12_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl12del_M3_2022_02_17\emb03\';

% SE_zlddel_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_zlddel_M3_2022_03_15\emb01\';
% SE_zlddel_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_zlddel_M3_2022_03_15\emb02\';
% SE_zlddel_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_zlddel_M3_2022_03_15\emb03\';

% SE_zldopt_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_zldopt_M3_2022_03_08\emb01\';
% SE_zldopt_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_zldopt_M3_2022_03_08\emb03\';
% SE_zldopt_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_zldopt_M3_2022_03_08\emb04\';

% SE_wtnew_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2022_07_20\emb01\';
% SE_wtnew_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2021_10_22\emb02\';

% SE_wthp_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2022_07_26_higherpower\emb01\';
% SE_wthp_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_wt_2022_07_26_higherpower\emb03\';

% % SE_dl1hp_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_08_04_higherpower\emb01\';
% SE_dl1hp_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_08_04_higherpower\emb03\';
% SE_dl1hp_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_08_04_higherpower\emb04\';
% SE_dl1hp_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_09_27_higherpower\emb01\';
% SE_dl1hp_04 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_09_27_higherpower\emb02\';
% % snaSE_dl1hp_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl1del_M5_2022_09_27_higherpower\emb03\';

% % SE_dl2hp_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_08_16_higher power\emb02\';
% % SE_dl2hp_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_08_16_higher power\emb03\';
% % SE_dl2hp_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_08_16_higher power\emb04\';
% SE_dl2hp_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_09_26_higherpower\emb01\';
% SE_dl2hp_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_09_26_higherpower\emb02\';
% SE_dl2hp_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl2del_M2_2022_09_26_higherpower\emb03\';
% % 
SE_dl12hp_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl12del_M3_2022_09_19_higherpower\emb01\';
SE_dl12hp_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl12del_M3_2022_09_19_higherpower\emb02\';
% SE_dl12hp_03 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSE binding mutations\snaSE_dl12del_M3_2022_09_19_higherpower\emb03\';

% spacerhp_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin spacer\snaSEmin_spacer_hp_2022_10_19\emb01\';
% spacerhp_02 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin spacer\snaSEmin_spacer_hp_2022_10_19\emb03\';

wthp_01 = 'G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEminWT_2022_02_25(higher laser power)\emb01\';

T1 = 0.35*(1:180); % 21 sec/frame

%% wildtype 1
thr = 700;
load([SE_dl12hp_01 'trajectories_nc13.mat']);
Mm = double(Mm); 
for i=1:size(M,2)
    M(:,i) = M(:,i)-Mm(:,i);
    M_SE_dl12_13(:,i) = M(:,i)-min(M(:,i));
    
    % max amplitude
    [max_SE_dl12_13(i,1),max_SE_dl12_13(i,2)] = max(smooth(M_SE_dl12_13(:,i)));    
    % output
    out_SE_dl12_13(i,1) = trapz(T1(1:size(M_SE_dl12_13,1)),M_SE_dl12_13(:,i));    
    % normalized output
    nout_SE_dl12_13(i,1) = out_SE_dl12_13(i,1)./size(M_SE_dl12_13,1);
    % time of activation
    tmp = find(smooth(M_SE_dl12_13(:,i)) > thr);
    if isempty(tmp)==1
        init_SE_dl12_13(i,1) = 0;
        dur_SE_dl12_13(i,1) = 0;
    else
        init_SE_dl12_13(i,1) = T1(tmp(1));
        dur_SE_dl12_13(i,1) = length(tmp)*0.35;
    end
end

SE_dl12_13_01 =  M_SE_dl12_13;
SE_dl12_13_max_01 = max_SE_dl12_13;
SE_dl12_13_out_01 = out_SE_dl12_13;
SE_dl12_13_nout_01 = nout_SE_dl12_13;
SE_dl12_13_init_01 = init_SE_dl12_13;
SE_dl12_13_dur_01 = dur_SE_dl12_13;

clear M_SE_dl12_13 max_SE_dl12_13 out_SE_dl12_13 nout_SE_dl12_13 init_SE_dl12_13 dur_SE_dl12_13

% wildtype 2
thr = 700;
load([SE_dl12hp_02 'trajectories_nc13.mat']);
Mm = double(Mm); 
for i=1:size(M,2)
    M(:,i) = M(:,i)-Mm(:,i);
    M_SE_dl12_13(:,i) = M(:,i)-min(M(:,i));
    
    % max amplitude
    [max_SE_dl12_13(i,1),max_SE_dl12_13(i,2)] = max(smooth(M_SE_dl12_13(:,i)));    
    % output
    out_SE_dl12_13(i,1) = trapz(T1(1:size(M_SE_dl12_13,1)),M_SE_dl12_13(:,i));    
    % normalized output
    nout_SE_dl12_13(i,1) = out_SE_dl12_13(i,1)./size(M_SE_dl12_13,1);
    % time of activation
    tmp = find(smooth(M_SE_dl12_13(:,i)) > thr);
    if isempty(tmp)==1
        init_SE_dl12_13(i,1) = 0;
        dur_SE_dl12_13(i,1) = 0;
    else
        init_SE_dl12_13(i,1) = T1(tmp(1));
        dur_SE_dl12_13(i,1) = length(tmp)*0.35;
    end
end

SE_dl12_13_02 =  M_SE_dl12_13;
SE_dl12_13_max_02 = max_SE_dl12_13;
SE_dl12_13_out_02 = out_SE_dl12_13;
SE_dl12_13_nout_02 = nout_SE_dl12_13;
SE_dl12_13_init_02 = init_SE_dl12_13;
SE_dl12_13_dur_02 = dur_SE_dl12_13;

clear M_SE_dl12_13 max_SE_dl12_13 out_SE_dl12_13 nout_SE_dl12_13 init_SE_dl12_13 dur_SE_dl12_13
% % % 
% % wildtype 3
% thr = 700;
% load([SE_dl1hp_03 'trajectories_nc14.mat']);
% Mm = double(Mm); 
% for i=1:size(M,2)
%     M(:,i) = M(:,i)-Mm(:,i);
%     M_SE_dl1hp(:,i) = M(:,i)-min(M(:,i));
%     
%     % max amplitude
%     [max_SE_dl1hp(i,1),max_SE_dl1hp(i,2)] = max(smooth(M_SE_dl1hp(:,i)));    
%     % output
%     out_SE_dl1hp(i,1) = trapz(T1(1:size(M_SE_dl1hp,1)),M_SE_dl1hp(:,i));    
%     % normalized output
%     nout_SE_dl1hp(i,1) = out_SE_dl1hp(i,1)./size(M_SE_dl1hp,1);
%     % time of activation
%     tmp = find(smooth(M_SE_dl1hp(:,i)) > thr);
%     if isempty(tmp)==1
%         init_SE_dl1hp(i,1) = 0;
%         dur_SE_dl1hp(i,1) = 0;
%     else
%         init_SE_dl1hp(i,1) = T1(tmp(1));
%         dur_SE_dl1hp(i,1) = length(tmp)*0.35;
%     end
% end
% 
% SE_dl1hp_03 =  M_SE_dl1hp;
% SE_dl1hp_max_03 = max_SE_dl1hp;
% SE_dl1hp_out_03 = out_SE_dl1hp;
% SE_dl1hp_nout_03 = nout_SE_dl1hp;
% SE_dl1hp_init_03 = init_SE_dl1hp;
% SE_dl1hp_dur_03 = dur_SE_dl1hp;
% 
% clear M_SE_dl1hp max_SE_dl1hp out_SE_dl1hp nout_SE_dl1hp init_SE_dl1hp dur_SE_dl1hp
% 
% % wildtype 4
% thr = 700;
% load([SE_dl1hp_04 'trajectories_nc14.mat']);
% Mm = double(Mm); 
% for i=1:size(M,2)
%     M(:,i) = M(:,i)-Mm(:,i);
%     M_SE_dl1hp(:,i) = M(:,i)-min(M(:,i));
%     
%     % max amplitude
%     [max_SE_dl1hp(i,1),max_SE_dl1hp(i,2)] = max(smooth(M_SE_dl1hp(:,i)));    
%     % output
%     out_SE_dl1hp(i,1) = trapz(T1(1:size(M_SE_dl1hp,1)),M_SE_dl1hp(:,i));    
%     % normalized output
%     nout_SE_dl1hp(i,1) = out_SE_dl1hp(i,1)./size(M_SE_dl1hp,1);
%     % time of activation
%     tmp = find(smooth(M_SE_dl1hp(:,i)) > thr);
%     if isempty(tmp)==1
%         init_SE_dl1hp(i,1) = 0;
%         dur_SE_dl1hp(i,1) = 0;
%     else
%         init_SE_dl1hp(i,1) = T1(tmp(1));
%         dur_SE_dl1hp(i,1) = length(tmp)*0.35;
%     end
% end
% 
% SE_dl1hp_04 =  M_SE_dl1hp;
% SE_dl1hp_max_04 = max_SE_dl1hp;
% SE_dl1hp_out_04 = out_SE_dl1hp;
% SE_dl1hp_nout_04 = nout_SE_dl1hp;
% SE_dl1hp_init_04 = init_SE_dl1hp;
% SE_dl1hp_dur_04 = dur_SE_dl1hp;
% 
% clear M_SE_dl1hp max_SE_dl1hp out_SE_dl1hp nout_SE_dl1hp init_SE_dl1hp dur_SE_dl1hp
% 
% wildtype 5
% thr = 700;
% load([SE_dl1hp_05 'trajectories_nc14.mat']);
% Mm = double(Mm); 
% for i=1:size(M,2)
%     M(:,i) = M(:,i)-Mm(:,i);
%     M_SE_dl1hp(:,i) = M(:,i)-min(M(:,i));
%     
%     % max amplitude
%     [max_SE_dl1hp(i,1),max_SE_dl1hp(i,2)] = max(smooth(M_SE_dl1hp(:,i)));    
%     % output
%     out_SE_dl1hp(i,1) = trapz(T1(1:size(M_SE_dl1hp,1)),M_SE_dl1hp(:,i));    
%     % normalized output
%     nout_SE_dl1hp(i,1) = out_SE_dl1hp(i,1)./size(M_SE_dl1hp,1);
%     % time of activation
%     tmp = find(smooth(M_SE_dl1hp(:,i)) > thr);
%     if isempty(tmp)==1
%         init_SE_dl1hp(i,1) = 0;
%         dur_SE_dl1hp(i,1) = 0;
%     else
%         init_SE_dl1hp(i,1) = T1(tmp(1));
%         dur_SE_dl1hp(i,1) = length(tmp)*0.35;
%     end
% end
% 
% SE_dl1hp_05 =  M_SE_dl1hp;
% SE_dl1hp_max_05 = max_SE_dl1hp;
% SE_dl1hp_out_05 = out_SE_dl1hp;
% SE_dl1hp_nout_05 = nout_SE_dl1hp;
% SE_dl1hp_init_05 = init_SE_dl1hp;
% SE_dl1hp_dur_05 = dur_SE_dl1hp;
% 
% clear M_SE_dl1hp max_SE_dl1hp out_SE_dl1hp nout_SE_dl1hp init_SE_dl1hp dur_SE_dl1hp
% 
% % wildtype 6
% thr = 700;
% load([SE_wt_06 'trajectories_nc14.mat']);
% Mm = double(Mm); 
% for i=1:size(M,2)
%     M(:,i) = M(:,i)-Mm(:,i);
%     M_SE_wt(:,i) = M(:,i)-min(M(:,i));
%     
%     % max amplitude
%     [max_SE_wt(i,1),max_SE_wt(i,2)] = max(smooth(M_SE_wt(:,i)));    
%     % output
%     out_SE_wt(i,1) = trapz(T1(1:size(M_SE_wt,1)),M_SE_wt(:,i));    
%     % normalized output
%     nout_SE_wt(i,1) = out_SE_wt(i,1)./size(M_SE_wt,1);
%     % time of activation
%     tmp = find(smooth(M_SE_wt(:,i)) > thr);
%     if isempty(tmp)==1
%         init_SE_wt(i,1) = 0;
%         dur_SE_wt(i,1) = 0;
%     else
%         init_SE_wt(i,1) = T1(tmp(1));
%         dur_SE_wt(i,1) = length(tmp)*0.35;
%     end
% end
% 
% SE_wt_06 =  M_SE_wt;
% SE_wt_max_06 = max_SE_wt;
% SE_wt_out_06 = out_SE_wt;
% SE_wt_nout_06 = nout_SE_wt;
% SE_wt_init_06 = init_SE_wt;
% SE_wt_dur_06 = dur_SE_wt;
% 
% clear M_SE_wt max_SE_wt out_SE_wt nout_SE_wt init_SE_wt dur_SE_wt