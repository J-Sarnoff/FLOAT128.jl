using Benchmarks.jl
using set_bigfloat_precision(128)

| fn  | x | t/t_big,t_big/t | allocs/allocs(big) |
|-----|---|-----------------|--------------------|
| log | 2 | 0.78, 1.28      |  1 / 7             |

