
let main (n(*-:{v:Int | true}*)) =
	let rec accumulate af an au = (* foldl *)
	    if an = 0 then au
	    else accumulate af (an - 1) (af an au)
	in

	let rec accumulate_neg nf nn nu = (* foldl *)
	    if nn = 0 then nu
	    else accumulate_neg nf (nn - 1) (nf nn nu)
	in

	let gt_100 gk gt = if gk > 100 then 100 else gt
	in

	let and_not_0 ak at = at && ak <> 0
	in

    if n > 0 then
      assert(accumulate gt_100 n 100 = 100)
    else
      let m = 0 - n in
      assert(accumulate_neg and_not_0 m true = true)

(* let _ = main 20
let _ = main 30
let _ = main 0
let _ = main (-1)
let _ = main (-20) *)
