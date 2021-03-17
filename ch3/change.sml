(*
Express some amount of money in terms of coins drawn from a list of coin values.

If the target amount is zero, no coins are required.
If the largest coin value c is too large, discard it.
Otherwise, use it and make change for the amount less c.
*)

(* Note: this function is not perfect. *)
(*
  fun naive_change (coinvals, 0) = []
    | naive_change (c::coinvals, amount) = 
      if amount < c then naive_change(coinvals, amount)
      else c :: naive_change(c :: coinvals, amount - c)
*)

(* Better change function, it lists out all the possible solutions *)
fun change(coinvals, amount) = 
let
  fun allChange (coins, coinvals, 0) = [coins]
    | allChange (coins, [], amount) = []
    | allChange (coins, c::coinvals, amount) = 
          if amount < 0 then []
          else allChange(c::coins, c::coinvals, amount-c)  (* with coin c *)
                  @ allChange(coins, coinvals, amount) (* cases without no c *)
in
  allChange([], coinvals, amount)
end
