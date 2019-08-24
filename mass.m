function m = mass(r)
R = 638000e3; %metres
rho_centre = 150000; %kg per cubic metre

m = 4*pi*rho_centre*(r*r*r/3-r*r*r*r/(4*R));


end

