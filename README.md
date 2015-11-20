## FLOAT128.jl 

######*Bringing you 100 bit arithmetic and 100 bit elementary functions, accurate to ~0.52 ulp.*
```ruby
                         Jeffrey Sarnoff            2015-Nov-20
```
##
######        **(a *working* work in progress)**


     Float128 arithmetic is performed with 105 bit accuracy, elementary functions with 102+ bits.
      
     Float128 arithmetic compares favorably with BigFloat(128).Using Benchmarks.jl
     for relative speeds: addition and subtraction run 10x, multiplication and division
     run ~2x faster without on-chip fma (fused multiply add) and when fma ops are handled
     directly by the processor, better yet.
    
     The elementary functions are appropriately accurate. For very small arguments trig
     functions run ~4x; with other values they are not yet fast.  A next step is to use
     indexed sequences of polynomial approximations in essential regions of a domain:
 
        (a) subdivde the interval, a unit inberval subdivides into 64 parts
        (b) widen subdivisions at both ends to quell noise (e.g. ±1/262_144)
        (c) use a near minimax polynomial approximations, fitting a polynomial 
            of degree 14 or fitting a rational polynomial with numerator and 
            denominator each of degree 6 (sometimes the rational approx behaves
            better -- the simple polynomial tracks more nicely on rare occasion).
        
        (d) push on the approximation coefficients so they become exactly
            representable, as Float128 values; refit the approximation fixing one
            or a few coeffs and repeat.  Each time fix more coeffs or shake+refix
            one already fixed. And so obtain a workable approximant.

```c
                  This is not the best way to generate approximations;
                  and rapt inattention is always worth considering.

                  Someone who is reading this will be quite expert.
                  We, the others, need to use Sollya functions or
                  Maple procedures that exist to make generating
                  these machine maths much more straightforward.
```


Float128 is desgined to glean good advantage from processor supported fma.

    


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
    
```java
lookup precomputed values
        :zero, :one, :two, :three, :four, :sqrt2, :log2, :log10, :exp1, :pi, :twopi
    and reciprocal values
        :half, :quarter, :_sqrt2, :_log2, :_log10, :_exp1, :_pi, :_twopi
        
or add your own
    Float128s[:m₃] = convert(Float128, parse(BigFloat,("1.98904379073654667384538388996114")));
    Float128s[:m₃] == Float128(1.9890437907365466, 7.384538388996114e-17)

```    
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

