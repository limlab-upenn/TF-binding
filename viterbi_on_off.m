%% calculating em and tr probabilities from hmmtrain
% clear all
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\snaSEmin_twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\on_off_twi2');
tmp_twi2{1} = tmp_twi2_01;
tmp_twi2{2} = tmp_twi2_02;
tmp_twi2{3} = tmp_twi2_03;
% tmp_dl2{4} = tmp_dl2_04;

for j=1:3
s = tmp_twi2{j}; 
s = double(s)+1; % convert logical to numerical
new_tr = zeros(4,size(s,2));
new_em = zeros(4,size(s,2));
for k = 1:size(s,2)
    seq = s(:,k);
     % to on   to off
    tr = [0.5 0.5; % from on
      0.5 0.5]; % from off
    em = [0.8 0.2; % on state (high,low)
      0.3 0.7]; %  off state (high,low)

    [est_tr, est_em] = hmmtrain(seq', tr, em);
    new_tr(1,k) = est_tr(1,1);
    new_tr(2,k) = est_tr(1,2);
    new_tr(3,k) = est_tr(2,1);
    new_tr(4,k) = est_tr(2,2);

    new_em(1,k) = est_em(1,1);
    new_em(2,k) = est_em(1,2);
    new_em(3,k) = est_em(2,1);
    new_em(4,k) = est_em(2,2);
    final_tr = mean(new_tr,2);
    final_em = mean(new_em,2);
end

kon_twi2(j) = final_tr(3);
koff_twi2(j) = final_tr(2);
burst_freq_twi2(j) = (kon_twi2(j)*koff_twi2(j))/(kon_twi2(j)+koff_twi2(j));
burst_dur_twi2(j) = 1/koff_twi2(j);
off_period_twi2(j) = 1/kon_twi2(j);
end
%% run Viterbi to get likely states
s=tmp_twi2_01;
s = double(s)+1;
for k = 1:size(s,2)
    seq = s(:,k);
    % to +               to -
tr = [log2(final_tr(1)) log2(final_tr(2)); % from +
    log2(final_tr(3)) log2(final_tr(4))]; % from -
em = [log2(final_em(1)) log2(final_em(2)); % high activity (+)
    log2(final_em(3)) log2(final_em(4))]; % low activity (-)
H = zeros(2,size(seq,1));
L = zeros(2,size(seq,1));
V = zeros(2,size(seq,1));

% Run Viterbi algorithm
    for i = 1:size(seq,1)
        if i==1
           V(1,i) = log2(0.5) + em(1,seq(i)); % on 
           V(2,i) = log2(0.5) + em(2,seq(i)); % off
           H(1,i) = V(1,i);
           L(1,i) = V(2,i);
        else
            V(1,i) = em(1,seq(i)) + max(V(1,i-1)+tr(1,1), V(2,i-1)+tr(2,1));
            V(2,i) = em(2,seq(i)) + max(V(1,i-1)+tr(1,2), V(2,i-1)+tr(2,2));
            H(1,i) = V(1,i-1)+tr(1,1); % on to on
            H(2,i) = V(2,i-1)+tr(2,1); % off to on
            L(1,i) = V(1,i-1)+tr(1,2); % on to off
            L(2,i) = V(2,i-1)+tr(2,2); % off to off
            [~,idxh(i)] = max(H(:,i)); % find which state maximizes variable
            [~,idxl(i)] = max(L(:,i));
        end
    end

% Back-tracking
[V_max,idxv] = max(V(:,end));
idx = [idxh; idxl];
for i = 1:size(seq,1)
    states(k,i) = idxv;
    j = idx(idxv,i);
end
for i = size(seq,1)-1:-1:1
    states(k,i) = idx(j,i);
    j = states(k,i);
end
% accuracy
for i =1:length(V)
    acc(i) = seq(i) == states(k,i);
end
accuracy(k) = sum(acc)/size(seq,1)*100;

end
%% compare bursting dynamics
clear all
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_wt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_wtnew');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_dl3');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_dl3twi2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_dl1');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_dl2');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_dl12');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_zldopt');
load('G:\Shared drives\Lim_Lab\Sahla\snail enhancer\Imaging\snaSEmin binding site mutations\dynamics_zlddel');

kon_all= zeros(10,4); koff_all= zeros(10,4); burst_dur_all= zeros(10,4); burst_freq_all= zeros(10,4); off_period_all= zeros(10,4); 

kon_all(1,1:3) = kon_wt;
kon_all(2,1:3) = kon_wtnew2;
kon_all(3,1:3) = kon_dl3;
kon_all(4,1:3) = kon_twi2;
kon_all(5,:) = kon_dl3twi2;
kon_all(6,:) = kon_dl1;
kon_all(7,:) = kon_dl2;
kon_all(8,1:3) = kon_dl12;
kon_all(9,1:3) = kon_zldopt;
kon_all(10,1:3) = kon_zlddel;

avg_kon_all = [mean(kon_all(1,1:3)); mean(kon_all(2,1:3)); mean(kon_all(3,1:3)); mean(kon_all(4,1:3)); mean(kon_all(5,:)); mean(kon_all(6,:));...
     mean(kon_all(7,:));  mean(kon_all(8,1:3)); mean(kon_all(9,1:3)); mean(kon_all(10,1:3))];
err_kon_all = [std(kon_all(1,1:3))./sqrt(3); std(kon_all(2,1:3))./sqrt(3); std(kon_all(3,1:3))./sqrt(3);...
    std(kon_all(4,1:3))./sqrt(3); std(kon_all(5,:))./sqrt(4); std(kon_all(6,:))./sqrt(4); std(kon_all(7,:))./sqrt(4);...
    std(kon_all(8,1:3))./sqrt(3); std(kon_all(9,1:3))./sqrt(3); std(kon_all(10,1:3))./sqrt(3)];

koff_all(1,1:3) = koff_wt;
koff_all(2,1:3) = koff_wtnew2;
koff_all(3,1:3) = koff_dl3;
koff_all(4,1:3) = koff_twi2;
koff_all(5,:) = koff_dl3twi2;
koff_all(6,:) = koff_dl1;
koff_all(7,:) = koff_dl2;
koff_all(8,1:3) = koff_dl12;
koff_all(9,1:3) = koff_zldopt;
koff_all(10,1:3) = koff_zlddel;

avg_koff_all = [mean(koff_all(1,1:3)); mean(koff_all(2,1:3)); mean(koff_all(3,1:3)); mean(koff_all(4,1:3)); mean(koff_all(5,:)); mean(koff_all(6,:));...
     mean(koff_all(7,:));  mean(koff_all(8,1:3)); mean(koff_all(9,1:3)); mean(koff_all(10,1:3))];
err_koff_all = [std(koff_all(1,1:3))./sqrt(3); std(koff_all(2,1:3))./sqrt(3); std(koff_all(3,1:3))./sqrt(3);...
    std(koff_all(4,1:3))./sqrt(3); std(koff_all(5,:))./sqrt(4); std(koff_all(6,:))./sqrt(4); std(koff_all(7,:))./sqrt(4);...
    std(koff_all(8,1:3))./sqrt(3); std(koff_all(9,1:3))./sqrt(3); std(koff_all(10,1:3))./sqrt(3)];

burst_dur_all(1,1:3) = burst_dur_wt;
burst_dur_all(2,1:3) = burst_dur_wtnew2;
burst_dur_all(3,1:3) = burst_dur_dl3;
burst_dur_all(4,1:3) = burst_dur_twi2;
burst_dur_all(5,:) = burst_dur_dl3twi2;
burst_dur_all(6,:) = burst_dur_dl1;
burst_dur_all(7,:) = burst_dur_dl2;
burst_dur_all(8,1:3) = burst_dur_dl12;
burst_dur_all(9,1:3) = burst_dur_zldopt;
burst_dur_all(10,1:3) = burst_dur_zlddel;

avg_burst_dur_all = [mean(burst_dur_all(1,1:3)); mean(burst_dur_all(2,1:3)); mean(burst_dur_all(3,1:3)); mean(burst_dur_all(4,1:3)); mean(burst_dur_all(5,:)); mean(burst_dur_all(6,:));...
     mean(burst_dur_all(7,:));  mean(burst_dur_all(8,1:3)); mean(burst_dur_all(9,1:3)); mean(burst_dur_all(10,1:3))];
err_burst_dur_all = [std(burst_dur_all(1,1:3))./sqrt(3); std(burst_dur_all(2,1:3))./sqrt(3); std(burst_dur_all(3,1:3))./sqrt(3);...
    std(burst_dur_all(4,1:3))./sqrt(3); std(burst_dur_all(5,:))./sqrt(4); std(burst_dur_all(6,:))./sqrt(4); std(burst_dur_all(7,:))./sqrt(4);...
    std(burst_dur_all(8,1:3))./sqrt(3); std(burst_dur_all(9,1:3))./sqrt(3); std(burst_dur_all(10,1:3))./sqrt(3)];

burst_freq_all(1,1:3) = burst_freq_wt;
burst_freq_all(2,1:3) = burst_freq_wtnew2;
burst_freq_all(3,1:3) = burst_freq_dl3;
burst_freq_all(4,1:3) = burst_freq_twi2;
burst_freq_all(5,:) = burst_freq_dl3twi2;
burst_freq_all(6,:) = burst_freq_dl1;
burst_freq_all(7,:) = burst_freq_dl2;
burst_freq_all(8,1:3) = burst_freq_dl12;
burst_freq_all(9,1:3) = burst_freq_zldopt;
burst_freq_all(10,1:3) = burst_freq_zlddel;

avg_burst_freq_all = [mean(burst_freq_all(1,1:3)); mean(burst_freq_all(2,1:3)); mean(burst_freq_all(3,1:3)); mean(burst_freq_all(4,1:3)); mean(burst_freq_all(5,:)); mean(burst_freq_all(6,:));...
     mean(burst_freq_all(7,:));  mean(burst_freq_all(8,1:3)); mean(burst_freq_all(9,1:3)); mean(burst_freq_all(10,1:3))];
err_burst_freq_all = [std(burst_freq_all(1,1:3))./sqrt(3); std(burst_freq_all(2,1:3))./sqrt(3); std(burst_freq_all(3,1:3))./sqrt(3);...
    std(burst_freq_all(4,1:3))./sqrt(3); std(burst_freq_all(5,:))./sqrt(4); std(burst_freq_all(6,:))./sqrt(4); std(burst_freq_all(7,:))./sqrt(4);...
    std(burst_freq_all(8,1:3))./sqrt(3); std(burst_freq_all(9,1:3))./sqrt(3); std(burst_freq_all(10,1:3))./sqrt(3)];

off_period_all(1,1:3) = off_period_wt;
off_period_all(2,1:3) = off_period_wtnew2;
off_period_all(3,1:3) = off_period_dl3;
off_period_all(4,1:3) = off_period_twi2;
off_period_all(5,:) = off_period_dl3twi2;
off_period_all(6,:) = off_period_dl1;
off_period_all(7,:) = off_period_dl2;
off_period_all(8,1:3) = off_period_dl12;
off_period_all(9,1:3) = off_period_zldopt;
off_period_all(10,1:3) = off_period_zlddel;

avg_off_period_all = [mean(off_period_all(1,1:3)); mean(off_period_all(2,1:3)); mean(off_period_all(3,1:3)); mean(off_period_all(4,1:3)); mean(off_period_all(5,:)); mean(off_period_all(6,:));...
     mean(off_period_all(7,:));  mean(off_period_all(8,1:3)); mean(off_period_all(9,1:3)); mean(off_period_all(10,1:3))];
err_off_period_all = [std(off_period_all(1,1:3))./sqrt(3); std(off_period_all(2,1:3))./sqrt(3); std(off_period_all(3,1:3))./sqrt(3);...
    std(off_period_all(4,1:3))./sqrt(3); std(off_period_all(5,:))./sqrt(4); std(off_period_all(6,:))./sqrt(4); std(off_period_all(7,:))./sqrt(4);...
    std(off_period_all(8,1:3))./sqrt(3); std(off_period_all(9,1:3))./sqrt(3); std(off_period_all(10,1:3))./sqrt(3)];

figure,
errorbar(1, avg_kon_all(1,:),err_kon_all(1,:),'.','Markersize',10); hold on
% errorbar(2, avg_kon_all(2,:),err_kon_all(2,:)); hold on
errorbar(2, avg_kon_all(3,:),err_kon_all(3,:),'.','Markersize',10); hold on
errorbar(3, avg_kon_all(4,:),err_kon_all(4,:),'.','Markersize',10); hold on
errorbar(4, avg_kon_all(5,:),err_kon_all(5,:),'.','Markersize',10); hold on
errorbar(5, avg_kon_all(6,:),err_kon_all(6,:),'.','Markersize',10); hold on
errorbar(6, avg_kon_all(7,:),err_kon_all(7,:),'.','Markersize',10); hold on
errorbar(7, avg_kon_all(8,:),err_kon_all(8,:),'.','Markersize',10); hold on
errorbar(8, avg_kon_all(9,:),err_kon_all(9,:),'.','Markersize',10); hold on
errorbar(9, avg_kon_all(10,:),err_kon_all(10,:),'.','Markersize',10); hold on
title('Kon'); xlim([0 10]); xticks([1,2,3,4,5,6,7,8,9]); ylim([0 0.3]);
xticklabels({'wt','dl3','twi2','dl3tw2','dl1','dl2','dl1/2','zld opt','zld del'});  axis square;
ax = gca;  ax.FontSize = 16;

figure,
errorbar(1, avg_koff_all(1,:),err_koff_all(1,:),'.','Markersize',10); hold on
% errorbar(2, avg_koff_all(2,:),err_koff_all(2,:)); hold on
errorbar(2, avg_koff_all(3,:),err_koff_all(3,:),'.','Markersize',10); hold on
errorbar(3, avg_koff_all(4,:),err_koff_all(4,:),'.','Markersize',10); hold on
errorbar(4, avg_koff_all(5,:),err_koff_all(5,:),'.','Markersize',10); hold on
errorbar(5, avg_koff_all(6,:),err_koff_all(6,:),'.','Markersize',10); hold on
errorbar(6, avg_koff_all(7,:),err_koff_all(7,:),'.','Markersize',10); hold on
errorbar(7, avg_koff_all(8,:),err_koff_all(8,:),'.','Markersize',10); hold on
errorbar(8, avg_koff_all(9,:),err_koff_all(9,:),'.','Markersize',10); hold on
errorbar(9, avg_koff_all(10,:),err_koff_all(10,:),'.','Markersize',10); hold on
title('Koff');xlim([0 10]); xticks([1,2,3,4,5,6,7,8,9]); ylim([0 0.2]);
xticklabels({'wt','dl3','twi2','dl3tw2','dl1','dl2','dl1/2','zld opt','zld del'});  axis square;
ax = gca;  ax.FontSize = 16;

figure,
errorbar(1, avg_burst_dur_all(1,:),err_burst_dur_all(1,:),'.','Markersize',10); hold on
% errorbar(2, avg_burst_dur_all(2,:),err_burst_dur_all(2,:)); hold on
errorbar(2, avg_burst_dur_all(3,:),err_burst_dur_all(3,:),'.','Markersize',10); hold on
errorbar(3, avg_burst_dur_all(4,:),err_burst_dur_all(4,:),'.','Markersize',10); hold on
errorbar(4, avg_burst_dur_all(5,:),err_burst_dur_all(5,:),'.','Markersize',10); hold on
errorbar(5, avg_burst_dur_all(6,:),err_burst_dur_all(6,:),'.','Markersize',10); hold on
errorbar(6, avg_burst_dur_all(7,:),err_burst_dur_all(7,:),'.','Markersize',10); hold on
errorbar(7, avg_burst_dur_all(8,:),err_burst_dur_all(8,:),'.','Markersize',10); hold on
errorbar(8, avg_burst_dur_all(9,:),err_burst_dur_all(9,:),'.','Markersize',10); hold on
errorbar(9, avg_burst_dur_all(10,:),err_burst_dur_all(10,:),'.','Markersize',10); hold on
title('Burst Duration');xlim([0 10]); xticks([1,2,3,4,5,6,7,8,9]); ylim([0 inf]);
xticklabels({'wt','dl3','twi2','dl3tw2','dl1','dl2','dl1/2','zld opt','zld del'});  axis square;
ax = gca;  ax.FontSize = 16;

figure,
errorbar(1, avg_burst_freq_all(1,:),err_burst_freq_all(1,:),'.','Markersize',10); hold on
% errorbar(2, avg_burst_freq_all(2,:),err_burst_freq_all(2,:)); hold on
errorbar(2, avg_burst_freq_all(3,:),err_burst_freq_all(3,:),'.','Markersize',10); hold on
errorbar(3, avg_burst_freq_all(4,:),err_burst_freq_all(4,:),'.','Markersize',10); hold on
errorbar(4, avg_burst_freq_all(5,:),err_burst_freq_all(5,:),'.','Markersize',10); hold on
errorbar(5, avg_burst_freq_all(6,:),err_burst_freq_all(6,:),'.','Markersize',10); hold on
errorbar(6, avg_burst_freq_all(7,:),err_burst_freq_all(7,:),'.','Markersize',10); hold on
errorbar(7, avg_burst_freq_all(8,:),err_burst_freq_all(8,:),'.','Markersize',10); hold on
errorbar(8, avg_burst_freq_all(9,:),err_burst_freq_all(9,:),'.','Markersize',10); hold on
errorbar(9, avg_burst_freq_all(10,:),err_burst_freq_all(10,:),'.','Markersize',10); hold on
title('Burst Frequency');xlim([0 10]); xticks([1,2,3,4,5,6,7,8,9]); ylim([0 0.1]);
xticklabels({'wt','dl3','twi2','dl3tw2','dl1','dl2','dl1/2','zld opt','zld del'});  axis square;
ax = gca;  ax.FontSize = 16;

figure,
errorbar(1, avg_off_period_all(1,:),err_off_period_all(1,:),'.','Markersize',10); hold on
% errorbar(2, avg_off_period_all(2,:),err_off_period_all(2,:)); hold on
errorbar(2, avg_off_period_all(3,:),err_off_period_all(3,:),'.','Markersize',10); hold on
errorbar(3, avg_off_period_all(4,:),err_off_period_all(4,:),'.','Markersize',10); hold on
errorbar(4, avg_off_period_all(5,:),err_off_period_all(5,:),'.','Markersize',10); hold on
errorbar(5, avg_off_period_all(6,:),err_off_period_all(6,:),'.','Markersize',10); hold on
errorbar(6, avg_off_period_all(7,:),err_off_period_all(7,:),'.','Markersize',10); hold on
errorbar(7, avg_off_period_all(8,:),err_off_period_all(8,:),'.','Markersize',10); hold on
errorbar(8, avg_off_period_all(9,:),err_off_period_all(9,:),'.','Markersize',10); hold on
errorbar(9, avg_off_period_all(10,:),err_off_period_all(10,:),'.','Markersize',10); hold on
title('Off times');xlim([0 10]); xticks([1,2,3,4,5,6,7,8,9]); ylim([0 8]);
xticklabels({'wt','dl3','twi2','dl3tw2','dl1','dl2','dl1/2','zld opt','zld del'});  axis square;
ax = gca;  ax.FontSize = 16;