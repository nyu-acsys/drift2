
(*
Delay widen = 300
opt = 300
*)

let rec loop lx ly ln = 
        let ny = 
            if (lx <= ln) then ly + 1 
            else if (lx >= ln+1) then ly - 1 
            else (-4) in
        if (ny < 0) then 
            if ln >= 0 then 
                if ny = (-1) then (lx < 2 * ln + 3)
                else true
            else true
        else loop (lx+1) ny ln 

let main (n:int) =
    let x = 0 in
    let y = 0 in
    if (n >= 0) then assert(loop x y n = true)
    else assert(true)

let _ = main 10
let _ = main 200
let _ = main 55
let _ = main 0
let _ = main (-103)
let _ = main (-77)