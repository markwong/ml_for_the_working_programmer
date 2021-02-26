(* 
QUESTION: Old English money had 12 pence in a shilling and 20 shillings in a
pound. Write functions to add and subtract two amounts, working with triples
(pounds, shillings, pence).
*)

type money = int*int*int;

fun adjust_add (p,s,pe) =
    if pe > 12 then adjust_add(p,s + (pe div 12),pe mod 12)
    else if s > 20 then adjust_add(p + (s div 20), s mod 20, pe)
    else (p,s,pe)

fun add ((p1,s1,pe1),(p2,s2,pe2)) : money = adjust_add(p1+p2, s1+s2, pe1+pe2)


fun adjust_sub(p,s,pe) =
  if pe < 0 then adjust_sub(p,s-1,pe+12)
  else if s < 0 then adjust_sub(p-1,s+20,pe)
  else (p,s,pe)

fun sub ((p1,s1,pe1),(p2,s2,pe2)) : money = adjust_sub(p1-p2, s1-s2, pe1-pe2)
