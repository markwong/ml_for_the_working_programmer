(* 
QUESTION: Write a function to determine whether one time of day, in the form
(hours, minutes, AM or PM), comes before another.
As an example, (11,59,"AM") comes before (1,15, "PM")
*)

(* fun earlier ((h1, m1, apm1), (h2:int, m2:int, apm2)) =
    apm1 = "AM" andalso apm2 = "PM"
      orelse apm1=apm2 andalso (h1<h2 orelse h1=h2 andalso m1<m2); *)


fun comes_before ((h1,m1,apm1:string), (h2,m2,apm2)) : bool =
  if apm1 = apm2 then
    if h1 = h2 then m1 < m2
    else h1 < h2
  else apm1 < apm2;

