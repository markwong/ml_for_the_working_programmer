(* Length : Calculate the length of a list, iterative approach *)
fun length l =
let
  fun addlen (n, []) = n
    | addlen (n, x::xs) = addlen (n+1, xs)
in
  addlen(0,l)
end
