function annealing()  # Domain will be from -2 <= x <= 2, -2 <= y <= 2    # Set up the function  f = @(x, y) e.^x * (cos(x*y).^2)  alpha = 2;  x_k = zeros(1, 10);  x_k(1) = f(2, 2);  # Generate random numbers in the interval mentioned above  x_points = zeros(1, 1000);  y_points = zeros(1, 1000);  for i = 1:1000    x_points(i) = (-3 - 2 + 1)*rand() + 2;    y_points(i) = (-3 - 2 + 1)*rand() + 2;    endfor  #disp(x_points)  #disp(y_points)    # Find the minimum value from the generated points  minVal = 1000000000;  min_x = 0;  min_y = 0;  for i = 1:1000    #disp(f(x_points(i), y_points(i)))    if(f(x_points(i), y_points(i)) < minVal)      minVal = f(x_points(i), y_points(i));      min_x = x_points(i);      min_y = y_points(i);      endif    endfor  #disp(minVal)  #disp(min_x)  #disp(min_y)    # Calculate probabilities  p = zeros(1, 1000);  for i = 1:1000    p(i) = e.^(alpha *     endforendfunction