%%
% Alexandria University
% Faculty of Engineering
% Electrical and Electronic Engineering Department
%
% Course: 
% 
% Lab No. 1:

%% Simulation parameters

N_bits = 1000000; % Total number of bits
M = 8 ; %Order of Modulation 
snr_vect = 0:1:15;    % Max signal to noise ratio in db
pBER  = zeros(size(snr_vect));  % Use this vector to store the resultant BER

%% Generate a bit sequence
bit_seq = GenerateBits(N_bits); %  Generate a sequence of bits equal to the total number of bits

%% Modulate the bit stream using 8DPSK
txStream = dpskmod(bit_seq,M);

%% Add noise to the transmitted sequence
for snr_ind = 1 : length(snr_vect) 
chStream = awgn(txStream,snr_ind,'measured');

%%  demodulation of the sequencern
rxStream = dpskdemod(chStream,M);

%%  Compute the BER
pBER(snr_ind) = ComputepBER(bit_seq,rxStream);

end
%% Repeat the previous steps for every SNR value and draw the probability of errorcurve
figure
plot(snr_vect,pBER);
title('The SNR Vs BER')
ylabel('pBER')
xlabel('SNR')

