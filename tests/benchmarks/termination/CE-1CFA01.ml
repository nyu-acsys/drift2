

let rec bot bx = bot () in
let fail fx = assert (false) in

let c7_COEFFICIENT_1128 = 0 in
let c6_COEFFICIENT_1126 = 0 in
let c5_COEFFICIENT_1125 = 0 in
let c4_COEFFICIENT_1123 = 0 in
let c3_COEFFICIENT_1120 = 0 in
let c2_COEFFICIENT_1118 = 0 in
let c1_COEFFICIENT_1117 = 0 in
let c0_COEFFICIENT_1115 = 0 in

let rec id_without_checking_1177 set_flag_id_11407 s_id_x_11377 x_10317 =
 let set_flag_id_1140_r = true in
 let s_id_x_11377_r = x_10317 in
   x_10317
in

let rec id_1030 prev_set_flag_id_1139 s_prev_id_x_1138 x_10310 =
 let u = if prev_set_flag_id_1139 then
   let u_1456 = fail () in
      bot()
   else () in
 id_without_checking_1177 prev_set_flag_id_1139 s_prev_id_x_1138
    x_10310
in

let rec omega_1032 set_flag_id_11402 s_id_x_11372 x_1033 =
 omega_1032 set_flag_id_11402 s_id_x_11372 x_1033
in

let f_1034 x_DO_NOT_CARE_1385 x_DO_NOT_CARE_1386 x_EXPARAM_1133 x_DO_NOT_CARE_1383 
  x_DO_NOT_CARE_1384 x_1035 x_DO_NOT_CARE_1381 x_DO_NOT_CARE_1382 y_EXPARAM_1134 
  x_DO_NOT_CARE_1379 x_DO_NOT_CARE_1380 y_1036 set_flag_id_11404 s_id_x_11374 z_1037 =
 y_1036 set_flag_id_11404 s_id_x_11374 z_1037
in

let rec app_1038 x_DO_NOT_CARE_1377 x_DO_NOT_CARE_1378 h_EXPARAM_1131 
  x_DO_NOT_CARE_1375 x_DO_NOT_CARE_1376 h_1039 set_flag_id_1140 s_id_x_1137 x_1040 =
 h_1039 set_flag_id_1140 s_id_x_1137 x_1040
in

let main =
 f_1034 false 0 c5_COEFFICIENT_1125 false 0
   (app_1038 false 0 c4_COEFFICIENT_1123 false 0
     (f_1034 false 0 c1_COEFFICIENT_1117 false 0
       (app_1038 false 0 c0_COEFFICIENT_1115 false 0
         id_without_checking_1177) false 0 c3_COEFFICIENT_1120 false 0
       (app_1038 false 0 c2_COEFFICIENT_1118 false 0 omega_1032))) false 0
   c7_COEFFICIENT_1128 false 0
   (app_1038 false 0 c6_COEFFICIENT_1126 false 0 id_1030) false 0 1
in assert(main = 1)