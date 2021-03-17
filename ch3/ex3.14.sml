(* 
QUESTION:
Modify allChange to accumulate its result in an extra argument, eliminating the
call to append.
Compare its efficiency with the original version by making change for 99 pence.

fun allChange (coins, coinvals, 0) = [coins]
  | allChange (coins, [], amount) = []
  | allChange (coins, c::coinvals, amount) = 
      if amount < 0 then []
      else allChange(c::coins, c::coinvals, amount-c) 
             @ allChange(coins, coinvals, amount)

CORRECT ANSWER:
In author test the new version was nearly three times faster than the old.

fun allChange (coins, coinvals, 0, coinslist) = coins::coinslist
  | allChange (coins, [], amount, coinslist) = coinslist
  | allChange (coins, c::coinvals, amount, coinslist) =
      if amount < 0 then coinslist
      else allChange (c::coins, c::coinvals, amount-c, allChange(coins,
      coinvals, amount, coinslist))
*)

