a = 0.006;
b = 0.0075;
Q = 5*10.^-9;
e_0 = 8.86*10.^-12;
e_r = 0.00001;
r = 0:0.01:1;
k = 0.001;

D = ...
  (0) .* (r < a           ) + ...
  (Q./(4*pi.*r.^2)) .* (r > a) ;
  

subplot(2,1,1);
plot(r,D);

xlabel("Distancia (m)")
ylabel("Desplazamiento Eléctrico (c/m)")


E = ...
  (0) .* (r < a           ) + ...
  (Q./(4*e_0*e_r*pi.*r.^2)) .* (r > a  & r <b) + ...
  ((Q./(4*e_0*pi.*r.^2))+ (k.*r.^2)./e_0 ) .* (r > b & r <2*b) + ...
  (Q./(4*e_0*pi.*r.^2)) .* (r > 2*b);
  


subplot(2,1,2);
plot(r,E);

xlabel("Distancia (m)")
ylabel("Campo Eléctrico (v/m)")
