(* QUESTION:

fun power(x,k) : real = 
  if k=1 then x
  else if k mod 2 = 0 then power(x*x, k div 2)
  else x * power(x*x, k div 2);

How many multiplications does power(x,k) need in the worst case?

ANSWER: number of multiplications = floor[log_2(k)]

CORRECT ANSWER: The worse case is when k has the form 2^n-1, for n>0.
Then k remains odd in all the recursive calls and 2n-2 multiplications are
performed.
*)
