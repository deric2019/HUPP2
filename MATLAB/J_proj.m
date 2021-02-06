function matris = J_proj(alpha)
matris(1,1) = cos(alpha); % Projiceringsmatrisen
matris(1,2) = sin(alpha);
matris(2,1) = -sin(alpha);
matris(2,2) = cos(alpha);
end