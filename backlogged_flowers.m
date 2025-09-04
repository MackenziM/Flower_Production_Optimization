function R = backlogged_flowers(u_1, v_1, T, opt_T1, n )

R =  ((u_1./ n) + (v_1 ./ n^2)) .* (1- exp(n .* ((opt_T1) - T))) ...
    + (v_1./n) .* ((opt_T1).* exp(n .* (opt_T1-T)) -T )

end 
