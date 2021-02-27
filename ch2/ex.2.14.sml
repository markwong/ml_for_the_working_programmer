(* QUESTION:

fun power(x,k) : real = 
  if k=1 then x
  else if k mod 2 = 0 then power(x*x, k div 2)
  else x * power(x*x, k div 2);

Why not take k = 0 for the base case instead of k = 1?

ANSWER:
Because when k=0, the result value will be 1 and x*1 = x which is identical to
the case when k=1.

CORRECT ANSWER:
function power could start with "if k=0 then 1.0...", but the last recursive
call would always be x*power(x*x,0), reducing to x. Two needless multiplications
would be performed, of which x*x could easily cause overflow. An exponentiation
function should handle zero and negative exponents, calling power only for
positive k.
*)
