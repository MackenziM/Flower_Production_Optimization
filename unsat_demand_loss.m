% Unsatisfied Demand 

function L = unsat_demand_loss(c_l, u_1,T,opt_T1, v_1, n)

L = c_l .* ( u_1 .* (T- (opt_T1)) ...
            - (v_1 ./ 2) .* (T.^2 - (opt_T1).^2) ...
            - ( (u_1 ./ n) - ((v_1 .* T ) ./ n) + (v_1 ./n.^2) )  ...
            + ( (u_1 ./ n) - ((v_1 .* (opt_T1) ) ./ n) + (v_1 ./n.^2) ).*exp(n.* ((opt_T1) - T)) )

end 
