(*
USED: PLDI2011 as repeat
*)

let main (n(*-:{v:Int | true}*)) =
	let succ sx = sx + 1 in
	let rec repeat rf rn rs =
	  if rn = 0 then
	    rs
	  else
	    rf (repeat rf (rn - 1) rs)
	in
	assert (repeat succ n 0 = n)
(* in
main 103 *)
