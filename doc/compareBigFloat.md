using Benchmarks.jl
using set_bigfloat_precision(128)

| fn   | x   | t/t_big,t_big/t | allocs:allocs(big) |
|------|-----|-----------------|--------------------|
| log  | 2   | 0.78, 1.28      |  1 : 7             |
| exp  | 1/2 | 0.62, 1.62      |  0 : 31            |
| sin  | 1/2 | 0.65, 1.52      |  0 : 13            |
| tan  | 1/2 | 1.10, 0.91      |  0 : 14            |
|      |     |                 |                    |
| acos | 1/2 | 2.20, 0.45      |  81 : 84           |
