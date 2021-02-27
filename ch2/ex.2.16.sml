(* QUESTION:
Show that the number of steps needed to compute Fn by its recursive definition
is exponential in n. How many steps does fib perform? Assume that call-by-value
is used.

ANSWER: The number of steps will be n.

CORRECT ANSWER: For "steps", count the number of calls to F. It's easy to check
that F(0) and F(1) involves one call, and the F(n+2) = F(n) + (F(n-1) + F(n)),
so F(n+2) involves more than twice as many calls as F(n). by induction, F(2n)
makes at least 2^n calls. Thus F(n) makes at least sqrt(2)^n calls. But fib(n)
makes just n calls of itfib.
*)
