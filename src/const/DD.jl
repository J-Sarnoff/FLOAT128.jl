const dd_Inf = DD(Inf,NaN);
const dd_NaN = DD(NaN,NaN);

const dd_zero = DD(0.0,0.0);
const dd_one  = DD(1.0,0.0);
const dd_two  = DD(2.0,0.0);
const dd_three = DD(3.0,0.0);
const dd_four = DD(4.0,0.0);

const dd_half = DD(0.5,0.0);
const dd_third = DD(0.3333333333333333, 1.850371707708594e-17);
const dd_qrtr = DD(0.25,0.0);

const dd_sqrt2 = DD(1.4142135623730951,-9.667293313452913e-17);
const dd_sqrt2_over_2 = DD(0.7071067811865476,-4.833646656726457e-17);
const dd_1_over_sqrt2 = DD(0.7071067811865476,-4.833646656726457e-17);

const dd_sqrt3_over_2 = DD(0.8660254037844386,5.0175421109034514e-17);
const dd_sqrt3_over_3 = DD(0.5773502691896257,3.3450280739356345e-17);

const dd_twopi = DD(6.283185307179586,2.4492935982947064e-16);
const dd_twopi_part2 = DD(-5.989539619436679e-33,2.2249084417267306e-49);
const dd_twopi_part3 = DD(1.1344463959280631e-65,3.489972432270497e-83);
const dd_twopi_part4 = DD(1.205874546449908e-99,3.82024709375998e-116);

const dd_1_over_twopi = DD(0.15915494309189535,-9.839338337591243e-18);
const dd_1_over_twopi_part2 = DD(-5.360718141446502e-34,4.026781963297056e-50);
const dd_1_over_twopi_part3 = DD(-7.801382953409857e-67,1.4185069655957361e-83);
const dd_1_over_twopi_part4 = DD(-7.836906288373592e-100,-1.908123641189411e-116);

const dd_pi = DD(3.141592653589793,1.2246467991473532e-16);
const dd_pi_part2 = DD(-2.9947698097183397e-33,1.1124542208633653e-49);
const dd_1_over_pi = DD(0.3183098861837907,-1.9678676675182486e-17);
const dd_1_over_pi_part2 = DD(-1.0721436282893004e-33,8.053563926594112e-50,);

const dd_pi_over_2 = DD(1.5707963267948966,6.123233995736766e-17);
const dd_pi_over_2_part2 = DD(-1.4973849048591698e-33,5.562271104316826e-50);
const dd_2_over_pi = DD(0.6366197723675814,-3.935735335036497e-17);
const dd_2_over_pi_part2 = DD(-2.1442872565786008e-33,1.6107127853188224e-49);

const dd_pi_over_4 = DD(0.7853981633974483,3.061616997868383e-17);
const dd_pi_over_4_part2 = DD(-7.486924524295849e-34,2.781135552158413e-50);
const dd_4_over_pi = DD(1.2732395447351628,-7.871470670072994e-17);
const dd_4_over_pi_part2 = DD(-4.2885745131572016e-33,3.2214255706376448e-49);

const dd_pi_over_6 = DD(0.5235987755982989,-5.360408832255455e-17);
const dd_pi_over_6_part2 = DD(-4.991283016197232e-34,-3.8478076800910752e-50);
const dd_6_over_pi = DD(1.909859317102744,-7.049757588579267e-18);
const dd_6_over_pi_part2 = DD(-2.698859476966472e-34,1.2807246619420275e-50);

const dd_3pi_over_2 = DD(4.71238898038469, 1.8369701987210297e-16)
const dd_2_over_3pi = DD(0.2122065907891938, -1.3119117783454992e-17);
const dd_3pi_over_4 = DD(2.356194490192345,9.184850993605148e-17);
const dd_4_over_3pi = DD(0.4244131815783876,-2.6238235566909983e-17);

const dd_pi_over_1024 = DD(0.0030679615757712823,1.195944139792337e-19);
const dd_1024_over_pi = DD(325.94932345220167,-2.0150964915386866e-14);

const dd_exp1 = DD(2.718281828459045,1.4456468917292502e-16);
const dd_log10 = DD(2.302585092994046,-2.1707562233822494e-16);


const dd_log2 = DD(0.6931471805599453,2.3190468138462996e-17);
const dd_log2_part2 = DD(5.707708438416212e-34, -3.5824322106018114e-50);
const dd_log2_part3 = DD(-1.352169675798863e-66,6.080638740240814e-83);
const dd_log2_part4 = DD(2.8955024332347147e-99,2.351386712145641e-116);

const dd_1_over_log2 = DD(1.4426950408889634,2.0355273740931033e-17);
const dd_1_over_log2_part2 = DD(-1.0614659956117258e-33,-1.3836716780181402e-50);
const dd_1_over_log2_part3 = DD(9.509563257128724e-67,-6.180554812704206e-83);
const dd_1_over_log2_part4 = DD(3.1030020372190077e-99,1.9878535252881986e-115);


const dd_sin_3pi_over_8 = DD(0.9238795325112867, 1.7645047084336677e-17);
const dd_cos_3pi_over_8 = DD(0.3826834323650898, -1.0050772696461588e-17);

const dd_golden_ratio = DD(1.618033988749895,-5.432115203682506e-17);
const dd_1_over_golden_ratio = DD(0.6180339887498949,-5.432115203682506e-17);
const dd_catalan = DD(0.915965594177219,3.747558421514984e-18);
const dd_eulergamma = DD(0.5772156649015329,-4.942915152430645e-18);

#=
# E8 massergies (Zamolodchikov)
const dd_m1 = DD() #
const dd_m2 = DD(1.618033988749895, -5.432115203682506e-17); #
const dd_m3 = DD(); # 2
const dd_m4 = DD(); # 2
const dd_m5 = DD(); # 4
const dd_m6 = DD(); # 4
const dd_m7 = DD(); # 8
const dd_m8 = DD(); # 8
=#



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
