(* QUESTION:

fun power(x,k) : real = 
  if k=1 then x
  else if k mod 2 = 0 then power(x*x, k div 2)
  else x * power(x*x, k div 2);

How many multiplications does power(x,k) need in the worst case?
number of multiplications = floor[log_2(k)]
*)
