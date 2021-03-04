(* QUESTION:
Declare a structure Real, matching signature ARITH, such that Real.t is the type
real and the coponents zero, sum, prod, etc., denote the corresponding
operations on type real.
*)

signature ARITH = sig
  type t
  val zero : t
  val sum : t * t -> t
  val diff : t * t -> t
  val prod : t * t -> t
  val quo : t * t -> t
end

structure Real : ARITH = struct
  type t = real
  val zero = 0.0
  fun sum (a,b) = a + b
  fun diff (a,b) = a - b
  fun prod (a,b) = a * b
  fun quo (a,b) = a / b

end
