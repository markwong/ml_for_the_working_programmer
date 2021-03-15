(* QUESTION:
Show the computation steps to reverse the list [1,2,3,4] using nrev and then rev

  fun nrev [] = []
    | nrev (x::xs) = (nrev xs) @ [x]

  fun revAppend ([], ys) = ys
    | revAppend (x::xs, ys) = revAppend (xs, x::ys)

  fun rev xs = revAppend (xs, []) 

ANSWER:
nrev ([1,2,3,4])
=> nrev [2,3,4] @ [1]
=> (nrev [3,4] @ [2]) @ [1]
=> ((nrev [4] @ [3]) @ [2]) @ [1]
=> (((nrev [] @ [4]) @ [3]) @ [2]) @ [1]
=> ((([] @ [4]) @ [3]) @ [2]) @ [1]
=> (([4] @ [3]) @ [2]) @ [1]
=> ((4::([]@[3])) @ [2]) @ [1]
=> ((4::[3]) @ [2]) @ [1]
=> ([4,3] @ [2]) @ [1]
=> (4::([3]@[2])) @ [1]
=> (4::3::([]@[2])) @ [1]
=> (4::3::[2]) @ [1]
=> [4,3,2] @ [1]
=> 4::([3,2]@[1])
=> 4::3::([2]@[1])
=> 4::3::2::([]@[1])
=> 4::3::2::[1]
=> [4,3,2,1]


rev ([1,2,3,4]) 
=> revAppend([1,2,3,4],[])
=> revAppend([2,3,4], 1::[])
=> revAppend([2,3,4], [1])
=> revAppend([3,4], 2::[1])
=> revAppend([3,4], [2,1])
=> revAppend([4], 3::[2,1])
=> revAppend([4], [3,2,1])
=> revAppend([], 4::[3,2,1])
=> revAppend([], [4,3,2,1])
=> [4,3,2,1] 

*)
