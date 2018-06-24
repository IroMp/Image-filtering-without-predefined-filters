# Image-filtering-without-predefined-filters
Different types of filters (smoothing, edge-preserving etc.) applied to sample images in Matlab and implemented without any inbuild function. When the code is running, the initial images are displayed along with the results of their processing. 

1. Smoothing Filters

    Box or Averaging Filter (3x3) (image:noise.bmp)
    
    Median Filter                 (image:noise.bmp)
    
    Binomial Filter (5x5)         (image:Ph3_3a.tif)   
   
   
   
2. Min/Max filtering

    Image thresholding            (image:Ph3_3b.tif)
    
    Min Filter                    (image:Ph3_3b.tif)
    
    Max Filter                    (image:Ph3_3b.tif)
   
   
   
3. Sharpening (High-pass) Filters

    Gradient Filter: Sobel Operator 
    
       Normalized x-gradient from Sobel  (image:Ph3_3c.tif)
       Normalized y-gradient from Sobel  (image:Ph3_3c.tif)
    
    %For edge detection and enhancement the generated images could be added and then, this final image should be subtracted from the initial one.
   
    Laplace Filter 
   
               | 0  -1   0 |
        Type 1 |-1   5  -1 |   (image:Ph3_3d.tif)         
               | 0  -1   0 |
                         
               |-1  -1  -1 |
        Type 1 |-1   9  -1 |   (image:Ph3_3d.tif)         
               |-1  -1  -1 |
               
               
