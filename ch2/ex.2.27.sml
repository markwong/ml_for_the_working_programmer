(* QUESTION:
Type check the following function declaration:-
  fun f (k, m) = if k=0 then 1 else f (k-1)

ANSWER:
Type checking fails because the recursive call has just one argument while f is
supposed to have a tuple as argument.


CORRECT ANSWER:
Type checking fails because f's argument pattern is a pair, whose type must have
the form T1*T2; but f is called with an argument of type int.
*)
