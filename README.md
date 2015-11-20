# FLOAT128.jl  
##### (a *working* work in progress)
######Float128 does arithimetic with 106 correctly rounded bits; other math gives 102 correct bits, for common values.

>  Float128 arithmetic compares favorably with BigFloat(128). Using Benchmarks.jl to measure relative speed: addition and subtraction run 10x, multiplication and division run ~2x faster without on-chip fma (fused multiply add) and considerably faster when fma ops are executed directly by the processor.
    
>  The elementary functions are appropriately accurate. For very small arguments sin, cos, tan.., asin, acos, atan.. run ~4x; with other values they are not yet fast.  To fix that, a next step introduces indexed sequences of rational polynomial approximations for use within e.g. 0..1 or 1..2.  Although there is more to discern:
 
>      (a) subdivde the interval, a unit inberval subdivides into 64 parts
        (b) widen each subdivision at both edges by ±1/350_000 to avoid noisy edges
        (c) use a near minimax polynomial approximations, fitting a polynomial of degree 14 or
            fitting a rational polynomial with numerator and denominator each of degree 6
            (when one behaves a little better, usually that one is the rational polynomial)
        (d) push on the approximation coefficients so they become exactly representable,
            as Float128 values; refit the approximation fixing one or few coeffs and repeat,
            each time fixing more coeffs or refixing some. And obtain a workable approximant.

>             This is not the best way to generate and refit the approximations,
                 and its better than inattention to fitting for machine evaluation.
                 Someone reading will be an expert on such matters -- 
                    you will want Sollya functions or Maple procedures to do the work.

                    
                    


On systems with processors that support fma instructions, all elementary functions should speed up noticably.
    
    
    


### exports 

type Float128

    convert from Float64|32|16, Int128|64|32|16, BigFloat
    
    convert to BigFloat, convert to nearest Float64|32|16 Int128|64|32|16
    
    ldexp, frexp, abs, sign, signbit, trunc, floor, ceil, round, 
    
    ==, !=, <, <=, >=, >, isless, isequal
    
    +, -, *, /, %, mod, rem, div, fld, cld, divrem, fldmod
    
    sqrt, exp, log, ^
    
    sin, cos, tan, csc, sec, cot, asin, acos, atan, acsc, asec, acot
    
    sinh, cosh, tanh, csch, sech, coth, asinh, acosh, atanh, acsch, asech, acoth 
    
    string, show, showcompact
    
dict Float128s{Symbol, Float128}

    :zero, :one, :two, :three, :four, :sqrt2, :log2, :log10, :exp1, :pi, :twopi
    
    reciprocals :half, :quarter, :_sqrt2, :_log2, :_log10, :_exp1, :_pi, :_twopi
    
    add your own by converting from parsed BigFloat values
    
clean(x::Float128)

    zeros the low order part when it approaches eps(eps(high order part))

### Use

```julia
using FLOAT128

one = Float128(1);
three = Float128(3//1);
onefifth = Float128(0.2);
BigFloat5 = BigFloat(1) / convert(BigFloat, ans))
five = Float128(BigFloat5)
twentynine = Float128(29);
one / three
one / ans
sin(onefifth)
asin(ans), (ans - asin(ans))/ans
tanh(three)
atanh(ans), (ans - atanh(ans))/ans
exp(log(twentynine))
log(exp(three))

sqrt(Float128s[:pi])
Float128s[:pi], ans*ans
```

