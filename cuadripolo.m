hold on
for V=1:5
    ang=(0:1:360)*pi/180;
    z=(3*cos(ang).^2-1)/V;
    r=nthroot(z,3);
    x=r.*cos(ang);
    y=r.*sin(ang);
    plot(x,y);
end
xlabel('x')
ylabel('y')
title('Cuadripolo eléctrico')
axis equal


%campo eléctrico  en los puntos de esta malla
[X,Y]=meshgrid(-0.9:0.1:0.9,-0.9:0.1:0.9);
r=sqrt(X.^2+Y.^2);
ang=atan(Y./X);
Er=(3*(cos(ang).^2)-1)./r.^4; %componentes polares
Ea=sin(2.*ang)./r.^4;  
Ex=Er.*cos(ang)-Ea.*sin(ang); %componentes rectangulares
Ey=Er.*sin(ang)+Ea.*cos(ang);

E = sqrt(Ex.^2+Ey.^2);

quiver(Y,X,Ey./E,Ex./E,'autoscalefactor',0.4)
hold off
axis equal

xlabel('y')
ylabel('z')
title('Cuadrupolo eléctrico')
