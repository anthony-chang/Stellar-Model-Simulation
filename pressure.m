function P = pressure(r)
R = 638000e3; %metres
rho_centre = 150000; %kg per cubic metre
G = 6.67408e-11;

P = -4*pi*G*rho_centre*rho_centre*((r*r*r*r)/(16*R*R)-(7*r*r*r)/(36*R)+(r*r)/6)+(5/36*pi*G*rho_centre^2*R^2);


end

