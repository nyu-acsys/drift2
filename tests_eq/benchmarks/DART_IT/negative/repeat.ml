(*
 * Input data error
 *)

let rec repeat (f: int -> int) n s =
  if n = 0 then
    s
  else
    f (repeat f (n - 1) s)

let succ (x:int) = x + 1

let main (n:int) = 
	if n < 0 then
		assert(repeat succ n 0 >= n)
	else ()

let _ = main (-1) (* Overflow *)
let _ = main (-100)
let _ = main 0
let _ = main 10