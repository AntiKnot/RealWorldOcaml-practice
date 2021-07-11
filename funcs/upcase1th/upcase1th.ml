open Core

let upcase1th line =
  match String.split ~on:',' line with
  | [] -> assert false (* String.split return at least one elemnt *)
  | first:: rest -> String.concat ~sep:"," (String.uppercase first :: rest)

let read_some = 
  let line = In_channel.input_line In_channel.stdin in
  match line with
  | None -> ""
  | Some x -> upcase1th x

let () = 
  printf("Upcasee fisr entry: %S\n") (read_some)