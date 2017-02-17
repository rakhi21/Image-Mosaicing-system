%This code is detecting corners using FAST corner detection algorithm and returning cornerPoints object

I = imread('lab.pgm');%read the input image,image is in portable gray map format. 

%Make image greyscale
if length(size(I)) == 3
	im =  double(I(:,:,2));
else
	im = double(I);
end
%Find the corners 
%points = detectFASTFeatures(I) returns a cornerPoints object, points.The object contains information 
%about the feature points detected in a 2-D grayscale input image, I.The detectFASTFeatures function 
%uses the Features from Accelerated Segment Test (FAST) algorithm to find feature points.
corners = detectFASTFeatures(I);

imshow(I);%displays the output image
colormap(gray);%Return the colormap values for a specific axes by passing its axes handle to the colormap function.

hold on;%hold on retains plots in the current axes so that new plots added to the axes do not 
%delete existing plots. New plots use the next colors and line styles based on the ColorOrder and
%LineStyleOrder properties of the axes. 

plot(corners.selectStrongest(50));%corners.selectStrongest(N) returns N number of points with strongest metrics.
%plot(Y) creates a 2-D line plot of the data in Y versus the index of each value.

hold off;%sets the hold state to off so that new plots added to the axes clear existing plots and reset
%all axes properties. 