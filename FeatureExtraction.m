clc
clear 
close all
%%
load ARCFACE.mat
TrainDS=imageDatastore('Training','IncludeSubfolders',true, 'LabelSource','foldernames');
for i=1:numel(TrainDS.Files)
    I=imread(TrainDS.Files{i});
    Vector(i,:)=predict(arcface,imresize(I,[112 112]),'executionEnvironment','cpu');
    Label(i)=TrainDS.Labels(i);
end
save('TrainDataset.mat','Vector','Label')

TestDS=imageDatastore('Validation','IncludeSubfolders',true, 'LabelSource','foldernames');
for i=1:numel(TestDS.Files)
    I=imread(TestDS.Files{i});
    tVector(i,:)=predict(arcface,imresize(I,[112 112]));
    tLabel(i)=TestDS.Labels(i);
end
save('TestDataset.mat','tVector','tLabel')
