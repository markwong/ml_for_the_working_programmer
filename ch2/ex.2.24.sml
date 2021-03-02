(* QUESTION:
Declare a structure Real, matching signature ARITH, such that Real.t is the type
real and the coponents zero, sum, prod, etc., denote the corresponding
operations on type real.
*)
structure Real : ARITH = struct
  type t = real
  val zero = 0.0
  fun sum (a,b) = a + b
  fun diff (a,b) = a - b
  fun prod (a,b) = a * b
  fun quo (a,b) = a / b

end
