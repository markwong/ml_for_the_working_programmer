(* QUESTION:
Modify the append function to handle xs @ [] efficently

infixr 5 @
fun ([] @ ys) = ys
  | ((x::xs) @ ys) = x::(xs@ys)

*)

(* CORRECT ANSWER *)
infix @
fun xs @ [] = xs
  | [] @ ys = ys
  | (x::xs) @ ys = x :: (xs @ ys) 
