tips
- if want build two executables (https://github.com/ocaml/dune/issues/21)
- view dir `ls -R`
- `dune init exe exeName -libs base,core,stdio && dune build` (build vscode lsp suggestion will work)

```
(executables (
 (names (hello_world))
 (modules (hello_world))
))

(executables (
  (names (hello_world2))
  (modules (hello_world2))
))
```
or 
```
(executables (
 (names (hello_world hello_world2))
))
```

PRECEDENCE AND ASSOCIATIVITY
谨慎选择rename的前缀符号 ex. (`|>`,`^>`)

Declaring Functions with function
- default value
- pattern match opt

Labeled Arguments
- `String.split s ~on:','`,
- `String.concat s ~sep:','`
- `let foo ~x ~y = x + y;;`

Optional Arguments
如果没有对可选参数做default处理，使用的时候得到的是一个partial