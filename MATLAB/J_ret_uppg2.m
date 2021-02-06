function a = J_ret_uppg2(alpha_n,delta,n_eo_theta,n_o,lambda)
    k_0 = 2* pi/lambda;
    delta_n = n_eo_theta - n_o;
    phi = k_0*delta_n*delta;
    M = [exp(1i*phi) 0;0 1];
    a = J_proj(-alpha_n)*M*J_proj(alpha_n);
end