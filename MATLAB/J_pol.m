function matris = J_pol(alpha)
J = J_proj(alpha); % Polarisations matrisen
I = [1 0; 0 0];
JT = J_proj(-alpha);
matris = JT*I*J;
end