open Core

let upcase2th line =
  match String.split ~on:',' line with
  | [] | [_]-> assert false (* String.split return at least two elemnt *)
  | first::second:: rest -> String.concat ~sep:"," (first :: String.uppercase second  :: rest)

let read_some = 
  let line = In_channel.input_line In_channel.stdin in
  match line with
  | None -> ""
  | Some x -> upcase2th x

let () = 
  printf("Upcasee fisr entry: %S\n") (read_some)
