function [nI]=scrollImg(F,d,h)
nI=circshift(F,[d h]);