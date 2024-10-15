%% hw1
clc,clear all
A=[20 4 6;4 20 8;6 8 20];
b=[10 -24 -22]';
[xj,iterj]=jacobi(A,b,5e-5)
[xgs,itergx]=gs(A,b,5e-5)
[xsor,itersor]=sor(A,b,1.35,5e-5)