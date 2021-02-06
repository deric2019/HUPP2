clear all 
clc
clf

N_skiv = 100; % Antalet skivor, bör vara större än 50
n = (1:1:N_skiv)'; 
alpha_n = pi/2*n/N_skiv;
d = 20e-6;
delta = d/N_skiv;

theta = 0; % Tiltvinkel
n_o = 1.5;
n_eo = 1.6;
n_eo_theta1 = n_eo_theta(theta,n_eo,n_o);

lambda_R = 663e-9; % Rött ljus
lambda_B = 470e-9; % Bått ljus
lambda_G = 500e-9; % Grönt ljus

index = 0;
theta_angle = (0:0.1:90)';

I_theta_R = zeros(size(theta_angle,1),1);
I_theta_B = zeros(size(theta_angle,1),1);
I_theta_G = zeros(size(theta_angle,1),1);

E_in = [1 1]';

for angle = 0:0.1:90
    theta = deg2rad(angle);
    n_eo_theta1 = n_eo_theta(theta,n_eo,n_o);
    
    E_1_R = J_pol(0)*E_in;
    E_1_B = J_pol(0)*E_in;
    E_1_G = J_pol(0)*E_in;

    for n = 1:N_skiv
        E_2_R = J_ret_uppg2(alpha_n(n),delta,n_eo_theta1,n_o,lambda_R)*E_1_R;
        E_1_R = E_2_R;
        
        E_2_B = J_ret_uppg2(alpha_n(n),delta,n_eo_theta1,n_o,lambda_B)*E_1_B;
        E_1_B = E_2_B;
                
        E_2_G = J_ret_uppg2(alpha_n(n),delta,n_eo_theta1,n_o,lambda_G)*E_1_G;
        E_1_G = E_2_G;
    end
    
    E_ut_R = J_pol(pi/2)*E_2_R;
    E_ut_B = J_pol(pi/2)*E_2_B;
    E_ut_G = J_pol(pi/2)*E_2_G;
    
    index = index+1;
    angle_vec(index,1) = angle;
    
    I_theta_R(index,1) = abs(E_ut_R(1,1)).^2+abs(E_ut_R(2,1)).^2;
    I_theta_B(index,1) = abs(E_ut_B(1,1)).^2+abs(E_ut_B(2,1)).^2;
    I_theta_G(index,1) = abs(E_ut_G(1,1)).^2+abs(E_ut_G(2,1)).^2;

end

plot(angle_vec,I_theta_R,'r','LineWidth',2)
hold on
plot(angle_vec,I_theta_B,'b','LineWidth',2)
plot(angle_vec,I_theta_G,'g','LineWidth',2)

legend('R','B','G');
str= num2str(d);
title('Transmission i LC-cell d = 20 $\mu$m','interpreter','latex')
xlabel('tiltvinkel $\theta$','interpreter','latex')
ylabel('$I_{ut}$','interpreter','latex')

set(gca,'FontSize',20)































