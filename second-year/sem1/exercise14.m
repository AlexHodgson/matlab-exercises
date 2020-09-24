x = PoissonData.VarName1
y = PoissonData.VarName2
h1 = histogram(x,35)
hold on
h2 = histogram(y,35)
h2.FaceColor = [0 0.5 0.5]
hold off

%Means
PoissonMean1 = mean(x)
PoissonMean2 = mean(y)

%Standard deviation
poissonDev1 = std(x)
poissonDev2 = std(y)

%Error
poissonError1 = poissonDev1/sqrt(max(size(y)))
poissonError2 = poissonDev2/sqrt(max(size(y)))

%Square root of mean
SqMean1 = sqrt(Mean1)
SqMean2 = sqrt(Mean2)

%Table of results
["Dataset 1","Dataset 2";PoissonMean1,PoissonMean2;poissonDev1,poissonDev2;poissonError1,poissonError2;SqMean1,SqMean2]


%Assign data to variables
Gauss1 = GaussianData.VarName1
Gauss2 = GaussianData.VarName2
Gauss3 = GaussianData.VarName3
Gauss4 = GaussianData.VarName4
Gauss5 = GaussianData.VarName5

%Calculate means
Mean1 = mean(Gauss1)
Mean2 = mean(Gauss2)
Mean3 = mean(Gauss3)
Mean4 = mean(Gauss4)
Mean5 = mean(Gauss5)

%Standard Deviation
dev1 = std(Gauss1)
dev2 = std(Gauss2)
dev3 = std(Gauss3)
dev4 = std(Gauss4)
dev5 = std(Gauss5)

%error
Error1 = dev1/sqrt(max(size(Gauss1)))
Error2 = dev2/sqrt(max(size(Gauss2)))
Error3 = dev3/sqrt(max(size(Gauss3)))
Error4 = dev4/sqrt(max(size(Gauss4)))
Error5 = dev5/sqrt(max(size(Gauss5)))

%table
["data1","data2","data3","data4","data5";Mean1,Mean2,Mean3,Mean4,Mean5;dev1,dev2,dev3,dev4,dev5;Error1,Error2,Error3,Error4,Error5]





