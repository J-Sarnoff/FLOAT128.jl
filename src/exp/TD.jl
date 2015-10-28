const td_inv_fact = TD[
      TD(1.0, 0.0, 0.0),
      TD(0.5, 0.0, 0.0),
      TD(0.16666666666666666, 9.25185853854297e-18, 5.135813185032629e-34),
      TD(0.041666666666666664, 2.3129646346357427e-18, 1.2839532962581572e-34),
      TD(0.008333333333333333, 1.1564823173178714e-19, 1.6049416203226965e-36),
      TD(0.001388888888888889, -5.300543954373577e-20, -1.7386867553495878e-36),
      TD(0.0001984126984126984, 1.7209558293420705e-22, 1.4926912391394127e-40),
      TD(2.48015873015873e-5, 2.1511947866775882e-23, 1.865864048924266e-41),
      TD(2.7557319223985893e-6, -1.858393274046472e-22, 8.491754604881993e-39),
      TD(2.755731922398589e-7, 2.3767714622250297e-23, -3.263188903340883e-40),
      TD(2.505210838544172e-8, -1.448814070935912e-24, 2.0426735146714455e-41),
      TD(2.08767569878681e-9, -1.20734505911326e-25, 1.702227928892871e-42),
      TD(1.6059043836821613e-10, 1.2585294588752098e-26, -5.31334602762985e-43),
      TD(1.1470745597729725e-11, 2.0655512752830745e-28, 6.889079232466646e-45),
      TD(7.647163731819816e-13, 7.03872877733453e-30, -7.827539277162583e-48),
      TD(4.779477332387385e-14, 4.399205485834081e-31, -4.892212048226615e-49),
      TD(2.8114572543455206e-15, 1.6508842730861433e-31, -2.877771793074479e-50),
      TD(1.5619206968586225e-16, 1.1910679660273754e-32, -4.577506059629983e-49),
      TD(8.22063524662433e-18, 2.2141894119604265e-34, -1.508914023774199e-50),
      TD(4.110317623312165e-19, 1.4412973378659527e-36, -5.285627548789812e-53),
      TD(1.9572941063391263e-20, -1.3643503830087908e-36, 1.3392348251125064e-53),
      TD(8.896791392450574e-22, -7.911402614872376e-38, -3.1877976790570933e-54),
      TD(3.868170170630684e-23, -8.843177655482344e-40, 3.8718157106173247e-56),
      TD(1.6117375710961184e-24, -3.6846573564509766e-41, 1.613256546090552e-57),
      TD(6.446950284384474e-26, -1.9330404233703465e-42, -1.5213023807039144e-58),
      TD(2.4795962632247976e-27, -1.2953730964765229e-43, 6.403390159849962e-60),
      TD(9.183689863795546e-29, 1.4303150396787322e-45, -8.551226774650505e-62),
      TD(3.279889237069838e-30, 1.5117542744029879e-46, 8.058517719519716e-63),
      TD(1.1309962886447716e-31, 1.0498015412959506e-47, -4.346150929397795e-64),
      TD(3.7699876288159054e-33, 2.5870347832750324e-49, 3.23789002742564e-66),
      TD(1.216125041553518e-34, 5.586290567888806e-51, 6.615948578082792e-68),
      TD(3.8003907548547434e-36, 1.7457158024652518e-52, 2.0674839306508725e-69),
      TD(1.151633562077195e-37, -6.09957445788454e-54, -5.3447496196594105e-70),
      TD(3.387157535521162e-39, 5.09056148151085e-56, 3.989567349036344e-72),
      TD(9.67759295863189e-41, 3.202295548645562e-57, 6.547507205018101e-74),
      TD(2.6882202662866363e-42, 5.355061165943334e-59, -1.1290601987449868e-75),
      TD(7.265460179153071e-44, -4.364097149354446e-61, 2.5503250121018375e-77),
      TD(1.911963205040282e-45, -2.7860822176883126e-62, 2.0347437224101328e-78),
      TD(4.902469756513544e-47, -1.213019100517928e-63, -4.4707180011376586e-80),
      TD(1.2256174391283858e-48, 6.033927348315605e-68, 4.0762496124582373e-84),
      TD(2.9893108271424046e-50, -1.0407247703033156e-66, -1.3761319713775906e-83),
      TD(7.117406731291439e-52, 3.1742075384205573e-68, 1.2411289864622588e-84),
      TD(1.6552108677421951e-53, 4.147105190494824e-70, 4.321874177581813e-88),
      TD(3.7618428812322616e-55, 2.2597135911236184e-71, -1.452551873877095e-87),
      TD(8.359650847182804e-57, -5.0402798850883064e-73, -1.971165125943993e-89),
      TD(1.817315401561479e-58, 1.365069339879366e-74, 2.5449015040142434e-91),
      TD(3.866628513960594e-60, -1.564355005786389e-76, -1.2863855447354847e-92),
      TD(8.055476070751236e-62, 8.255818478070949e-78, -2.679969884865593e-94),
      TD(1.643974708316579e-63, -4.080880981844294e-80, -3.32913139064192e-96),
      TD(3.287949416633158e-65, 5.332251403646481e-82, 8.324193862236773e-99),
      TD(6.446959640457172e-67, 2.8542499223476843e-83, -1.3428344869006296e-99),
      TD(1.2397999308571486e-68, -2.430377210051421e-85, -8.239318728361721e-102),
      TD(2.3392451525606576e-70, 8.161871936085597e-87, 4.847758386854871e-103),
      TD(4.331935467704922e-72, -1.0950890458548228e-88, -6.008669702432555e-105),
      TD(7.876246304918039e-74, 2.578848742504751e-90, -5.375571071117659e-107),
      TD(1.4064725544496498e-75, 1.1618077704898094e-91, -2.9064193324175937e-108),
      TD(2.4674957095607893e-77, -4.7567198485936506e-95, -4.498838274048994e-112),
      TD(4.254302947518602e-79, 3.3126660495569664e-96, -9.378759508473191e-113),
      TD(7.2106829618959365e-81, -4.675660659561278e-97, -2.2732826558679996e-113),
      TD(1.2017804936493226e-82, 6.837470842477656e-99, 1.0840439011993803e-115),
      TD(1.9701319568021682e-84, 8.210968879386911e-101, 1.3610651106029761e-117),
      TD(3.1776321883905942e-86, -1.5561627595804251e-102, 2.834868584973462e-119),
      TD(5.043860616493007e-88, -3.178797157619149e-104, 2.613713035752867e-120),
      TD(7.881032213270323e-90, -4.96687055877992e-106, 4.0839266183638546e-122)
  ];

# |a| <= 0.2
function exp_taylor(a::TD)
  x = a
  x2 = x*x
  x3 = x*x2
  x4 = x2*x2
  x5 = x2*x3
  x10 = x5*x5
  x15 = x5*x10
  x20 = x10*x10
  x25 = x10*x15

  z = x + td_inv_fact[2]*x2 + td_inv_fact[3]*x3 + td_inv_fact[4]*x4
  z2 = x5 * (td_inv_fact[5] + x*td_inv_fact[6] + x2*td_inv_fact[7] + x3*td_inv_fact[8] + x4*td_inv_fact[9])
  z3 = x10 * (td_inv_fact[10] + x*td_inv_fact[11] + x2*td_inv_fact[12] + x3*td_inv_fact[13] + x4*td_inv_fact[14])
  z4 = x15 * (td_inv_fact[15] + x*td_inv_fact[16] + x2*td_inv_fact[17] + x3*td_inv_fact[18] + x4*td_inv_fact[19])
  z5 = x20 * (td_inv_fact[20] + x*td_inv_fact[21] + x2*td_inv_fact[22] + x3*td_inv_fact[23] + x4*td_inv_fact[24])
  z6 = x25 * (td_inv_fact[25] + x*td_inv_fact[26] + x2*td_inv_fact[27] + x3*td_inv_fact[28])

  ((((z6+z5)+z4)+z3)+z2)+z + one(DD)
end

# exp(0 fifths) .. exp(6 fifths)
const td_exp_fifths = TD[
   TD(1.0, 0.0, 0.0)                                                       
   TD(1.2214027581601699, -2.0740986247316727e-17, -6.426608929993855e-34), 
   TD(1.4918246976412703, -2.9678597513482695e-17, -1.3156795434672035e-33)
   TD(1.8221188003905089, 8.896402286295436e-17, 5.8486273504934125e-33),   
   TD(2.2255409284924674, 1.7500150972701294e-16, -1.0087607019081632e-32), 
   TD(2.718281828459045, 1.4456468917292502e-16, -2.1277171080381768e-33),
   TD(3.3201169227365477, -1.926181990575462e-16, -9.879307591112402e-33)
];

const td_n_exp_int = 256;
const td_exp_int = TD[  
  TD(2.718281828459045, 1.4456468917292502e-16, -2.1277171080381768e-33),  
  TD(7.38905609893065, -1.7971139497839148e-16, 8.268430555139957e-33),  
  TD(20.085536923187668, -1.8275625525512858e-16, 1.1213291937709194e-32),  
  TD(54.598150033144236, 2.8741578015844115e-15, 1.7003104246897037e-31),  
  TD(148.4131591025766, 3.4863514900464198e-15, -3.811747842562211e-32),  
  TD(403.4287934927351, 1.2359628024450387e-14, 1.1709520382179646e-31),  
  TD(1096.6331584284585, 9.869752640434095e-14, -6.125696216224318e-30),  
  TD(2980.9579870417283, -2.7103295816873633e-14, -1.1372231630220379e-30),  
  TD(8103.083927575384, -2.1530877621067177e-13, 3.493034785896116e-30),  
  TD(22026.465794806718, -1.3780134700517372e-12, -3.539114630937125e-29),  
  TD(59874.14171519782, 1.7895764888916994e-12, -8.815483363882642e-29),  
  TD(162754.79141900392, 5.30065881322063e-12, 2.466319168695138e-28),  
  TD(442413.3920089205, 1.2118711752313224e-11, 1.4520080913454788e-28),  
  TD(1.2026042841647768e6, -1.5000525764327354e-11, -1.0597348307277772e-27),  
  TD(3.2690173724721107e6, -3.075806431120808e-11, -3.0010656529768048e-27),  
  TD(8.886110520507872e6, 5.321182483501564e-10, 4.991872015158224e-26),  
  TD(2.41549527535753e7, -7.203995068362157e-10, -1.2422195607226908e-26),  
  TD(6.565996913733051e7, 1.4165536846555444e-9, -1.7248998417757113e-26),  
  TD(1.7848230096318725e8, 1.333018530234341e-8, 4.888990538468543e-25),  
  TD(4.851651954097903e8, 4.880277289790406e-10, -2.354308077000704e-26),  
  TD(1.3188157344832146e9, 8.043448618843281e-8, -6.371487773625452e-24),  
  TD(3.584912846131592e9, -2.3519384005402157e-7, -4.8144679026147915e-24),  
  TD(9.744803446248903e9, -6.74501500127677e-7, -4.3047722128798514e-23),  
  TD(2.648912212984347e10, 7.670395527778119e-7, 2.1653676812342498e-23),  
  TD(7.200489933738588e10, -6.992440211033874e-6, 3.0491941683952344e-22),  
  TD(1.9572960942883878e11, -1.1364989227123904e-5, -2.3277259364619435e-22),  
  TD(5.3204824060179865e11, -2.8335783945658822e-5, -8.34700141765522e-22),  
  TD(1.446257064291475e12, 7.602079742299693e-5, -2.6590406910916902e-21),  
  TD(3.931334297144042e12, 8.220112058084352e-5, 5.400602628729904e-21),  
  TD(1.0686474581524463e13, -0.0007436345313492586, 9.460262037429165e-21),  
  TD(2.9048849665247426e13, -0.0005501643178883202, -1.7689371221606047e-21),  
  TD(7.896296018268069e13, 0.007660978022635108, 3.1512033963186214e-19),  
  TD(2.1464357978591606e14, 0.002124297761531261, -1.6486771427095084e-19),  
  TD(5.834617425274549e14, 0.006402902734610391, 2.5828504022464183e-20),  
  TD(1.5860134523134308e15, -0.02187035537422534, -6.126063359042446e-19),  
  TD(4.311231547115195e15, 0.22711342229285691, 1.0760312169033586e-17),  
  TD(1.1719142372802612e16, -0.6912270602088098, -5.3949122632866115e-17),  
  TD(3.1855931757113756e16, 0.22032867170129863, 1.2010345536294758e-17),  
  TD(8.659340042399374e16, 2.953606932719265, -1.7591575006053599e-16),  
  TD(2.3538526683702e17, -14.592100089250966, 8.263454468543573e-16),  
  TD(6.398434935300549e17, 37.22266340351557, 2.471122411116742e-15),  
  TD(1.739274941520501e18, 55.394681303611236, -7.634444032832378e-16),  
  TD(4.727839468229346e18, 257.4744575627443, -2.5134655743048235e-14),  
  TD(1.2851600114359308e19, -12.1907003678569, -5.985062012321848e-16),  
  TD(3.4934271057485095e19, 436.0347972334061, 4.004349215878646e-15),  
  TD(9.496119420602448e19, 5929.133649117119, -3.704371242840454e-13),  
  TD(2.5813128861900675e20, -15192.714199784727, -3.1163625504077424e-14),  
  TD(7.016735912097631e20, 30185.471599886117, -6.848722098545894e-14),  
  TD(1.9073465724950998e21, -98786.90015904616, 4.197208362517256e-12),  
  TD(5.184705528587072e21, 419031.45332293346, 2.2470748041381468e-11),  
  TD(1.4093490824269389e22, -614323.8566876298, -2.981768692273901e-12),  
  TD(3.831008000716577e22, -661524.304512138, 6.69534599357328e-12),  
  TD(1.0413759433029089e23, -7.520901270665062e6, -3.754910028167138e-10),  
  TD(2.830753303274694e23, -4.711377645198593e6, 3.7021605218163874e-10),  
  TD(7.694785265142018e23, -3.868399744098706e7, -2.6169176485845316e-9),  
  TD(2.091659496012996e24, 5.079641515721467e7, 2.4047856572771866e-9),  
  TD(5.685719999335932e24, 2.0801558082063326e8, -9.09248660631395e-9),  
  TD(1.545538935590104e25, 1.2092033491117463e8, -5.089946219426507e-9),  
  TD(4.2012104037905144e25, -1.7624059056928084e9, 7.347807408795491e-9),  
  TD(1.1420073898156842e26, 4.912247462314477e9, -4.0383810556029435e-7),  
  TD(3.10429793570192e26, 3.39761293411071e9, -1.0683667373232363e-7),  
  TD(8.438356668741454e26, 6.5719328084037315e10, -3.572644274482033e-6),  
  TD(2.29378315946961e27, -7.566162968773138e10, -2.122192970659097e-6),  
  TD(6.235149080811617e27, 1.3899738872492847e11, 2.9479563918462358e-6),  
  TD(1.6948892444103338e28, -6.61940830637628e11, 2.6706738736225517e-5),  
  TD(4.607186634331292e28, -2.37966706696394e12, 2.8299599003037097e-5),  
  TD(1.2523631708422137e29, 8.725173269482437e12, 5.33159885274045e-5),  
  TD(3.404276049931741e29, -2.3689045745171566e13, 0.0014657873876139946),  
  TD(9.253781725587787e29, 4.1335361789492734e13, 0.00021234765992072084),  
  TD(2.515438670919167e30, 1.2647645018519611e14, 0.003586407412973383),  
  TD(6.837671229762744e30, -2.8026814130938628e14, -0.007794054164068711),  
  TD(1.8586717452841279e31, 9.331591492068494e14, 0.03694694639669623),  
  TD(5.052393630276104e31, 2.4912292015869455e15, 0.14648536724497563),  
  TD(1.3733829795401761e32, 8.003850355927158e15, -0.106842001692075),  
  TD(3.7332419967990015e32, 1.5538124781410182e16, 0.0143427783686916),  
  TD(1.0148003881138887e33, -1.8313882415912828e16, 0.9757766648151681),  
  TD(2.7585134545231703e33, -1.1490320660315066e17, 5.943341520175249),  
  TD(7.498416996990121e33, -4.7233584091570765e17, -3.545295341022214),  
  TD(2.0382810665126688e34, -5.7128185991424294e17, 24.374697364861525),  
  TD(5.54062238439351e34, 2.1811937023229343e18, 68.92485672883268),  
  TD(1.5060973145850306e35, -7.056987941853042e18, 10.189939649212826),  
  TD(4.0939969621274545e35, 1.852765937250624e19, -199.67994620780615),  
  TD(1.1128637547917594e36, -2.7961733453775843e19, 709.7340769207204),  
  TD(3.0250773222011426e36, -2.2396762302858075e20, 1926.4690322223041),  
  TD(8.223012714622913e36, 4.083087026334775e20, 17895.486286188476),  
  TD(2.235246603734715e37, 7.328168204485786e20, -12921.22460748679),  
  TD(6.076030225056872e37, 2.4300525977303657e21, -68303.38624674038),  
  TD(1.6516362549940018e38, 4.5658363808236883e21, -260125.0371158),  
  TD(4.4896128191743455e38, -3.034626837469501e22, 554752.5980586372),  
  TD(1.2204032943178408e39, -3.218018426639282e22, -1.7368452535789001e6),  
  TD(3.317400098335743e39, -2.0594325391839645e23, 1.2971230145811823e6),  
  TD(9.017628405034299e39, 4.119507937020878e23, 2.60947127461132e7),  
  TD(2.451245542920086e40, -1.809447119103778e24, -4.289318443585035e7),  
  TD(6.663176216410896e40, -3.5075886901816454e24, -1.116529341124579e8),  
  TD(1.8112390828890233e41, -6.613591371018036e24, -2.8487633028254557e8),  
  TD(4.923458286012058e41, 1.3869835129739753e25, -1.8642329204287472e8),  
  TD(1.3383347192042695e42, -3.8243050326463913e25, 8.969612614572136e8),  
  TD(3.637970947608805e42, -1.7059216189570308e26, 1.4436385517255863e10),  
  TD(9.889030319346946e42, 5.152980735736938e26, 1.5421039626071994e9),  
  TD(2.6881171418161356e43, -1.6101271449201627e27, -1.0138129064122626e11),  
  TD(7.307059979368067e43, 3.81998468048638e27, 1.7589242949408395e11),  
  TD(1.9862648361376543e44, -1.7687808052379885e27, -2.8781541988944653e10),  
  TD(5.399227610580169e44, 1.6694477435363627e28, -5.711187169829366e11),  
  TD(1.4676622301554424e45, -5.683445805084399e28, -3.9821879815043027e12),  
  TD(3.989519570547216e45, -4.528566832709381e28, -1.324544028507888e12),  
  TD(1.0844638552900231e46, -5.0737593474148365e29, 5.128149668201329e12),  
  TD(2.947878391455509e46, 1.522599815352173e30, 1.4058841019755673e14),  
  TD(8.013164264000591e46, 4.4255712989469043e30, -1.0731239652864577e14),  
  TD(2.1782038807290206e47, 6.40943286045652e30, 4.262667389268634e14),  
  TD(5.92097202766467e47, 3.6278506451438224e31, -1.8673077709586268e15),  
  TD(1.609487066961518e48, -3.11348413350283e31, -6.980136469693595e14),  
  TD(4.375039447261341e48, 1.035824156236645e32, 3.7439184111440075e14),  
  TD(1.189259022828201e49, -6.311799972004003e32, 2.8001767852973828e16),  
  TD(3.2327411910848595e49, -1.6317210762547248e33, -1.4293720368014344e17),  
  TD(8.787501635837023e49, 4.951878455668192e31, -3.0729734576366325e15),  
  TD(2.3886906014249913e50, 1.5523479734981885e34, -2.951509949588213e17),  
  TD(6.493134255664462e50, 1.417967467778397e33, -1.1115565841105502e17),  
  TD(1.7650168856917655e51, 3.659435419097009e34, -8.536336063538576e16),  
  TD(4.797813327299302e51, -4.832529827928807e34, 3.546375057413136e18),  
  TD(1.3041808783936323e52, 2.3598218061815903e35, 8.088849552127185e17),  
  TD(3.5451311827611664e52, 4.397256578106813e35, 1.6677167637718272e18),  
  TD(9.636665673603202e52, -3.923912609184774e36, -2.643344130537555e20),  
  TD(2.6195173187490626e53, 9.508437015673215e36, 4.903465425299725e20),  
  TD(7.120586326889338e53, -2.2289404495948426e37, 2.165707551230535e21),  
  TD(1.9355760420357226e54, -1.8895773015758525e37, -1.1312006802942819e21),  
  TD(5.261441182666386e54, -2.2391033592780024e38, -1.5567284166783301e22),  
  TD(1.4302079958348105e55, -4.95219683040473e38, 4.61051227024973e21),  
  TD(3.887708405994595e55, 2.707966110366217e39, 8.40107669353579e22),  
  TD(1.0567887114362587e56, 1.0147572632726592e40, 8.174924404317213e22),  
  TD(2.872649550817832e56, -1.725105418010497e40, -2.6578341119269315e23),  
  TD(7.808671073519151e56, -3.3393507820354276e39, -2.6676111729938114e23),  
  TD(2.1226168683560893e57, 9.12124047520486e40, -6.007253710143997e24),  
  TD(5.769870862033003e57, 2.54679794252527e41, 2.7445496743807577e24),  
  TD(1.568413511681964e58, -5.571295095061288e41, -3.673797346079441e25),  
  TD(4.263389948314721e58, 9.74205426058927e41, 6.9314756502460855e25),  
  TD(1.1589095424138854e59, 3.107727800036786e42, 9.71646756541256e25),  
  TD(3.150242749971452e59, -9.643637210793454e42, -2.9406195192497175e26),  
  TD(8.56324762248225e59, -5.908667317844348e43, -1.7405230718552978e27),  
  TD(2.3277320404788622e60, -1.5410810390283507e44, -2.4913947442828e27),  
  TD(6.327431707155585e60, 2.9519976099018483e44, -1.1117699126888596e28),  
  TD(1.7199742630376623e61, -6.6270661206611855e44, -3.7335082280479956e27),  
  TD(4.675374784632515e61, 1.2938282778262074e45, -2.4885140400989384e28),  
  TD(1.2708986318302189e62, -3.042168764740704e44, 1.2622264002071768e28),  
  TD(3.454660656717546e62, 1.8553902103629043e46, 2.5743662868459146e29),  
  TD(9.390741286647697e62, 8.372523060245978e46, 2.537610862961777e30),  
  TD(2.5526681395254553e63, -1.6889209515414619e47, -7.484426795815784e30),  
  TD(6.938871417758404e63, -4.174062699457691e47, 2.4157141035602262e31),  
  TD(1.886180808490652e64, 8.75753845955151e47, 1.4999486409495774e31),  
  TD(5.12717101690833e64, -1.848585500693908e47, -8.940294911553923e30),  
  TD(1.3937095806663797e65, 7.0244638077530874e47, -1.471338870576989e31),  
  TD(3.788495427274696e65, -1.6686420819293392e48, 1.3653221371939198e32),  
  TD(1.0298198277160991e66, 8.608117819191599e49, -6.387171108607294e32),  
  TD(2.799340524267497e66, -8.50129047864975e49, -1.0400371266913997e33),  
  TD(7.609396478785354e66, -1.2944224384739812e50, -7.883071182081507e33),  
  TD(2.0684484173822473e67, -2.743371829892203e50, -3.3146200011289803e33),  
  TD(5.622625746075033e67, 1.4234908903412887e51, 8.207968883270885e34),  
  TD(1.5283881393781746e68, -8.309060391771288e51, -2.0892527144587264e35),  
  TD(4.154589706104022e68, 2.1030987078913436e52, -9.488757728213872e35),  
  TD(1.129334570280557e69, -8.237338292837319e52, 6.801148934606748e35),  
  TD(3.0698496406442424e69, 4.375620509828095e52, -9.01855287244489e35),  
  TD(8.344716494264775e69, -5.967039946946015e53, 3.542448397606548e37),  
  TD(2.2683291210002403e70, 1.4059974118116153e54, 4.083802444122437e36),  
  TD(6.165957830579433e70, -5.480338773236432e54, 6.805871631769652e37),  
  TD(1.6760811125908828e71, -3.078670967159958e54, 6.653530993469299e37),  
  TD(4.556060831379215e71, 4.2683874443891194e55, 2.5603046475883494e39),  
  TD(1.2384657367292132e72, -1.7417281417483923e55, 4.171665745944932e38),  
  TD(3.366498907320164e72, 1.8595557870731098e56, 2.430092132939246e39),  
  TD(9.151092805295634e72, 2.9278721984510905e56, 5.051941818077708e38),  
  TD(2.487524928317743e73, -2.269951231486326e56, 5.588088411251843e39),  
  TD(6.761793810485009e73, 6.044072970031212e57, -1.5239530423566517e41),  
  TD(1.8380461242828246e74, 6.558763264761503e57, -6.2842095497002504e41),  
  TD(4.996327379507578e74, 1.2022315866163456e58, -4.30439705963749e41),  
  TD(1.358142592474785e75, 6.293920858651693e58, 2.538001080697679e42),  
  TD(3.691814329580466e75, 1.5523424954077878e59, 9.102987766276767e42),  
  TD(1.0035391806143295e76, -1.600289359022275e59, 8.921624694181667e42),  
  TD(2.7279023188106115e76, 6.6492459414351406e59, -2.952156561715424e43),  
  TD(7.415207303034179e76, -4.678668371358611e60, -5.344633503211126e43),  
  TD(2.0156623266094611e77, 6.4049020966883044e60, -1.4870384001958337e44),  
  TD(5.47913827473198e77, -3.839583545632845e61, -9.356912608779471e44),  
  TD(1.4893842007818383e78, 6.250487712624396e61, -4.919264913536765e44),  
  TD(4.048566008579269e78, 1.682018025551642e62, 1.187051587470802e45),  
  TD(1.1005143412437996e79, -6.764346497503176e62, -1.4326930238358925e46),  
  TD(2.991508135761597e79, 1.1738879998058348e63, -5.685756925046457e46),  
  TD(8.131762205128143e79, -1.5057074349533377e62, -6.76542981577317e44),  
  TD(2.2104421435549888e80, -7.196700457953682e63, -4.59843382846307e47),  
  TD(6.008604711685586e80, -3.660345147820277e64, 2.677819599177173e48),  
  TD(1.633308100216833e81, -2.1239531351072146e64, -2.1442930180587127e47),  
  TD(4.4397917290943824e81, -2.882962352721535e65, -2.7145185615825334e47),  
  TD(1.2068605179340022e82, 7.151662509907955e65, -4.0011216331943584e49),  
  TD(3.2805870153846705e82, -3.194753619685436e66, -1.6258192542475755e50),  
  TD(8.917560070598843e82, -8.989668102219982e65, 5.872088338798872e49),  
  TD(2.4240441494100796e83, -3.8332753349400205e66, -2.4142368740836784e50),  
  TD(6.589235162723882e83, -8.709570822927273e66, 4.38393402369277e50),  
  TD(1.7911398206275708e84, 5.99708494881663e67, -3.898177174687216e50),  
  TD(4.8688228266413195e84, 1.710917432346709e68, -3.710816434280393e51),  
  TD(1.3234832615645704e85, -6.425373409956827e68, 2.7202859465247475e52),  
  TD(3.5976005001806814e85, -2.5813006529759342e69, -4.175155490046978e52),  
  TD(9.779292065696318e85, -6.6113382980943924e69, -2.4747721494219566e53),  
  TD(2.658287191737602e86, 6.120064792143622e69, -2.8169558388109244e53),  
  TD(7.225973768125749e86, 2.9945383505980016e70, -2.4656515449276994e52),  
  TD(1.964223318681796e87, -1.0268429875036315e71, 5.236639905552299e54),  
  TD(5.339312554208246e87, -2.625028820065693e71, 2.4083430064717356e55),  
  TD(1.4513756292567526e88, -2.884486923510417e71, 2.2373717716371445e55),  
  TD(3.945247999276943e88, 7.221484370687266e70, -2.5602633887737946e54),  
  TD(1.0724295945198918e89, 4.163246302178397e72, -3.3362467897312186e56),  
  TD(2.9151658790851237e89, 2.656865521036125e73, -1.2132528701924287e56),  
  TD(7.924242436060931e89, -4.347509662136458e73, 2.9118839322857488e57),  
  TD(2.1540324218248465e90, 6.568050851363196e73, 5.687199536689467e56),  
  TD(5.855267190158109e90, 4.4915902036294956e74, 8.709976552642122e57),  
  TD(1.5916266403779241e91, 3.865065123172901e74, 1.1362092098744349e58),  
  TD(4.326489774230631e91, 3.1789213685539743e74, 6.679506996298473e57),  
  TD(1.1760618534305e92, 5.894438850996908e75, 1.46216982996378e59),  
  TD(3.196867565323994e92, -1.9538627920591218e76, -1.596248541219925e60),  
  TD(8.689987010810322e92, -5.6063024973277287e76, -1.039732242539862e60),  
  TD(2.3621833781030834e93, -7.781526569884677e76, 8.241985687084489e58),  
  TD(6.421080152185614e93, -1.4034869476251672e77, 8.94340357798147e60),  
  TD(1.7454305496765193e94, 9.749159232851838e77, 1.3772711407312229e61),  
  TD(4.744572146022966e94, -3.2789833020339664e78, 1.1145960146026666e62),  
  TD(1.2897084248347162e95, 5.438670793036996e78, -2.712679566619085e62),  
  TD(3.505790975238748e95, 1.5415362493078123e78, -5.331771085301626e61),  
  TD(9.529727902367202e95, 9.833684415222857e78, 2.3224879480754183e62),  
  TD(2.5904486187163903e96, -2.263041008869737e80, -9.131190514738557e62),  
  TD(7.041569407813597e96, -4.0828301614775564e80, 5.432549733443377e62),  
  TD(1.9140970165092822e97, -1.497464557916617e81, 2.4095785563251316e64),  
  TD(5.2030551378848545e97, 4.749190808721398e80, -7.223986999061391e63),  
  TD(1.4143370233782872e98, 3.8946526873422757e80, -1.9649170029162572e64),  
  TD(3.844566629966054e98, 2.2093533915053797e81, -2.3303025309417966e63),  
  TD(1.0450615608536755e99, -5.337145484954864e82, -7.503673650794132e65),  
  TD(2.840771850489593e99, 2.7464976717218177e81, 1.7468727661182804e65),  
  TD(7.722018499983836e99, -4.0996868440885443e83, 7.165169152261782e66),  
  TD(2.0990622567530634e100, 4.153001760319747e83, -7.009662310297903e66),  
  TD(5.705842789336087e100, -7.502847960571591e83, -2.4801494557115398e67),  
  TD(1.551008877029636e101, -1.1711307176004477e85, -5.533742733635353e68),  
  TD(4.216079246208329e101, 3.4845354806957584e84, -1.462657611650957e68),  
  TD(1.146049160231141e102, 5.309475346149073e85, 1.5323663978256527e69),  
  TD(3.115284606777059e102, 1.1305094460701447e86, -1.1160940631374998e69),  
  TD(8.468221537080262e102, -2.2036277666109673e86, 1.2073850043634683e70),  
  TD(2.30190127236108e103, -4.663183218411149e86, 2.7194712685695586e70),  
  TD(6.25721639956588e103, -3.232721480812657e87, -1.412027275389235e71),  
  TD(1.700887763567586e104, 1.4773861394382237e88, -1.6566552716535912e70),  
  TD(4.6234922999541146e104, 6.980490121714062e87, -4.178131018909918e71),  
  TD(1.2567955102985587e105, -1.5226136925021163e88, -3.4070147820917737e71),  
  TD(3.416324397733485e105, -7.894999158901084e86, 3.685152148214523e70),  
  TD(9.286532530480224e105, -2.614355089326607e89, -2.5929786669881635e73),  
  TD(2.5243412626998188e106, 7.770616368141536e88, -4.859484187904238e72),  
  TD(6.861870983226278e106, 2.54810635544448e90, -2.1180278791034765e74),  
  TD(1.8652499202934394e107, 3.8378044485542437e90, -1.7069056281222123e74),  
  TD(5.070274963868339e107, 1.2106757063676503e90, -7.241226422337536e73),  
  TD(1.3782436299574147e108, 8.797324501988005e91, 1.8741641437570143e75),  
  TD(3.7464546145026734e108, -1.331977416683643e92, 9.121890396513558e75),  
  TD(1.0183919499749154e109, 3.760113287049303e92, 3.405230764935433e74),  
  TD(2.7682763318657856e109, -4.359593659827271e92, -1.2509836751313654e75),  
  TD(7.524955249064026e109, 4.590038424351707e93, -4.3389309295776495e77),  
  TD(2.045494911349825e110, 5.874933608518508e93, 1.4602190919301713e77),  
  TD(5.5602316477276757e110, -2.3961412490467085e94, 7.325348790055507e77),  
  TD(1.5114276650041035e111, 1.4805989167614457e94, -3.8326245424402867e77)
 ];

function exp(x::TD)
    isneg, abs_x = signbit(x), abs(x)
    if abs_x.hi <= 0.2
        z = exp_taylor(abs_x)
    elseif abs_x.hi <= 256.0
        f = floor(abs_x.hi)
        i = trunc(Int,f)
        d = abs_x - f
        expi = td_exp_int[i]
        dfifths = d / 5.0
        f = floor(dfifths)
        i = trunc(Int,f)
        expi = expi * td_exp_fifths[i+1]
        d = d - TD(0.2,0.0,0.0)*f
        z = expi * exp_taylor(d)
    else
        NaN
    end
    isneg ? recip(z) : z
end    
