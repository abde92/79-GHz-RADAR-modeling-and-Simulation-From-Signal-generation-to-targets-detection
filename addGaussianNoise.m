%% Copyright(c) Naushad Ansari, 2017.
% %% Please feel free to use this open-source code for research purposes only. 
% %%
% %% contact at naushadansari09797@gmail.com in case of any query.
% %%
% %%
% %% This function adds additive white Gaussian noise (with zero mean and 
% %% given snr) to a signal. Signal can be any n-D signal.
%%-----------------------------------------------------------------------%%
%%-----------------------------------------------------------------------%%
% %% output: noisySig-> resultant n-dimensional noisy signal.
%            
% %% input:  sig-> original n-dimensional signal
%            reqSNR-> required/given SNR of the noise, to be added in the  
%            given signal.
%%-----------------------------------------------------------------------%%
%%-----------------------------------------------------------------------%%
function noisySig = addGaussianNoise(sig,reqSNR)
sigEner = norm(sig(:))^2;                    % energy of the signal
noiseEner = sigEner/(10^(reqSNR/10));        % energy of noise to be added
noiseVar = noiseEner/(length(sig(:))-1);     % variance of noise to be added
noiseStd = sqrt(noiseVar);                   % std. deviation of noise to be added
noise = noiseStd*randn(size(sig));           % noise
noisySig = sig+noise;                        % noisy signal

