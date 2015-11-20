| file | supports |
|------|----------|
| DD.jl| double-double constants, precompiled value dictionary |
| TD.jl| triple-double constants, precompiled value dictionary |

```julia
Float128s = Dict{Symbol,DD}( :zero => dd_zero, ...)
    # direct values
    :zero, :quarter, :half, :one, :two, :three, :four,
    :sqrt2, :log2,:log10,:exp1, :e
    :π, :pi, :twopi, :catalan, :γ, :eulergamma,
    :φ, :golden, 
    # reciprocal values
    :_two, :_three, :_four,
    :_log2, :_pi, :_twopi
```
