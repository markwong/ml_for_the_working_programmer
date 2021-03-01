(* QUESTION:-
What is the effect of this declaration?
  val (pi, log2) = (log2, pi);

ANSWER: Assign pi to the value of log2 and assign log2 to the value of pi.

CORRECT ANSWER: This exchanges the bindings of pi and log2. 
It is equivalent to:-
  val pi=log2 and log2=pi
*)
