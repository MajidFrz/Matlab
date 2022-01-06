clc
clear 
close all
%%
load TrainDataset.mat
MediumGaussianSVM = trainClassifier(Vector, Label);
save('MediumGaussianSVM.mat','MediumGaussianSVM');