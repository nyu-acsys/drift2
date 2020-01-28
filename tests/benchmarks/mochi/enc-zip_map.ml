let rec loop x = loop x in
let rec zip x y =
 if x = 0 then
   if y = 0 then 0
     else loop() (* Dead END! *)
 else if y = 0 then loop() (* Dead END! *)
   else 1 + zip (x - 1) (y - 1)
in

let rec map x =
  if x = 0 then 0 else 1 + map (x - 1)
in

let main n =
 assert(map (zip n n) >= n)
in main 10