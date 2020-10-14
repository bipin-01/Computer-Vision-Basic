
%{
        @author: Bipin Poudel
        Created on: 10/15/2020

}


%Read the image
img = imread('image.jpg');

%Get the size (rows and columns) of the image 
[r,c] = size(img);
rr=r/3;
%Wrire code to split the image into three equal parts and store them in B, G, R channels

B=imcrop(img,[1,1,c,rr-1]);
G=imcrop(img,[1,(1*rr)+1,c,rr-1]);
R=imcrop(img,[1,(2*rr)+1,c,rr-1]);

%concatenate R,G,B channels and assign the RGB image to ColorImg variable
ColorImg(683:1023,:,1) = R;
ColorImg(342:682,:,2) = G;
ColorImg(1:341,:,3) = B;
ColorImg = cat(3, R,G,B);
imshow(ColorImg)