function matris = J_ret(phi,alpha)
% Phi är fasförskjutning och alpha rotation
J_r = [exp(1i*phi/2) 0;0 exp(1i*(-phi/2))];
J = J_proj(alpha);
JT = J_proj(-alpha);
matris = JT*J_r*J;
end