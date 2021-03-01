(* QUESTION:
local
  fun itfib(n, prev, curr) : int = 
    if n=1 then curr
    else itfib(n-1,  curr, prev+curr)
in
  fun fib(n) = itfib(n, 0, 1)
end;

Above we have used local to hide the function itfib. Why not simply nest the
declaration of itfib with fib? Compare with the treatment of findroot and
sqroot.

ANSWER: let allows value, function, type and exception declarations.
        local allows function declaration only.

CORRECT ANSWER: Nested function declarations can be harder to read. But if they
refer to identifiers declared in the local context, they can make do with fewer
parameters. The nested function findroot refers to sqroot's argument. Nesting
itfib within fib would only introduce confusion between the two variable called
n.

*)
