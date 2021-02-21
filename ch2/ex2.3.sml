(* QUESTION: 
   Which of these function definitions require type constraints?

   ANSWER:
   i) fun double (n) = 2 * n;  -- NOT REQUIRED, since 2 is an integer.
  ii) fun f u = Math.sin(u) / u; -- NOT REQUIRED, since Math.sin applicable on
  Real value
 iii) fun g k = ~ k * k; -- REQUIRED, since we don't know whether they are an
 Int or Real or even both. But by default, some ML systems consider it as Int.

*)
