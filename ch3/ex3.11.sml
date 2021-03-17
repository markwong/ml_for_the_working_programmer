(*
QUESTION:
Write a function to express integers as Roman numerals. Supplied with sitable
arguments, your function should be able to express 1984 as either
MDCCCCLXXXIIII or MCMLXXXIV

CORRECT ANSWER:
fun roman (numpairs, 0) = ""
  | roman ((s,v)::numpairs, amount) = 
    if amount < v then roman (numpairs, amount)
    else s ^ roman((s,v)::numpairs, amount-v)

val rompairs1 = [("M",1000), ("D",500), ("C",100), ("L",50), ("X",10), ("V",5), ("I",1)]
and rompairs2 = [("M",1000), ("CM",900), ("D",500), ("CD",400), ("C",100), ("XC",90),  
                 ("L",50),  ("XL",40), ("X",10), ("IX",9), ("V",5), ("IV",4), ("I",1)];
*)

(* not a good solution. too imperative style. *)
fun roman n = 
let
  val num = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  (* transform number to roman, accumulator is in reversed order *)
  fun transform (acc, _, 0) = acc
    | transform (acc, x::xs, n) = 
      if x > n then transform(acc, xs, n) else transform(x::acc, x::xs, n-x)

  (* stringify roman, accumulator is in reversed order, so the result will be in
     correct order after calling transform *)
  fun str (acc, []) = acc
    | str(acc, x::xs) = 
      if x = 1000 then str(#"M"::acc, xs)
      else if x = 900 then str(#"C"::(#"M"::acc), xs)
      else if x = 500 then str(#"D"::acc, xs)
      else if x = 400 then str(#"C"::(#"D"::acc), xs)
      else if x = 100 then str(#"C"::acc, xs)
      else if x = 90 then str(#"X"::(#"C"::acc), xs)
      else if x = 50 then str(#"L"::acc, xs)
      else if x = 40 then str(#"X"::(#"L"::acc), xs)
      else if x = 10 then str(#"X"::acc, xs)
      else if x = 9 then str(#"I"::(#"X"::acc), xs)
      else if x = 5 then str(#"V"::acc, xs)
      else if x = 4 then str(#"I"::(#"V"::acc), xs)
      else str(#"I"::acc, xs)
  in
   implode(str([], transform ([], num, n))) 
end
