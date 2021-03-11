(* QUESTION:
Write a version of maxl using null, hd and tl, instead of pattern matching.
*)
fun maxl l = 
let
  val m = hd l
  val t = tl l
in
  if null t then m
  else if m > (hd t) then maxl (m::(tl t))
  else maxl ((hd t)::(tl t))
end
