function Emissions =  total_emissions(T_1,params)


% Unpack parameters
T = params.T;      T0 = params.T0;      alpha = params.a;
delta_1 = params.d1;     delta_2 = params.d2;      z = params.z;   n = params.n;

u0 = params.u0;     v0 = params.v0;      
u1 = params.u1;     v1 = params.v1;

o  = params.O;      co = params.co;      ct = params.ct;
ch = params.ch;     cd = params.cd;      cs = params.cs;    cl = params.cl;

eo = params.co_tilde; eh = params.ch_tilde; ed = params.cd_tilde;
x = params.x;       y = params.y;        p = params.p;



R =  ((u1./ n) + (v1 ./ n^2)) .* (1- exp(n .* ((T_1) - T))) ...
    + (v1./n) .* ((T_1).* exp(n .* (T_1-T)) -T );

Emissions = (1 ./ T) .* ( (((eo.*T0)./alpha) + (eh ./ z) +ed) .* ...
                       ((( ((u1 - v1.*(T_1))/z)) + ((v1/z.^2))).* exp(z.*(T_1))  ...
                       - (v0 ./ z.^2).* exp(z .* delta_1) ...
                       - (v1 ./ z^2) .* exp(z.* delta_2) ...
                        + (v0 ./ z.^2) ...
                        - (u0 ./ z) )...
                        + (eh ./ z + ed) .* ((v0 .* delta_1.^2) ./2 + v1 ./2  .*((T_1).^2 + delta_2.^2) -u1.*(T_1)) ... 
                        + ((eo.*T0)./alpha) .* R ) ;
end

