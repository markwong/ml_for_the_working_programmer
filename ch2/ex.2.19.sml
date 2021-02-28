(* QUESTION:
Declare an ML function for computing the Greatest Common Divisor, based on these
equations (m and n range over positive integers):

  GCD(2m,2n)     = 2*GCD(m,n)
  GCD(2m,2n+1)   = GCD(m,2n+1)
  GCD(2m+1,2n+1) = GCD(n-m,2m+1)    m<n
  GCD(m,n)       = m.

How does this compare with Euclid's Algorithm?

*)
(* CORRECT ANSWER *)
fun gcd(m,n) = 
  if m=n then m
  else if m mod 2 = 0 then
    if n mod 2 = 0 then 2 * gcd(m div 2, n div 2)
    else gcd(m div 2, n)
  else (* m is 2m+1 *)
    if n mod 2 = 0 then gcd(m, n div 2)
    else (* m is 2m+1 and n is 2n+1 *)
      if m<n then gcd((n-m) div 2, m) else gcd((m-n) div 2, n)
