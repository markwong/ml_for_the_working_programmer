(* 
QUESTION: Does the following function definition require a type constraint?
What is its type?
    fun lifetime({name, born, crowned,died,quote}) = died - born;

ANSWER: {born: int, crowned: 'a, died: int, name: 'b, quote: 'c} -> int
*)
