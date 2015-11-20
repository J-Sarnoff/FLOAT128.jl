VERSION >= v"0.4.0" && __precompile__()

module FLOAT128

# using

# import
import Base: convert, promote_rule,
             zero, one, isinf, isnan, isfinite,
             (-), abs, sign, signbit, copysign, flipsign,
             isequal, isless, (<),(<=),(==),(>=),(>),
             (+),(*),(/),(\), fma,
             round, floor, ceil, trunc, fld, cld,
             ldexp, frexp, modf,
             div, rem, divrem, mod, fldmod, (%),
             sqrt, hypot, (^),
             exp, log, log2, log10, expm1, log1p,
             sin, cos, tan, csc, sec, cot,
             sinh, cosh, tanh, csch, sech, coth,
             asin, acos, atan, acsc, asec, acot, atan2,
             asinh, acosh, atanh, acsch, asech, acoth,
             string, show, showcompact, parse, hex

# export

export Float128, clean, Float128s,
# for development only
fnTest, fnTest2, hilo, hml, nearest12, DD, TD

# include

include("types.jl")

# error-free transformations by number of args in & vals out
include("eft/single.jl")
include("eft/double.jl")
include("eft/triple.jl")

# working types
include("const/DD.jl")
include("const/TD.jl")

# magnitude: comparison and subnumeric composition
include("value/parts/DD.jl")
include("value/parts/TD.jl")
include("value/cmp/DD.jl")
include("value/cmp/TD.jl")

# arithmetic and arithmetic support
include("arith/sign/DD.jl")
include("arith/sign/TD.jl")
include("arith/op/DD.jl")
include("arith/op/TD.jl")
include("arith/moddiv/DD.jl")
include("arith/moddiv/TD.jl")
include("arith/round/DD.jl")
include("arith/round/TD.jl")

# integer powers, reciprocal roots
include("pow/DD.jl")

# log, exp
include("exp/DD.jl")
include("exp/TD.jl")

# trig, inverse fns
include("trig/DD.jl")
include("trig/arctrig/DD.jl")
include("trig/arctrig/TD.jl")

# hyperbolic trig, inverse fns
include("hyptrig/DD.jl")
include("hyptrig/TD.jl")
include("hyptrig/archyp/DD.jl")

# io
include("io/DD.jl")
include("io/TD.jl")

# for development only
include("../test/util/nearest.jl")
include("../test/util/randnums.jl")
include("../test/util/testit.jl")

#include("try.jl")
end # module
