Installation Instructions (https://dev.realworldocaml.org/install.html) 
- opam init (*inittial*)
- opam switch  (*choice env*)
- opam create 4.10.0 (*this book use 4.10.0*)
- eval $(opam env)  (*chice env*)
- opam install core  async yojson core_extended core_bench cohttp-async async_graphics cryptokit menhir
- opam install base utop (*base pcakage and top level repl*)

error: https://discuss.ocaml.org/t/off-to-a-bad-start/5861
```
utop # open Base;;
Line 1, characters 5-9:
Error: Unbound module Base
```
edit  `vim ~/.oscamlinit`
```
#use "topfind";;
#thread;;
#require "base";;
```

THE LIST MODULE
>Labeled arguments are specified by name rather than by position, and thus allow you to change the order in which arguments are presented to a function without changing its behavior
```ocaml
List.map languages ~f:String.length;;
- : int list = [5; 4; 1]

List.map ~f:String.length languages;;
- : int list = [5; 4; 1]
```
```
,  tuple
:: list
[;;;] list
```

RECURSIVE LIST FUNCTIONS
recursive function need decalire in ocaml

Mutable Record Fields
if you chagned attribute, result will changed.

error: 
```
$ dune build sum.exe  
File "sum.ml", line 1, characters 5-9:
1 | open Base;
             ^
Error: Syntax error
```


error: ide no suggestion (https://github.com/ocaml/merlin)
under vscode add plugin  Ocaml-Platform
```
opam install ocaml-lsp-server
```
restart vscode


