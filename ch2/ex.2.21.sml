(* QUESTION:-
Using let, we can eliminate the expensive squaring operation in our integer
square root function. Code a variant of introot that maps n to its integer
square root k, paired with the difference n-k^2. Only simple multiplications and
divisions are needed; an optimizing compiler could replace them by bit
operations.

CORRECT ANSWER:-

fun introotpair n = 
  if n<4 then (1, n-1)
  else
    let val (e,re) = introotpair(n div 4)
        val ri = 4*re + n mod 4 (* remainder if root=2*k *)
        val rj = ri - (4*e+1) (* remainder if root=2*k+1 *) in

        if rj < 0 then (2*e, ri) else (2*e+1, rj)

    end

*)
