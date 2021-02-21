(*
QUESTION: For each version of digit, what do you expect in response to the calls
digit ~1 and digit 10? Try to predict the response before experimenting on the
computer.

Version 1: fun digit i = chr(i + ord #"0");
Version 2: fun digit i = String.sub("0123456789", i);

ANSWER:
Version 1:
digit ~1 => return 47th char (#"/")
digit 10 => return 58th char (#":").

Version 2:
digit ~1 => exception thrown.
digit 10 => exception thrown.
*)
