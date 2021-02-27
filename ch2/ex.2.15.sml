(* QUESTION:
How is the repeated computation in the recursive definition of Fn related to the
call-by-name rule? Could lazy evaluation execute this definition efficiently?

ANSWER: In call-by-name, the recursive definition of Fn will have to evaluate
Fn-1 and Fn-2 which in turn will evaluate Fn-2 and Fn-3 until F0.

The lazy evalution could execute this definition efficiently as the value of the
function with same argument might be cached.

CORRECT ANSWER: Both computations result in repeated function evalations, but
for different reasons. Lazy evaluation does not help. Memo functions, which
store previous results, can compute factorial efficiently.

*)
