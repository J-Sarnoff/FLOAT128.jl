*results on one machine, others will differ*

Relative timings for TD with respect to DD

| operation | op(F64,F64) | op(DD,F64) | op(DD,DD) | op(F64,TD) | op(DD,TD) | op(TD,TD) |
|-----------|-------------|------------|-----------|------------|-----------|-----------|
| *         | 1           | 32         | 32        | 180        |130        |       240 |
| * allocs  | 0           | 0          | 0         | 0          |0          | 9, 176 bytes |

