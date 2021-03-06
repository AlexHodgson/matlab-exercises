function [ f, error ] = focalLength( u,v )
%Returns the focal length f and error on the measurement
%   u - object distance, v - image distance (1D matrix)
errorU = 0.5;
errorV = std(v);
meanV = mean(v);

f = ((1/u)+(1/meanV))^-1;

errorFu = ((meanV^2)*errorU)/((u+meanV)^2); %error in f as caused by u,v
errorFv = ((u^2)*errorV)/((u+meanV)^2);

error = sqrt(errorFu^2 + errorFv^2);

