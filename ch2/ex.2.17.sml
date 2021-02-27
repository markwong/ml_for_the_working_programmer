(* QUESTION:
fun itfib(n, prev, curr) : int =
  if n=1 then curr
  else itfib(n-1, curr, prev+curr);

What is the value of itfib(n,Fk-1, Fk)?

ANSWER: Fn-1 + Fn

CORRECT ANSWER: itfib(n,F(k-1), F(k)) = F(k+n-1)
*)
