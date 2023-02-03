clear
close all
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

%%
active_wt = [length(wt_act_01), length(wt_act_02), length(wt_act_03)];
active_wtnew2 = [length(wtnew2_act_01), length(wtnew2_act_02), length(wtnew2_act_03)];
active_dl3 = [length(dl3_act_01), length(dl3_act_02),  length(dl3_act_03)];
active_twi2 = [length(twi2_act_01), length(twi2_act_02), length(twi2_act_03)];
active_dl3twi2 = [length(dl3twi2_act_01), length(dl3twi2_act_02), length(dl3twi2_act_03), length(dl3twi2_act_04)];
active_dl1 = [length(dl1_act_01), length(dl1_act_02), length(dl1_act_03), length(dl1_act_04)];
active_dl2 = [length(dl2_act_01), length(dl2_act_02), length(dl2_act_03), length(dl2_act_04)];
active_dl12 = [length(dl12_act_01), length(dl12_act_02), length(dl12_act_03)];
active_zldopt = [length(zldopt_act_01), length(zldopt_act_02), length(zldopt_act_03)];
active_zlddel = [length(zlddel_act_01), length(zlddel_act_02), length(zlddel_act_03)];

% avg_active = [mean(active_wt); mean(active_wtnew2); mean(active_dl3); mean(active_twi2); mean(active_dl3twi2);....
%     mean(active_dl1); mean(active_dl2); mean(active_dl12); mean(active_zldopt); mean(active_zlddel)];
% err_active = [std(active_wt)./sqrt(size(active_wt,2)); std(active_wtnew2)./sqrt(size(active_wtnew2,2)); std(active_dl3)./sqrt(size(active_dl3,2));....
%     std(active_twi2)./sqrt(size(active_twi2,2)); std(active_dl3twi2)./sqrt(size(active_dl3twi2,2)); std(active_dl1)./sqrt(size(active_dl1,2)); ....
%     std(active_dl2)./sqrt(size(active_dl2,2)); std(active_dl12)./sqrt(size(active_dl12,2)); std(active_zldopt)./sqrt(size(active_zldopt,2));...
%     std(active_zlddel)./sqrt(size(active_zlddel,2))];

avg_active = [mean(active_wt); mean(active_dl1); mean(active_dl2); mean(active_dl12)];
err_active = [std(active_wt)./sqrt(size(active_wt,2)); std(active_dl1)./sqrt(size(active_dl1,2)); ....
    std(active_dl2)./sqrt(size(active_dl2,2)); std(active_dl12)./sqrt(size(active_dl12,2))];

all_wt = [length(wt_01), length(wt_02), length(wt_03)];
all_wtnew2 = [length(wtnew2_01), length(wtnew2_02), length(wtnew2_03)];
all_dl3 = [length(dl3_01), length(dl3_02),  length(dl3_03)];
all_twi2 = [length(twi2_01), length(twi2_02), length(twi2_03)];
all_dl3twi2 = [length(dl3twi2_01), length(dl3twi2_02), length(dl3twi2_03), length(dl3twi2_04)];
all_dl1 = [length(dl1_01), length(dl1_02), length(dl1_03), length(dl1_04)];
all_dl2 = [length(dl2_01), length(dl2_02), length(dl2_03), length(dl2_04)];
all_dl12 = [length(dl12_01), length(dl12_02), length(dl12_03)];
all_zldopt = [length(zldopt_01), length(zldopt_02), length(zldopt_03)];
all_zlddel = [length(zlddel_01), length(zlddel_02), length(zlddel_03)];

% avg_all = [mean(all_wt); mean(all_wtnew2); mean(all_dl3); mean(all_twi2); mean(all_dl3twi2); ...
%     mean(all_dl1); mean(all_dl2); mean(all_dl12); mean(all_zldopt);  mean(all_zlddel)];
% err_all = [std(all_wt)./sqrt(size(all_wt,2)); std(all_wtnew2)./sqrt(size(all_wtnew2,2)); std(all_dl3)./sqrt(size(all_dl3,2));....
%     std(all_twi2)./sqrt(size(all_twi2,2)); std(all_dl3twi2)./sqrt(size(all_dl3twi2,2)); std(all_dl1)./sqrt(size(all_dl1,2)); ....
%     std(all_dl2)./sqrt(size(all_dl2,2)); std(all_dl12)./sqrt(size(all_dl12,2)); std(all_zldopt)./sqrt(size(all_zldopt,2));...
%     std(all_zlddel)./sqrt(size(all_zlddel,2))];

avg_all = [mean(all_wt); mean(all_dl1); mean(all_dl2); mean(all_dl12)];
err_all = [std(all_wt)./sqrt(size(all_wt,2)); std(all_dl1)./sqrt(size(all_dl1,2)); ....
    std(all_dl2)./sqrt(size(all_dl2,2)); std(all_dl12)./sqrt(size(all_dl12,2))];

figure,hold on; 
ctrs = 1:4;
h=bar(ctrs, avg_all,'EdgeColor','none');
h(1).FaceColor=[0.7 0.7 0.7];
hold on;
wt=bar(1, avg_active(1),'EdgeColor','none');
% wtnew2=bar(2, avg_active(2),'EdgeColor','none');
% dl3=bar(3, avg_active(3),'EdgeColor','none');
% twi2=bar(4, avg_active(4),'EdgeColor','none');
% dl3twi=bar(5, avg_active(5),'EdgeColor','none');
dl1=bar(2, avg_active(2),'EdgeColor','none');
dl2=bar(3, avg_active(3),'EdgeColor','none');
dl12=bar(4, avg_active(4),'EdgeColor','none');
% zldopt=bar(9, avg_active(9),'EdgeColor','none');
% zlddel=bar(10, avg_active(10),'EdgeColor','none');
ctr = [1 2 3 4];
hold on;
errorbar(ctr, avg_active, err_active, 'k.','linewidth',1);
errorbar(ctr, avg_all, err_all, 'k.', 'linewidth',1);
legend('total nuclei','wt','dl1','dl2','dl1/2');
set(gca,'xtick',[1 2 3 4],...
'xticklabel',{'wt','dl1','dl2','dl1/2'}); title ('Number of active nuclei'); ylabel ('Nuclei');
ax = gca;  ax.FontSize = 16; axis square; ylim([0 inf]);
%% fraction
avg_f = [mean(active_wt./all_wt); mean(active_dl3./all_dl3); mean(active_twi2./all_twi2); mean(active_dl3twi2./all_dl3twi2);...
    mean(active_dl1./all_dl1); mean(active_dl2./all_dl2); mean(active_dl12./all_dl12)];
err_f(:,1) = std(active_wt./all_wt)./size(active_wt,2);
% err_f(:,2) = std(active_wtnew2./all_wtnew2)./size(active_wtnew2,2);
err_f(:,2) = std(active_dl3./all_dl3)./size(active_dl3,2);
err_f(:,3) = std(active_twi2./all_twi2)./size(active_twi2,2);
err_f(:,4) = std(active_dl3twi2./all_dl3twi2)./size(active_dl3twi2,2);
err_f(:,5) = std(active_dl1./all_dl1)./size(active_dl1,2);
err_f(:,6) = std(active_dl2./all_dl2)./size(active_dl2,2);
err_f(:,7) = std(active_dl12./all_dl12)./size(active_dl12,2);
% err_f(:,9) = std(active_zldopt./all_zldopt)./size(active_zldopt,2);
% err_f(:,10) = std(active_zlddel./all_zlddel)./size(active_zlddel,2);
ctr = 1:7;
figure,hold on;
wt=bar(1, avg_f(1), 'EdgeColor','none');
% wtnew2=bar(2, avg_f(2), 'EdgeColor','none');
dl3=bar(2, avg_f(2), 'EdgeColor','none');
twi2=bar(3, avg_f(3), 'EdgeColor','none');
dl3twi2=bar(4, avg_f(4), 'EdgeColor','none');
dl1=bar(5, avg_f(5), 'EdgeColor','none');
dl2=bar(6, avg_f(6), 'EdgeColor','none');
dl12=bar(7, avg_f(7), 'EdgeColor','none');
% zldopt=bar(9, avg_f(9), 'EdgeColor','none');
% zlddel=bar(10, avg_f(10), 'EdgeColor','none');

errorbar(ctr, avg_f, err_f, 'k.','linewidth',1);
set(gca,'xtick',[1 2 3 4 5 6 7],'xticklabel',{'wt','dl3','twi2','dl3twi2','dl1','dl2','dl1/2'});
title ('Fraction of active nuclei');
ylabel ('Fraction');
ax = gca;  ax.FontSize = 16; axis square; ylim([0 1]);