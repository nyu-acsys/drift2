
let rec bot bx = bot () in
let fail fx = assert (false) in

let c1_COEFFICIENT_1085 = 0 in
let c0_COEFFICIENT_1084 = 0 in

let id_without_checking_1118 set_flag_id_10928 x_1031 =
 let set_flag_id_1092_r = true in
 x_1031
in

let rec id_1030 prev_set_flag_id_1091 x_10310 =
 let u = if prev_set_flag_id_1091 then
    let u_1232 = fail () in bot ()
    else () in
 id_without_checking_1118 prev_set_flag_id_1091 x_10310
in

let app_1032 x_DO_NOT_CARE_1208 h_EXPARAM_1087 x_DO_NOT_CARE_1207 h_1033 x_DO_NOT_CARE_1206 v_1034 set_flag_id_10922 u_1035 =
 h_1033 set_flag_id_10922 v_1034 set_flag_id_10922 u_1035
in

let rec f_1036 set_flag_id_1092 x_1037 =
 if x_1037 > 0 then
   app_1032 set_flag_id_1092
     ((c0_COEFFICIENT_1084 * x_1037) + c1_COEFFICIENT_1085)
     set_flag_id_1092 f_1036 set_flag_id_1092 (x_1037 - 1)
 else
   id_1030
in

let main r =
 let set_flag_id_1092m = false in
 f_1036 set_flag_id_1092m r set_flag_id_1092m ()
in main 10
