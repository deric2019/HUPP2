%% R -> R
clc
clear all

phi = pi/2; % Kvartvåg
alpha = pi/4; % eo-riktning

E_in = [1 1]'; % Infallande fält
E_ut1 = J_pol(0)*E_in; % Polarisation med transmissionsriktning i x-led
E_ut2 = J_ret(phi,alpha)*E_ut1; % Kvartvågsplattan med phi = pi/2
E_ut3 = J_ret(phi,-alpha)*E_ut2; % Kvartvågsplattan igen fast nu inverterad 
E_ut4 = J_pol(0)*E_ut3 %  Polarisation med transmissionsriktning i x-led
I_ut = abs(E_ut4(1))^2+abs(+E_ut4(2))^2; % Intensitetsberäkning



%% R -> L
clc
clear all

phi = pi/2;
alpha = pi/4;

E_in = [1 1]';
E_ut1 = J_pol(0)*E_in;
E_ut2 = J_ret(phi,alpha)*E_ut1;
E_ut3 = J_ret(phi,alpha)*E_ut2;
E_ut4 = J_pol(0)*E_ut3;
I_ut = abs(E_ut4(1))^2+abs(+E_ut4(2))^2;


%% L -> R
clc
clear all

phi = pi/2;
alpha = pi/4;

E_in = [1 1]';
E_ut1 = J_pol(0)*E_in;
E_ut2 = J_ret(phi,-alpha)*E_ut1;
E_ut3 = J_ret(phi,-alpha)*E_ut2;
E_ut4 = J_pol(0)*E_ut3;
I_ut = abs(E_ut4(1))^2+abs(+E_ut4(2))^2;


%% L -> L
clc
clear all

phi = pi/2;
alpha = pi/4;

E_in = [1 1]';
E_ut1 = J_pol(0)*E_in;
E_ut2 = J_ret(phi,-alpha)*E_ut1;
E_ut3 = J_ret(phi,alpha)*E_ut2;
E_ut4 = J_pol(0)*E_ut3;
I_ut = abs(E_ut4(1))^2+abs(+E_ut4(2))^2;


