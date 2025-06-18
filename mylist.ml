(* Trying to implement a list from scratch. *)

type 'a mylist=
  | []
  | ( :: ) of 'a * 'a mylist
;;

(* let int_mylist = [1;2;3;4;5];; *)
(* let str_mylist = ["1";"2";"3";"4";"5"];; *)

(* not tail recursive, so has a linear time *)
let rec mylist_length_bad = function
  | [] -> 0
  | h :: t -> 1 + mylist_length_bad t
;;

(* uses tail recursion *)
let mylist_length mylist =
  let rec aux acc = function
    | [] -> acc
    | h :: t -> aux (acc + 1) t
  in
  aux 0 mylist
;;

let rec mylist_map mylist func =
  match mylist with
  | [] -> []
  | h :: t -> func h :: mylist_map t func
;;

(* let lst = [1;2;3;4;5];; *)
(* mylist_map lst (fun xs -> 2*xs) *)
