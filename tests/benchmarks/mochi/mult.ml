(*
USED: PLDI2011 as mult
USED: PEPM2013 as mult
*)
let rec mult n m =
  if n <= 0 || m <= 0 then
    0
  else
    n + mult n (m - 1)
in
let main n = assert (n <= mult n n)
in main 234
