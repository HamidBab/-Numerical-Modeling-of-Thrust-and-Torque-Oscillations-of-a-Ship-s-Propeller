t=0:0.0003:2; % time
Th=161.491; % Nominal Thrust kN
TQ=1.543; % Nominal Torque Mn.m
N=4; % Number of blades
RV=100; % propeller rotational velocity (rpm)
omega=RV*2*pi/60; % rad/s
figure(1)
FTh=Th.*(1+0.01.*sin(N.*omega.*t)+0.001.*sin(2.*N.*omega.*t)+0.0001.*sin(3.*N.*omega.*t)+0.001.*sin(30.*N.*omega.*t));
plot(t,FTh)
figure(2)
FTQ=TQ.*(1+0.01.*sin(N.*omega.*t)+0.001.*sin(2.*N.*omega.*t)+0.0001.*sin(3.*N.*omega.*t)+0.001.*sin(30.*N.*omega.*t));
plot(t,FTQ)