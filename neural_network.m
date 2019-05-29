% Solve a Pattern Recognition Problem with a Neural Network

input =xlsread('distance vector.xlsx','Sheet1');
inputs(24,150)=0;
%net(1,150)=000;
%transpose
for i=1:150
    for j=1:24
       inputs(j,i)=input(i,j);
    end
end
%normalise
maxm=max(inputs);
maximum=max(maxm);
inputs=(inputs/maximum);
target = [1 1 1;1 1 0;1 0 1;1 0 0;0 1 1];
i=1;
l=1;
t1=zeros(150,3);
while (i<150)
    l=1;
    while (l<6)
        t1(i,1:3)= target(l,:);
        i=i+1;
        l=l+1;
    end
end
%t1 =xlsread('distance vector.xlsx','Sheet2');
t=t1.'; 
net=newff(inputs,t,[16 10 5]);
net.trainFcn='trainc';
net.trainParam.epochs=4000;
net.trainParam.lr=0.5;
net.trainParam.goal=0.001;
net=train(net,inputs,t);
save('net');
networks=loadobj('net.mat');