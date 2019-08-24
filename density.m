function rho = density(r)

R = 638000e3; %metres
rho_centre = 150000; %kg per cubic metre

rho = rho_centre*(1-r/R);

end

