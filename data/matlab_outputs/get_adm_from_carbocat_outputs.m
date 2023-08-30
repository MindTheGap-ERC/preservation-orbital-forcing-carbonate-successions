load("bathurst_2m_amp.mat") %% load model outputs of scenario A
close all % close all figures saved in file

%% Extract Age Depth Models of Scenario A
pos_in_strike_dir = 5; % get adm at 5th grid cell in strike dir
[bathurst_2m_amp_adm_along_dip, bathurst_2m_amp_time]=get_adms_along_dip(pos_in_strike_dir,glob); % extract position
bathurst_2m_amp_sea_level=glob.SL; % get sea level curve of scenario A
clear glob stats

%%
load("bathurst_20m_amp.mat") %% load model outputs of scenario B
close all % close all figues saved in file
%% 
pos_in_strike_dir = 5;
[bathurst_20m_amp_adm_along_dip, bathurst_20m_amp_time]=get_adms_along_dip(pos_in_strike_dir,glob); % extract position
bathurst_20m_amp_sea_level=glob.SL; % get sea level curve of scenario A
%%
clear glob stats
save('bathurst_2m_and_20m_amp_adm.mat','bathurst_2m_amp_adm_along_dip','bathurst_20m_amp_adm_along_dip','bathurst_2m_amp_time','bathurst_20m_amp_time',"bathurst_2m_amp_sea_level","bathurst_20m_amp_sea_level")

%%
function [A,t] = get_adms_along_dip(pos_in_strike_dir,glob)
si=size(glob.thickness);
A=zeros(si(1),si(3)+1);
for i=1:si(1)
    a1=glob.thickness(i,pos_in_strike_dir,:);
    a2=squeeze(cellfun(@(x) sum(x,'all'),a1));
A(i,:)=cumsum([0;a2])';
end
t=(0:(si(3)))*glob.deltaT;
end

