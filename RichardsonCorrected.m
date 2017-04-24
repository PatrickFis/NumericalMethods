function RichardsonCorrected(x, n, h)  i = 0;  j = 0;  d = zeros(n);  f = @(x) e.^x * sin(x);  #f = @(x) (2.^x)*sin(x);  for i = 1:n    #d(i, 1) = (RSin(x + h, 1e-10) - RSin(x - h, 1e-10)) / (2 * h);    d(i, 1) = (f(x+h) - f(x-h))/(2*h);    for j = 2:i      d(i, j) = d(i, j-1) + (d(i, j-1) - d(i-1, j-1))/(4^(j-1) - 1);      #printf("i = %d, j = %d, h = %f, d(i,j)=%f\n", i, j, h, d(i,j))      endfor    h = h/2;    endfor    printf("D(%d,%d) = %f\n", n, n, d(n,n))    disp(d)    #disp(d)    #disp(h)  endfunction