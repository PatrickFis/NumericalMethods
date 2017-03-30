function Romberg()  # Required slight modifications because Octave does not have 0 based indexing  i = 0;  j = 0;  k = 0;  n = 8;  a = 1.3;  b = 2.19;  h = b - a;  sum = 0.0;  r = zeros(8);  f = @(x) RSin(x, 10^-10)/x;  # f = @(x) sin(x)/x;  r(1, 1) = (h/2) * (f(a) + f(b));  for i = 2:n    h = h/2;    sum = 0;    # Changed 2^i - 1 to 2^(i-1) - 1 to account for starting at i = 2    for k = 1:2:(2^(i-1) - 1)      sum = sum + f(a + k*h);      endfor    r(i, 1) = (0.5 * r(i-1, 1) + (sum * h));    for j = 2:i      # Changed 4^j - 1 to 4^(j-1) - 1 to account for starting at j = 2      r(i, j) = r(i, j-1) + (r(i, j-1) - r(i-1, j-1))/(4^(j-1) - 1);      endfor    endfor  # disp(r)  printf("r[8][8] = %f\n", r(8, 8))endfunction