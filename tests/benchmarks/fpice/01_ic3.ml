  
(*
 * IC3 motivating example
 *)

let rec loop lx ly = 
    if (ly < 45) then
        let t1 = lx in
        let t2 = ly in
        loop (t1 + t2) (t1 + t2)
    else assert (ly >= 1)
in

let main mm = 
    let x = 1 in
    let y = 1 in
    loop x y
in
assert (main () = true)