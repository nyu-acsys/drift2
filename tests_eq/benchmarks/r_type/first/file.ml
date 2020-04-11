(*
USED: PLDI2011 as r-file
USED: PEPM2013 as r-file
KEYWORD: resource
*)

let rec loop x = loop ()
let init = 0
let opened = 1
let closed = 2
let ignore = 3
let readit rst =
  if rst = opened then opened else (if rst = ignore then rst else (-1))

let read_ rx_ rst_ =
  if rx_ then readit rst_ else rst_

let closeit cst =
  if cst = opened then closed else (if cst = ignore then cst else (loop (); 0))

let close_ cx_ cst_ =
  if cx_ then closeit cst_ else cst_

let rec f fx fy fst =
  close_ fy (close_ fx fst); f fx fy (read_ fy (read_ fx fst))

let next nst = if nst = init then opened else ignore

let g gb3 gx gst = if gb3 > 0 then f gx true (next gst) else f gx false gst

let main (b2:int) (b3:int) =    
    if b2 > 0 then g b3 true opened else g b3 false init

let _ = main 1 2 (*bot*)
let _ = main 4 5
let _ = main 0 0