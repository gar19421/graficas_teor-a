clc
clear all
close all


X = linspace(-20,20,50);
Y = linspace(-20,20,50);

f = @(R,THETA) (-exp(-R)*(R.^2+6.*R+18+24./R)+1./R+(0.5*(3.*cos(THETA)-1))*exp(-R)*(5.*R.^2 +30.*R+360./R+720./R.^2+720./R.^3)-6./R.^3);

[X,Y] = meshgrid(X,Y);
R = sqrt(X.^2+Y.^2);
THETA = atan(Y./X);

V = f (R, THETA);
surf (R.*sin(THETA), R.*cos(THETA), V),shading interp, colorbar, colormap jet;

xlabel('Eje x', 'Fontsize', 16)
ylabel('Eje y', 'Fontsize', 16)
zlabel('Eje z', 'Fontsize', 16)
grid off

