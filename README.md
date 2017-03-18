# Image-Mosaicing system
PROJECT Name: Image Mosaicing System

Supervisor Name: Dr. Rajiv Kumar

Group Number : 26

Groupmembers: 
Priyanshi Singh url: https://github.com/priyanshi82/Image-mosaicing-system1.git

Richa Anand url:https://github.com/imagemosaic-richa/image-mosaicing-system.git

Platform: MATLAB

Image mosaicing is a process of assembling multiple overlapping images of the same scene into a large image. The output of the image mosaicing operation will be the union of the two input images.Image mosaicing consists of basic three steps: 
1. Image Acquisition
2. Image Registration 
3. Image Blending

Different image acquisition techniques are image acquisition by camera rotations, image acquisition by camera translations, and image acquisition by a hand held camera.
Image Registration includes feature detection and extraction, feature matching and transforming the images with the help of a transformation model. The feature detection step can be executed in a number of methods by selecting various features in the images which are unique and robust. Out of all the feature detected, the corners are most versatile and gives the very good results. The corner detection method used in this paper is Harris corner detection method which used the Harris-Stephens algorithm to detect the corners in the given image.
The next step after feature extraction is the matching of the features. Features of two images are matched and then mapped accordingly. This Mapping of features of two different projections having same center of projection is called homography. The algorithm used for homography in this project is RANSAC(Random sample Consensus Algorithm). It is mapping between two spaces which is often used to represent the correspondence between two images of the same scene. It is widely used for the project where multiple images are taken from a rotating camera center ultimately warped together to produce a panoramic view.
Once the source pixels have been mapped onto the final composite surface, the next step is to blend them in order to create an attractive looking panorama. Image blending is the technique which modifies the image gray levels in the vicinity of a boundary to obtain a smooth transition between images by removing these seams and creating a blended image by determining how a pixel in an overlapping area should be presented.

In the first module of this project after acquisition of images, for feature detection we took 3 algorithms to find the coners in the image (i.e FAST, Minimum eigen value and  harris) and compared them. In this module i had worked on FAST corner detection algorithm. On the basis of comparison we found that harris corner detection is best so we continued the next phase on the basis of outcome from harris corner detection algorithm.
In the second module we are matching the detected features of overlapping images using RANSAC algorithm. In this module i had worked on estimation of homography using ComputeH method. 

