% Germination Costs 

function G = germination_costs(c_0, T_0, alpha)

    a = 0.15;
    b = 0.25;
   

    u_0 = 100 ;
    u_1 =  112 ;
    v_0 = 4 ;
    v_1 = 1 ;
    z = (a+b) ./ 2 ;
    delta_1 =  2 ;
    delta_2 = 4 ;
    opt_T1 = 6.3285 ;
    n = 0.1000 ;
    T = 12; 

G = ( (c_0 .* T_0) ./ alpha ) .* ( inital_flowers(u_0, u_1, v_0, v_1, z, delta_1, delta_2, opt_T1)  ...
    + backlogged_flowers(u_1, v_1, T, opt_T1, n) )



end

