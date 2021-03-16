(*
QUESTION:
Is rev(rtake(l,i,[])) more efficient than take(l,i)?
Consider all the costs involved.

CORRECT ANSWER:
rev(rtake(l,i,[])) performs twice as many :: operations as take(l,i), due to the
cost of rev. 
But it requires constant stack space, while take(l,i) requires stack
proportional to the length of the result. If sufficient stack space is
available, take(l,i) is faster.

*)
