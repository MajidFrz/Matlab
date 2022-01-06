clc
clear 
close all
%%
load TestDataset.mat
load MediumGaussianSVM.mat
Y=MediumGaussianSVM.predictFcn(tVector);
plotconfusion(tLabel,Y')