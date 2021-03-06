(*
QUESTION:
Discuss the differences, if any, between the selector #born and the function
    fun born_at({born}) = born;

ANSWER:
Selector #born will select the component of a record labelled "born".
The function expects an argument that of a record type with one component --
born.

CORRECT ANSWER: The selector #born applies to any record containing the field born. 
Function born_at applies to records that contain just that field and no others.
*)
