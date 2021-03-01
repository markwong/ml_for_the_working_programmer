(* QUESTION:
Consider the sequence (Pn) defined for n >= 1 by

Pn = 1 + Sum_k=1_n-1 Pk

(In particular, P1 = 1). Express this computation as an ML function. How
efficient is it? Is there a faster way of computing Pn?

*)

(* CORRECT ANSWER:
   p1=1, 
   p2=1+p1=2, 
   p3=1+p1+p2=1+1+2=4, 
   p4=1+p1+p2+p3=1+1+2+4=8, 
   ...,
   pn=1+p1+p2+...+pn-1 

It is easy to verify by induction that P(n) = 2^(n-1), which gives faster ways
of computing it.
*)

fun p n = if n=1 then 1 else 1 + sum(n-1)
and sum k = if k<1 then 0 else p(k) + sum (k-1) 
