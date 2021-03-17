(* 
QUESTION:
We are seldom fortunate enough to have an infinite supply of coins.
Modify allChange to make change from a finite purse.

fun allChange (coins, coinvals, 0) = [coins]
  | allChange (coins, [], amount) = []
  | allChange (coins, c::coinvals, amount) =
      if amount < 0 then []
      else allChange(c::coins, c::coinvals, amount-c)
             @ allChange(coins, coinvals, amount)

*)

(* CORRECT ANSWER *)
fun allChange (coins, coinvals, 0) = [coins]
  | allChange (coins, [], amount) = []
  | allChange (coins, (c,0)::coinvals, amount) = allChange(coins, coinvals, amount)
  | allChange (coins, (c,v)::coinvals, amount) = 
      if amount < 0 then []
      else allChange(c::coins, (c, v-1) :: coinvals, amount-c)
             @ allChange(coins, coinvals, amount)
