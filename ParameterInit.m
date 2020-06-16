% RADAR type : Short-Range RADAR
                   
% Maximal Range : 
 % Resolution :
 % Maximal detected targets:
 %============ Uncomment to reconfigure RADAR  ====================%
 
% Rmax =250; %% Maximal range  (m)
% Rmax =120; %% Maximal range  (m)
% Rmax =80; %% Maximal range  (m)
  Rmax =30; %% Maximal range  (m)
fc = 79e9;
c = 3e8;%% Speed of light
%lambda = c/fc;%% Length of wave

               %%%%%chirp parameters  %%%%%%%%%
% BW=500e6; %% in Hz  LRR
% BW=1e9; %% in Hz  MRR
% BW=3e9; %% in Hz  SRR
 BW=4e9; %% in Hz  USRR

                %%%%%%%%%% Interferer Params %%%%%%%%%%%
%% 3 types of interferer radars 

interferer={'SRR','MRR', 'LRR'};
% SRR: 
Bsrr=4e9;
% MRR:
Bmrr=1e9;
% LRR:
Blrr=0.5e9;
% % Simple Scenario
% B_CW_RADAR= 0 ;


fci1=77e9; %>> Blrr et Bmrr
fci2=79e9; % >> Bsrr

BW_I=[Bsrr Bmrr Blrr]; %% Interferer bandwidth
fc_I=[fci1 fci1 fci2]; %% interferer carrier frequencies
 