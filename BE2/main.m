%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% main.m
% Main script for the block code laboratory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; close all; clc;

genMatrix;
C = genCode(G);
d = minDist(C);
P = genParity(G);
dp = compareParity(C);
fprintf('Minimum distance of the code: %d\n',d);
fprintf('Minimum distance of the parity code: %d\n',dp);