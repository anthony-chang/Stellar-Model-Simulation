function L = flux(r)
R = 638000e3; %metres
rho_centre = 150000; %kg per cubic metre
G = 6.67408e-11;

L = 4*pi*rho_centre*((r*r*r)/3-(r*r*r*r)/(4*R))-1/3*pi*rho_centre*R*R*R+63000000;

end

