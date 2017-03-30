function Bisection(f, a, b, nmax, epsilon)  # Find r such that f(r) = 0. Interval: [0, 1].  #f = @(x) .x^3 - 3*x + 1  n = 0  #a = 0.0  #b = 1.0  c = 0.0  fa = 0.0  fb = 0.0  fc = 0.0  error = 0.0    fa = f(a)  fb = f(b)  if(sign(fa) == sign(fb))    disp("Function has same signs at a and b\n")    return    endif  error = b - a  for n=0:nmax    error = error/2;    c = a + error;    fc = f(c);    printf("n = %d, c = %f, fc = %f, error = %f\n", n,c,fc,error)    if(abs(error) < epsilon)      disp("Error < epsilon, convergence\n")      return      endif    if(sign(fa) != sign(fc))      b = c;      fb = fc;    else      a = c;      fa = fc;      endif    endforendfunction