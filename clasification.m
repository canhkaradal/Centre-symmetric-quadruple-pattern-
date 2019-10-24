clc , close , clear all
res=imread('yuz1.jpeg');
resim=imread('yuz2.jpeg');
histo(1,1:32)=quadratic(res);
histo(2,1:32)=quadratic(resim);
histo(1,33)=1;
histo(1,33)=2;