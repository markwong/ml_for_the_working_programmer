(* QUESTION:
Describe the steps in the type checking of itfib.

  fun itfib (n, prev, curr) : int =
    if n=1 then curr else itfib (n-1, curr, prev+curr)

ANSWER:
1. n is an int
2. return type is an int so curr is an int
3. prev plus curr so prev must be an int.

CURRECT ANSWER:
The constant 1 has type int, so n-1 means integer subtraction and n has type
int. The result type of itfib is given as int by the type constraint.
Since curr is returned as the result, curr has type int. Therefore prev+curr
means integer addition and prev has type int. Finally, all types agree in the
recursive call and the conditional.
*)
