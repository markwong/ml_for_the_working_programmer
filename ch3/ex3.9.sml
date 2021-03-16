(* 
QUESTION:
Give an equivalent definition of zip that does not depends upon the order in
which patterns are considered.

  fun zip (x::xs, y::ys) = (x,y) :: zip (xs,ys)
    | zip _ = []


CORRECT ANSWER:
fun zip ([], _) = []
  | zip (_, []) = []
  | zip (x::xs, y::ys) = (x,y) :: zip (xs, ys)
  
*)
