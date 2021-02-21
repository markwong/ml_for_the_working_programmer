(* QUESTION: Let d be an integer and m a string. Write an ML boolean expression
* that is true just when d and m form a valid date: say 25 and "October".
* Assume it is not a leap year.
*)

fun isValidDate (d, m)= 
    1 <= d andalso 
    if m = "January" 
        orelse m = "March" 
        orelse m = "May"
        orelse m = "July"
        orelse m = "August"
        orelse m = "October"
        orelse m = "December" then d <= 31
    else if m = "April"
        orelse m = "June"
        orelse m = "September"
        orelse m = "November" then d <= 30
    else if m = "February" then d <= 28
    else (* invalid month *) false;

isValidDate(25, "October");
  
