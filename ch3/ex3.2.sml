(* QUESTION:
Write a function to return the last element of a list.
*)

fun last [n] = n
  | last (_::ns) = last ns;
