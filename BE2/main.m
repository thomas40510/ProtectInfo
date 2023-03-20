%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% main.m
% Main script for the block code laboratory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; close all; clc;

genMatrix;
C = genCode(G);
d = minDist(C);
fprintf('Minimum distance of the code: %d\n',d);
compareToParity(G);

[H, Gh] = hammingCode(15,11);
dh = minDist(Gh);
fprintf('Minimum distance of the Hamming code: %d\n',dh);