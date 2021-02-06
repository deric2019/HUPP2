%% R -> R
clc
clear all

phi = 1.25*pi/2; % Avvikelse
alpha = pi/4;  % eo-riktning
roterad = pi/2; % Roterad glasögon

E_in = [1 1]'; % Infallande fält
E_ut1 = J_pol(roterad)*E_in; % Roterad transmissionsriktning med 90 grader
E_ut2 = J_ret(phi,alpha+roterad)*E_ut1; % eo-riktning roterad 90 grader
E_ut3 = J_ret(phi,-alpha)*E_ut2; % Samma här
E_ut4 = J_pol(0)*E_ut3; % Roterad transmissionsriktning 90 grader
I_ut = abs(E_ut4(1))^2+abs(+E_ut4(2))^2;


%% R -> L
clc
clear all

phi = 1.25*pi/2;
alpha = pi/4;
roterad = pi/2;

E_in = [1 1]';
E_ut1 = J_pol(roterad)*E_in;
E_ut2 = J_ret(phi,alpha+roterad)*E_ut1;
E_ut3 = J_ret(phi,alpha)*E_ut2;
E_ut4 = J_pol(0)*E_ut3;
I_ut = abs(E_ut4(1))^2+abs(+E_ut4(2))^2;

%% L -> R
clc
clear all

phi = 1.25*pi/2;
alpha = pi/4;
roterad = pi/2;

E_in = [1 1]';
E_ut1 = J_pol(roterad)*E_in;
E_ut2 = J_ret(phi,-alpha+roterad)*E_ut1;
E_ut3 = J_ret(phi,-alpha)*E_ut2;
E_ut4 = J_pol(0)*E_ut3;
I_ut = abs(E_ut4(1))^2+abs(+E_ut4(2))^2;

%% L -> L
clc
clear all

phi = 1.25*pi/2;
alpha = pi/4;
roterad = pi/2;

E_in = [1 1]';
E_ut1 = J_pol(roterad)*E_in;
E_ut2 = J_ret(phi,-alpha+roterad)*E_ut1;
E_ut3 = J_ret(phi,alpha)*E_ut2;
E_ut4 = J_pol(0)*E_ut3;
I_ut = abs(E_ut4(1))^2+abs(+E_ut4(2))^2;




