function bit_seq = GenerateBits(N_bits)
%
% Inputs:
%   N_bits:     Number of bits in the sequence
% Outputs:
%   bit_seq:    The sequence of generated bits
%
% This function generates a sequence of bits with length equal to N_bits

%bit_seq = zeros(1,N_bits);
%%% WRITE YOUR CODE HERE
% generate rand {0,1} prob:0.6,0.4 simultinously
bit_seq = randsrc(1,N_bits,[0,1;.6,.4]);
end
%%%