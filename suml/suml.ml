open Base
open Core_bench

let rec sum_if l = 
  if List.is_empty l  then 0 
  else List.hd_exn l + sum_if (List.tl_exn l)
;;

let rec sum_match l = 
  match l with
  | [] -> 0
  | hd::tl -> hd + sum_match tl
;;

let rec sum_match_tail l n = 
  match l with
  | [] -> n
  | hd::tl -> sum_match_tail tl (hd+n)
;;

let numbers  = List.range 0 10000 in 
[
  Bench.Test.create ~name:"sum_if" (fun () -> sum_if numbers);
  Bench.Test.create ~name:"sum_match" (fun () -> sum_match numbers);
  Bench.Test.create ~name:"sum_maych_tail" (fun () -> sum_match_tail numbers 0)]
|> Bench.bench
;;
