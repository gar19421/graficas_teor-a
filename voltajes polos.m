clc
clear all
close all


X = linspace(-20,20,50);
Y = linspace(-20,20,50);

f = @(r,t) (3*cos(t))/(4*pi*r.^2);

[X,Y] = meshgrid(X,Y);
R = sqrt(X.^2+Y.^2);
THETA = atan(Y./X);

V = f (R, THETA);
surf (R.*cos(THETA), R.*sin(THETA), V), shading interp;

ylabel('Eje y', 'Fontsize', 16)
xlabel('Eje x', 'Fontsize', 16)
zlabel('Eje z', 'Fontsize', 16)
grid off

