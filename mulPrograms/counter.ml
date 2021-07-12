open Base
open Core_kernel

(* type t = (string * int) list *)
type t = (string,int,String.comparator_witness) Map.t

(* let empty = [] *)
let empty = Map.empty (module String)

(* let to_list x = x *)
let to_list t = Map.to_alist t


(* let touch counts line = 
  let count =
    match List.Assoc.find ~equal:String.equal counts line with
    | None -> 0
    | Some x -> x
  in
  List.Assoc.add ~equal:String.equal counts line (count + 1) *)

let touch t s = 
  let count = 
    match Map.find t s with
    | None -> 0
    | Some x -> x
  in
  Map.set t ~key:s ~data:(count+1)