(* QUESTION:

fun power(x,k) : real = 
  if k=1 then x
  else if k mod 2 = 0 then power(x*x, k div 2)
  else x * power(x*x, k div 2);

Why not take k = 0 for the base case instead of k = 1?

*)
