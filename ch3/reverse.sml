(* reverse a list *)
fun rev l = 
let
  fun revi ([],acc) = acc 
    | revi (x::xs, acc) = revi (xs, x::acc)
in
  revi(l,[])
end
