(* QUESTION:
What do take(l,i) and drop(l,i) return when i>length(l), and when i<0?
(the library versions of take and drop would raise exceptions)

ANSWER:
1. take(l,i) when i>length(l) => l
   take(l,i) when i<0         => []

2. drop(l,i) when i>length(l) => []
   drop(l,i) when i<0         => l


CORRECT ANSWER:
If i>length(l), then take and drop behave just as they would for i=length(l),
rather than raising an exception.
If i<0 then the result is the same as for i=0;

*)

fun take ([], _) = []
  | take (x::xs, i) = if i>0 then x::take(xs,i-1) else []

fun drop ([], _) = []
  | drop (x::xs, i) = if i>0 then drop(xs,i-1) else x::xs;
