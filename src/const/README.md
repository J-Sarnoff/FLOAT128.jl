| file | supports |
|------|----------|
| DD.jl| double-double constants, precompiled value dictionary |
| TD.jl| triple-double constants, precompiled value dictionary |

```julia
Float128s = Dict{Symbol,DD}(
    :zero    => dd_zero,
    :quarter => dd_qrtr,
    :half    => dd_half,
    :one     => dd_one,
    :two     => dd_two,
    :three   => dd_three,
    :four    => dd_four,
    :sqrt2   => dd_sqrt2,
    :log2    => dd_log2,
    :log10   => dd_log10,
    :exp1    => dd_exp1,
    :pi      => dd_pi,
    :twopi   => dd_twopi,
    :catalan => dd_catalan,
    :π       => dd_pi,
    :e       => dd_exp1,
    :eu      => dd_exp1,
    :φ       => dd_golden_ratio,
    :golden  => dd_golden_ratio,
    :γ       => dd_eulergamma,
    :eulergamma => dd_eulergamma,
    :_two    => dd_half,
    :_three  => dd_third,
    :_four   => dd_qrtr,
    :_log2   => dd_1_over_log2,
    :_pi    => dd_1_over_pi,
    :_twopi => dd_1_over_twopi,
);
```
