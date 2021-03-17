(*
QUESTION:
The change functions expect coinvals to consist of strictly decreasing positive
integers. What happens if this precondition is violated.

ANSWER:
The larger coins will not have a chance be used.

CORRECT ANSWER:
Larger coins that come too late in the list are ignored. Non-positive coin
values cause looping, as they increase the amount for which we are trying to
make change.

*)
