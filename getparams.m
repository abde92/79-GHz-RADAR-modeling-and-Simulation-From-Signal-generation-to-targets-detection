function [cst1, cst2, s_s, fb_max, fs, dt, fmin, fmax] = getparams(BW,fc,Rmax)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% This function will be insered in the main programm to get parameters

c = 3e8;%% Speed of light
%lambda = c/fc;%% Length of wave

               %%%%%chirp parameters  %%%%%%%%%             
fmax=fc+BW/2 ;% starting frequency of the chirp
fmin=fc-BW/2;% End frequency of the chirp
% fs1=2.5*bfmax; %% sampling frequency respecting shanon theorem
dt=(2*Rmax)/c; %% chirp duration/sweep time

Res=c/(2*BW); %% range resolution % Res=Res*10^2    %% range resolution in cm              
cst1=fc-BW/2;
cst2=BW/(2*dt);
s_s = BW/dt; %% sweep slope

 %%% beat frequency parametres  2*r*slope/c.
 fb_max=2*Rmax*s_s/c;
 fs=2.5*fb_max;
end

