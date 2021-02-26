(* QUESTION:
Write the computation steps for power(2.0,29).

fun power(x,k) : real = 
  if k=1 then x
  else if k mod 2 = 0 then power(x*x, k div 2)
  else x * power(x*x, k div 2);


ANSWER:
power(2.0,29)
=> 2.0 * power(4.0, 14)
=> 2.0 * power(16.0, 7)
=> 2.0 * 16.0 * power(256.0, 3)
=> 2.0 * 16.0 * 256.0 * power(65536.0, 1)
=> 2.0 * 16.0 * 256.0 * 65536.0
=> 536870912
*)
