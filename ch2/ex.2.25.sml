(* QUESTION:
Complete the declaration of structure Rational above, basing your definitions on
the laws 
  n/d+n'/d' = (nd' + n'd)/dd' 
  (n/d)x(n'/d') = nn'/dd'
  1/(n/d) = d/n
Use the function gcd to maintain the fractions in lowest terms, and ensure that
the denominator is always positive.
*)

signature ARITH = sig
  type t
  val zero : t
  val sum : t * t -> t
  val diff : t * t -> t
  val prod : t * t -> t
  val quo : t * t -> t
end

structure Rational : ARITH = struct
  type t = int * int
  val zero = (0, 1)
  fun gcd (m, n) = if m = 0 then n else gcd (n mod m, m)
  fun simp (m, n) = 
    let 
      val com = gcd(m,n) 
    in 
      (m div com, n div com)
    end
  fun recip (m, n) = if m<0 then (~n, ~m) else (n, m);
  fun sum ((a, b), (a', b')) =  simp ((a*b' + a'*b), b*b')
  fun diff ((a, b), (a', b')) =  simp ((a*b' - a'*b), b*b')
  fun prod ((a, b), (a', b')) = simp (a*a', b*b')
  fun quo (x, x') = prod(x, recip x');
end
