## FLOAT128.jl 

######*Bringing you 100 bit arithmetic and 100 bit elementary functions, accurate to ~0.52 ulp.*
```ruby
                         Jeffrey Sarnoff            2015-Nov-20
```
##
######        **(work in progress)**


     Internal arithmetic is right to 105 bits, elementary functions to 102 bits.
     Arithmetic precision is constrained by the size of the Float128 significand,
     which spans 106 bits. Getting the lsb correct would introduce substantial
     delay to the processing streams.  That is not an acceptable alternative.
     
     With arithmetic reliably giving 105 correct bits, and knowing that a few of
     trailing bits (at least 2, at most 4) are needed for rational rounding, One
     may expect elementary functions to be correctly rounded into their 101st bit.
     (very nearly always). Reliably correct rounding to 103 bits is doing this right.
     
      
     Float128 arithmetic compares favorably with BigFloat(128).Using Benchmarks.jl
     to find relative timings: Float128 addition and subtraction are 10x faster.
     Multiplication and division, about  2x ... on systems with chips that compute
     fma (fused multiply add) directly, Float128 multiply, divide are faster yet.
     
     The elementary functions are appropriately accurate. For very small arguments trig
     functions run ~4x; with other values they are not yet fast.  A next step is to use
     indexed sequences of polynomial approximations in essential regions of a domain:
 
        (a) subdivde the interval, a unit interval subdivides into 64 parts
        (b) widen subdivisions at both ends to quell noise (e.g. ±1/262_144)
        (c) use a near minimax polynomial approximations, fitting a polynomial 
            of degree 14 or fitting a rational polynomial with numerator and 
            denominator each of degree 6 (sometimes the rational approx behaves
            better -- the simple polynomial tracks more nicely on rare occasion).
        
        (d) push on the approximated coefficients to use values that are exactly
            reppresentable as a Float128 value: refit the approximation fixing one
            or a few coeffs and repeat.  Each time fix more coeffs or shake+refix
            one already fixed. And so obtain a workable approximant.
                 


Float128 works best using fma (floating-point multiply accumulate) instructions.

    


### exports 

##### type Float128

      convert
      from        Float64|32|16, Int128|64|32|16, Rational, BigFloat
      into        Float64|32|16, Int128|64|32|16, BigFloat
    
      ldexp, frexp, abs, sign, signbit, 
      ==, !=, <, <=, >=, >, isless, isequal
      +, -, *, /, %, mod, rem, div, fld, cld, divrem, fldmod
      trunc, floor, ceil, round,
    
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

