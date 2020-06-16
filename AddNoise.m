function [sigma1,sigma2]= AddNoise(SNR_val,v,Signal)
%ADDNOISE Summary of this function goes here
%   Detailed explanation goes here
%%----------------- Noise  -------------------
 %  SNR: Signal to noise ratio
 % V: Calibre du bruit
l=length(Signal);
SNR_val = db2pow(SNR_val);                   % convert dB to power
sigma1 = 1./sqrt(2*SNR_val);                % Sigma AWGN
sigma2 = sqrt(v./(SNR_val));                % Sigma industrial noise

% noise = InduNoise(l,sigma1,sigma2);    % define noise standard deviation
  %%----------------- Channel  -------------------
end

