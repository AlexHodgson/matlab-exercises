%just take the red component of the picture, and apply fourier transform
EinsteinR = Einstein(:,:,1);
imagefft = fftshift(fft2(EinsteinR));

filterSize = 20; %radius of the circle
matrixDim = size(imagefft);
centre(1) = ceil(matrixDim(1)/2);
centre(2) = ceil(matrixDim(2)/2); %stores the centre of the circle

% creates a matrix with a circle of 1 values at the centre
filter = zeros(size(imagefft));
for i = 1:matrixDim(1)
    for j = 1:matrixDim(2)
       if ((centre(1)-i)^2 + (centre(2)-j)^2) < filterSize^2
           filter(i,j) = 1;
       end
    end
end

%values of 1 outside the central circle
filter2 = zeros(size(imagefft));
for i = 1:matrixDim(1)
    for j = 1:matrixDim(2)
       if ((centre(1)-i)^2 + (centre(2)-j)^2) > filterSize^2
           filter2(i,j) = 1;
       end
    end
end

%apply filters
lowfilter = filter.*imagefft;
highfilter = filter2.*imagefft;

%Reverse fourier transform
Obama = abs(ifft2(ifftshift(lowfilter)));
Einstein2 = abs(ifft2(ifftshift(highfilter)));

%show both pictures
subplot(1,2,1);
imshow(uint8(Obama));
subplot(1,2,2);
imshow(uint8(Einstein2));





