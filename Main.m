syms r;

%Constants
G = 6.67408e-11;
k = 1.38e-23;
mu = 0.61; 
m_H = 1.67e-27; 
R = 638000e3;
gamma = 2.5/1.5;
kappa = 0.001;
a = 7.56e-16;
c = 3e8;
rho_centre = 150000;
L = 3.86e26;

%Radiative and Convective Export dT/dr respectively
% dTr = @(r) (-3/(4*a*c))*((kappa*density(r))/(temperature(r)^3))*(L/(4*pi*r^2));
% dTc = @(r) (1-1/gamma)*temperature(r)/pressure(r)*(-G*mass(r)*density(r)/r^2);
% fplot(dTr, [0, R]);
% hold on
% fplot(dTc, [0, R]);

%T(r) from the ideal gas law in equation [8]
T = @(r) (0.1*pressure(r)*mu*m_H)/(k*density(r));

%plot T(r) from 0 to R
fplot(T, [0, R]);
grid on

%logarithmic y-scaling
set(gca, 'YScale', 'log')

%scale the x-axis as a function of R metres
ax = gca;
ax.XTick = 0:0.1*R:R;
ax.XTickLabel = {'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1'};

%titles and labels
title('Temperature vs. Radius of a Sun-like stellar object');
xlabel('Radius (\times6.38E8 m)') 
ylabel('Temperature (K)') 

