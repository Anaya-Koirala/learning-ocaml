let rec factorial x = if x = 0 then 1 else x * factorial (x - 1) ;;
factorial 3

let my_list : int list = [1;2;3;4;5;6;7;8];;
List.map(fun n -> n*n) my_list;;

let s_list: string list = ["a";"b";"a";"a";"b";"a";"b";"b"];;
"a funky string" :: s_list;;
List.map(fun s -> (if s = "a" then "A" else "~A")) s_list;;
