% Parameters
a = 0.15;
b = 0.35;
c = 0.25;
z = (a + b + c) / 3;

T1 = 5.6678;
delta_1 = 2;
delta_2 = 4;

u_0 = 100;
u_1 = 112;
v_0 = 4;
v_1 = 1;

c_h = 0.10;

% --- Step-by-step evaluation ---

% Step 1: (u_1 - (v_1 * T1)) ./ z.^2
term1 = (u_1 - (v_1 * T1)) ./ z.^2;
fprintf('term1 = %.4f\n', term1);

% Step 2: (v_1 ./ z.^3)
term2 = v_1 ./ z.^3;
fprintf('term2 = %.4f\n', term2);

% Step 3: (term1 + term2)
sum1 = term1 + term2;
fprintf('sum1 = %.4f\n', sum1);

% Step 4: sum1 .* exp(z .* T1)
exp1 = exp(z .* T1);
expr1 = sum1 .* exp1;
fprintf('expr1 = %.4f\n', expr1);

% Step 5: -(v_0 ./ z.^3) .* exp(z .* delta_1)
expr2 = -(v_0 ./ z.^3) .* exp(z .* delta_1);
fprintf('expr2 = %.4f\n', expr2);

% Step 6: -(v_1 ./ z.^3) .* exp(z .* delta_2)
expr3 = -(v_1 ./ z.^3) .* exp(z .* delta_2);
fprintf('expr3 = %.4f\n', expr3);

% Step 7: +(v_0 ./ z.^3)
expr4 = v_0 ./ z.^3;
fprintf('expr4 = %.4f\n', expr4);

% Step 8: -(u_0 ./ z.^2)
expr5 = -(u_0 ./ z.^2);
fprintf('expr5 = %.4f\n', expr5);

% Final: Combine all terms
H_body = expr1 + expr2 + expr3 + expr4 + expr5;
fprintf('H (before multiplying by c_h) = %.4f\n', H_body);

% Multiply by c_h
H = c_h * H_body;
fprintf('\nFinal H = %.4f\n', H);
