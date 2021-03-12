(* QUESTION:
Write a function nth(l,n) to return the nth element of l (where the head is
element 0)

*)
fun nth (x::xs, i) = if i>0 then nth(xs,i-1) else x
