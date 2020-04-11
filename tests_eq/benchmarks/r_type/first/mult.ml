(*
USED: PLDI2011 as mult
USED: PEPM2013 as mult
*)

let rec mult n m =
  if n <= 0 || m <= 0 then
    0
  else
    n + mult n (m - 1)

let main (mn:int) = 
    assert (mn <= mult mn mn)

let _ = main 234
let _ = main 15
let _ = main 30
let _ = main (-43)
let _ = main 0
let _ = main (-3434)