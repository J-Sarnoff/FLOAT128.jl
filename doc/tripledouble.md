*results on one machine, others will differ*

Relative timings for TD with respect to DD (fma emulated)

| operation  | op(F64,F64) | op(DD,F64) | op(DD,DD) | op(F64,TD) | op(DD,TD) | op(TD,TD) |
|------------|-------------|------------|-----------|------------|-----------|-----------|
| + rel time | 1           | 2         | 3      | 8        |8      |       8|
| + allocs   | 0           | 0          | 0         | 0          |0          | 0 |
|  |            |      |        |        |       |       |
| * rel time | 1           | 20         | 24        | 91         |140        |       235 |
| * allocs   | 0           | 0          | 0         | 0          |0          | 0 |
|  |            |      |        |        |       |       |
| / rel time | 1           | 40         | 40        | --         |---        |       300 |
| / allocs   | 0           | 0          | 0         | 0          |0          | 8: 160 bytes |


