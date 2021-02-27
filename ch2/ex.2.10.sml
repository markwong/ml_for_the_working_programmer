(* QUESTION:

Given:-
    fun even n = (n mod 2 = 0);
    fun powoftwo n = (n=1) orelse (even(n) andalso powoftwo(n div 2))

Write the reduction steps for powoftwo(8)

powoftwo(8)
=> (n=1) orelse (even(8) andalso powoftwo(8 div 2))
=> even(8) andalso powoftwo(8 div 2)
=> powoftwo(4)
=> (4=1) orelse (even(4) andalso powoftwo(4 div 2))
=> even(4) andalso powoftwo(4 div 2)
=> powoftwo(2)
=> (2=1) andalso (even(2) andalso powoftwo(2 div 2))
=> even(2) andalso powoftwo(2 div 2)
=> powofTwo(1)
=> (1=1) orelse (even(1) andalso powoftwo(1 div 2))
=> true

*)
