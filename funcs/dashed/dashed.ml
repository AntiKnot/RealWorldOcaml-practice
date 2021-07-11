open Core

let dashed s =
  let ss = String.split s ~on:',' in 
  String.concat ~sep:"-" ss
;;

let read_some  = 
  let line = In_channel.input_line In_channel.stdin in
  match line with
  | None -> ""
  | Some x -> dashed x

let () = 
printf "Dashed: %S\n" (read_some)