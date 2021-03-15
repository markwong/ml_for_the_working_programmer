(* Append two lists *)
infixr 5 @;
fun ([] @ ys) = ys
  | ((x::xs) @ ys) = x::(xs @ ys)
