(*
Question: A Lisp hacker says: "Since the integers are a subset of the real
numbers, the distinction between them is wholly artificial -- foisted on us by
hardware designers. ML should simply provide numbers, as Lisp does, and
automatically use integers or reals as appropriate." 

Do you agree? What considerations are there?


Answer:
I don't agree. Consider this 1.25 * 2, would the answer be 2.5 or 3?
Since ML is a statically-typed programming language, such expression is ambiguous to
the compiler. 
*)
