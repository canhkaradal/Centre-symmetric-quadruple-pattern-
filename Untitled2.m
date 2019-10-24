res=imread('parmak2.jpeg');
res=rgb2gray(res);
imshow(res)
yeni=desen(res);
figure;imshow(yeni)