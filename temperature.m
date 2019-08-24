function T = temperature(r)
G = 6.67408e-11;
R = 638000e3;
rho_centre = 150000; %kg per cubic metre
mu = 0.61; 
m_H = 1.67e-27; 
k = 1.38064852e-23;

T = 0.1*(5*pi*G*mu*m_H)/(36*k)*rho_centre*R*R*(1+r/(R*R)-(19*r*r)/(5*R*R)+(9*r*r*r)/(5*R*R*R))+1.3125e7;


end

