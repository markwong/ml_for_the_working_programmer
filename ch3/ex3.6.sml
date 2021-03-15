(* QUESTION:
What would happen if we changed [x] to x in the definition of nrev?

  fun nrev [] = []
    | nrev (x::xs) = (nrev xs) @ [x];

ANSWER: Incompatible type.

CORRECT ANSWER: 
This sort of error is common in Lisp. If we define:-
  fun nrev [] = []
    | nrev (x::xs) = (nrev xs) @ x

then nrev will have type 'a list list -> 'a list. 

For example, nrev[[1],[2],[3],[4]] = [4,3,2,1]

*)
