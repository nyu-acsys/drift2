(*
    USED: PEPM2013 as copy_intro
*)

let rec copy x = 
    if x = 0 then 0 
    else 1 + copy (x - 1) 
    in
let main n = assert (copy (copy n) = n) in
main 1823
