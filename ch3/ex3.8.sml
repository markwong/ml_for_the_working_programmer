(*
QUESTION:
Compare the following function with concat, considering its effect and
efficiency:

  fun concat [] = []
    | concat (l::ls) = l @ concat ls


  fun f [] = []
    | f ([]::ls) = f (ls)
    | f ((x::l)::ls) = x :: f (l :: ls)


CORRECT ANSWER:
This function has the same type and delivers the same result as concat.
But it builds its result using one deep recursion (which might cause stack
overflow).

*)
