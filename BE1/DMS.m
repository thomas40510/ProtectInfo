%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function DMS =  DMS(A, P, m, n)
% generate discrete source matrix from alphabet A and probabilities P
% m: number of rows, n: number of columns
% DMS: discrete source matrix
% returns DMS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function DMS =  DMS(A, P, m, n)
    DMS = randsrc(m, n, [A; P]);
end