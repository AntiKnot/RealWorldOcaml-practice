reduce uses conception called "monoid" to get "zero value" as initializer for accumulator in fold\*  (https://stackoverflow.com/questions/25149359/difference-between-reduce-and-fold)

Performance
dune libiarys add element `core_bench`

PERFORMANCE OF STRING.CONCAT AND ^
use `String.concat` when list is long.

COMBINING LIST ELEMENTS WITH LIST.REDUCE
不同于fold，reduce作用在阿尔贝群约定加法运算具有单位元`0`, 不需要指定`init`
`|>` 的功能类似bash的pipe

PARTITIONING WITH LIST.PARTITION_TF
- `List.filter` return filter True l
- `List.partition_if` return (filter True l,filter False l)


Tail Recursion
return 中不进行计算，返回一个另一个函数

Terser and Faster Patterns
占位符
```
[_] as l -> l 
```
别名
```
| hd :: (hd' :: _ as tl) ->
```
unreachable
```
  | x :: tl -> -1 (* unreachable *)
```