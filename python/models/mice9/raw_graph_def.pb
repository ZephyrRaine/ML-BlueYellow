
;
Brain/batch_sizePlaceholder*
dtype0*
shape:
@
Brain/sequence_lengthPlaceholder*
dtype0*
shape:
I
Brain/global_step/initial_valueConst*
value	B : *
dtype0
]
Brain/global_step
VariableV2*
shape: *
dtype0*
	container *
shared_name 
®
Brain/global_step/AssignAssignBrain/global_stepBrain/global_step/initial_value*
T0*
validate_shape(*
use_locking(*$
_class
loc:@Brain/global_step
d
Brain/global_step/readIdentityBrain/global_step*
T0*$
_class
loc:@Brain/global_step
5
Brain/Add/yConst*
value	B :*
dtype0
>
	Brain/AddAddBrain/global_step/readBrain/Add/y*
T0

Brain/AssignAssignBrain/global_step	Brain/Add*
T0*
validate_shape(*
use_locking(*$
_class
loc:@Brain/global_step
L
Brain/last_reward/initial_valueConst*
valueB
 *    *
dtype0
]
Brain/last_reward
VariableV2*
shape: *
dtype0*
	container *
shared_name 
®
Brain/last_reward/AssignAssignBrain/last_rewardBrain/last_reward/initial_value*
T0*
validate_shape(*
use_locking(*$
_class
loc:@Brain/last_reward
d
Brain/last_reward/readIdentityBrain/last_reward*
T0*$
_class
loc:@Brain/last_reward
9
Brain/new_rewardPlaceholder*
dtype0*
shape: 

Brain/Assign_1AssignBrain/last_rewardBrain/new_reward*
T0*
validate_shape(*
use_locking(*$
_class
loc:@Brain/last_reward
E
Brain/statePlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

5Brain/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"   @   *
dtype0*%
_class
loc:@Brain/dense/kernel

4Brain/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@Brain/dense/kernel

6Brain/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *î¤Ü>*
dtype0*%
_class
loc:@Brain/dense/kernel
ß
?Brain/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5Brain/dense/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@Brain/dense/kernel
ã
3Brain/dense/kernel/Initializer/truncated_normal/mulMul?Brain/dense/kernel/Initializer/truncated_normal/TruncatedNormal6Brain/dense/kernel/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@Brain/dense/kernel
Ñ
/Brain/dense/kernel/Initializer/truncated_normalAdd3Brain/dense/kernel/Initializer/truncated_normal/mul4Brain/dense/kernel/Initializer/truncated_normal/mean*
T0*%
_class
loc:@Brain/dense/kernel

Brain/dense/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense/kernel
Á
Brain/dense/kernel/AssignAssignBrain/dense/kernel/Brain/dense/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense/kernel
g
Brain/dense/kernel/readIdentityBrain/dense/kernel*
T0*%
_class
loc:@Brain/dense/kernel
x
"Brain/dense/bias/Initializer/zerosConst*
valueB@*    *
dtype0*#
_class
loc:@Brain/dense/bias

Brain/dense/bias
VariableV2*
shape:@*
dtype0*
	container *
shared_name *#
_class
loc:@Brain/dense/bias
®
Brain/dense/bias/AssignAssignBrain/dense/bias"Brain/dense/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
a
Brain/dense/bias/readIdentityBrain/dense/bias*
T0*#
_class
loc:@Brain/dense/bias
q
Brain/dense/MatMulMatMulBrain/stateBrain/dense/kernel/read*
transpose_a( *
transpose_b( *
T0
i
Brain/dense/BiasAddBiasAddBrain/dense/MatMulBrain/dense/bias/read*
T0*
data_formatNHWC
6
Brain/dense/TanhTanhBrain/dense/BiasAdd*
T0

7Brain/dense_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"@   @   *
dtype0*'
_class
loc:@Brain/dense_1/kernel

6Brain/dense_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@Brain/dense_1/kernel

8Brain/dense_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *Eñ>*
dtype0*'
_class
loc:@Brain/dense_1/kernel
å
ABrain/dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7Brain/dense_1/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@Brain/dense_1/kernel
ë
5Brain/dense_1/kernel/Initializer/truncated_normal/mulMulABrain/dense_1/kernel/Initializer/truncated_normal/TruncatedNormal8Brain/dense_1/kernel/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@Brain/dense_1/kernel
Ù
1Brain/dense_1/kernel/Initializer/truncated_normalAdd5Brain/dense_1/kernel/Initializer/truncated_normal/mul6Brain/dense_1/kernel/Initializer/truncated_normal/mean*
T0*'
_class
loc:@Brain/dense_1/kernel

Brain/dense_1/kernel
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_1/kernel
É
Brain/dense_1/kernel/AssignAssignBrain/dense_1/kernel1Brain/dense_1/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_1/kernel
m
Brain/dense_1/kernel/readIdentityBrain/dense_1/kernel*
T0*'
_class
loc:@Brain/dense_1/kernel
|
$Brain/dense_1/bias/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_1/bias

Brain/dense_1/bias
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_1/bias
¶
Brain/dense_1/bias/AssignAssignBrain/dense_1/bias$Brain/dense_1/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_1/bias
g
Brain/dense_1/bias/readIdentityBrain/dense_1/bias*
T0*%
_class
loc:@Brain/dense_1/bias
z
Brain/dense_2/MatMulMatMulBrain/dense/TanhBrain/dense_1/kernel/read*
transpose_a( *
transpose_b( *
T0
o
Brain/dense_2/BiasAddBiasAddBrain/dense_2/MatMulBrain/dense_1/bias/read*
T0*
data_formatNHWC
:
Brain/dense_2/TanhTanhBrain/dense_2/BiasAdd*
T0

7Brain/dense_2/kernel/Initializer/truncated_normal/shapeConst*
valueB"   @   *
dtype0*'
_class
loc:@Brain/dense_2/kernel

6Brain/dense_2/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@Brain/dense_2/kernel

8Brain/dense_2/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *î¤Ü>*
dtype0*'
_class
loc:@Brain/dense_2/kernel
å
ABrain/dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7Brain/dense_2/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@Brain/dense_2/kernel
ë
5Brain/dense_2/kernel/Initializer/truncated_normal/mulMulABrain/dense_2/kernel/Initializer/truncated_normal/TruncatedNormal8Brain/dense_2/kernel/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@Brain/dense_2/kernel
Ù
1Brain/dense_2/kernel/Initializer/truncated_normalAdd5Brain/dense_2/kernel/Initializer/truncated_normal/mul6Brain/dense_2/kernel/Initializer/truncated_normal/mean*
T0*'
_class
loc:@Brain/dense_2/kernel

Brain/dense_2/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_2/kernel
É
Brain/dense_2/kernel/AssignAssignBrain/dense_2/kernel1Brain/dense_2/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_2/kernel
m
Brain/dense_2/kernel/readIdentityBrain/dense_2/kernel*
T0*'
_class
loc:@Brain/dense_2/kernel
|
$Brain/dense_2/bias/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_2/bias

Brain/dense_2/bias
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_2/bias
¶
Brain/dense_2/bias/AssignAssignBrain/dense_2/bias$Brain/dense_2/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_2/bias
g
Brain/dense_2/bias/readIdentityBrain/dense_2/bias*
T0*%
_class
loc:@Brain/dense_2/bias
u
Brain/dense_3/MatMulMatMulBrain/stateBrain/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0
o
Brain/dense_3/BiasAddBiasAddBrain/dense_3/MatMulBrain/dense_2/bias/read*
T0*
data_formatNHWC
:
Brain/dense_3/TanhTanhBrain/dense_3/BiasAdd*
T0

7Brain/dense_3/kernel/Initializer/truncated_normal/shapeConst*
valueB"@   @   *
dtype0*'
_class
loc:@Brain/dense_3/kernel

6Brain/dense_3/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@Brain/dense_3/kernel

8Brain/dense_3/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *Eñ>*
dtype0*'
_class
loc:@Brain/dense_3/kernel
å
ABrain/dense_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7Brain/dense_3/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@Brain/dense_3/kernel
ë
5Brain/dense_3/kernel/Initializer/truncated_normal/mulMulABrain/dense_3/kernel/Initializer/truncated_normal/TruncatedNormal8Brain/dense_3/kernel/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@Brain/dense_3/kernel
Ù
1Brain/dense_3/kernel/Initializer/truncated_normalAdd5Brain/dense_3/kernel/Initializer/truncated_normal/mul6Brain/dense_3/kernel/Initializer/truncated_normal/mean*
T0*'
_class
loc:@Brain/dense_3/kernel

Brain/dense_3/kernel
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_3/kernel
É
Brain/dense_3/kernel/AssignAssignBrain/dense_3/kernel1Brain/dense_3/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_3/kernel
m
Brain/dense_3/kernel/readIdentityBrain/dense_3/kernel*
T0*'
_class
loc:@Brain/dense_3/kernel
|
$Brain/dense_3/bias/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_3/bias

Brain/dense_3/bias
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_3/bias
¶
Brain/dense_3/bias/AssignAssignBrain/dense_3/bias$Brain/dense_3/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_3/bias
g
Brain/dense_3/bias/readIdentityBrain/dense_3/bias*
T0*%
_class
loc:@Brain/dense_3/bias
|
Brain/dense_4/MatMulMatMulBrain/dense_3/TanhBrain/dense_3/kernel/read*
transpose_a( *
transpose_b( *
T0
o
Brain/dense_4/BiasAddBiasAddBrain/dense_4/MatMulBrain/dense_3/bias/read*
T0*
data_formatNHWC
:
Brain/dense_4/TanhTanhBrain/dense_4/BiasAdd*
T0

7Brain/dense_4/kernel/Initializer/truncated_normal/shapeConst*
valueB"@      *
dtype0*'
_class
loc:@Brain/dense_4/kernel

6Brain/dense_4/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@Brain/dense_4/kernel

8Brain/dense_4/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *i<*
dtype0*'
_class
loc:@Brain/dense_4/kernel
å
ABrain/dense_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7Brain/dense_4/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@Brain/dense_4/kernel
ë
5Brain/dense_4/kernel/Initializer/truncated_normal/mulMulABrain/dense_4/kernel/Initializer/truncated_normal/TruncatedNormal8Brain/dense_4/kernel/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@Brain/dense_4/kernel
Ù
1Brain/dense_4/kernel/Initializer/truncated_normalAdd5Brain/dense_4/kernel/Initializer/truncated_normal/mul6Brain/dense_4/kernel/Initializer/truncated_normal/mean*
T0*'
_class
loc:@Brain/dense_4/kernel

Brain/dense_4/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_4/kernel
É
Brain/dense_4/kernel/AssignAssignBrain/dense_4/kernel1Brain/dense_4/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_4/kernel
m
Brain/dense_4/kernel/readIdentityBrain/dense_4/kernel*
T0*'
_class
loc:@Brain/dense_4/kernel
|
Brain/dense_5/MatMulMatMulBrain/dense_2/TanhBrain/dense_4/kernel/read*
transpose_a( *
transpose_b( *
T0

)Brain/log_sigma_squared/Initializer/zerosConst*
valueB*    *
dtype0**
_class 
loc:@Brain/log_sigma_squared

Brain/log_sigma_squared
VariableV2*
shape:*
dtype0*
	container *
shared_name **
_class 
loc:@Brain/log_sigma_squared
Ê
Brain/log_sigma_squared/AssignAssignBrain/log_sigma_squared)Brain/log_sigma_squared/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@Brain/log_sigma_squared
v
Brain/log_sigma_squared/readIdentityBrain/log_sigma_squared*
T0**
_class 
loc:@Brain/log_sigma_squared
7
	Brain/ExpExpBrain/log_sigma_squared/read*
T0
G
Brain/epsilonPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
&

Brain/SqrtSqrt	Brain/Exp*
T0
4
	Brain/mulMul
Brain/SqrtBrain/epsilon*
T0
:
	Brain/addAddBrain/dense_5/MatMul	Brain/mul*
T0
,
Brain/actionIdentity	Brain/add*
T0
9
Brain/StopGradientStopGradientBrain/action*
T0
C
	Brain/subSubBrain/StopGradientBrain/dense_5/MatMul*
T0
8
Brain/Pow/yConst*
valueB
 *   @*
dtype0
1
	Brain/PowPow	Brain/subBrain/Pow/y*
T0
:
Brain/mul_1/xConst*
valueB
 *  ¿*
dtype0
5
Brain/mul_1MulBrain/mul_1/x	Brain/Pow*
T0
:
Brain/mul_2/xConst*
valueB
 *   @*
dtype0
5
Brain/mul_2MulBrain/mul_2/x	Brain/Exp*
T0
;
Brain/truedivRealDivBrain/mul_1Brain/mul_2*
T0
*
Brain/Exp_1ExpBrain/truediv*
T0
:
Brain/mul_3/xConst*
valueB
 *   @*
dtype0
5
Brain/mul_3MulBrain/mul_3/x	Brain/Exp*
T0
:
Brain/mul_4/yConst*
valueB
 *ÛI@*
dtype0
7
Brain/mul_4MulBrain/mul_3Brain/mul_4/y*
T0
*
Brain/Sqrt_1SqrtBrain/mul_4*
T0
>
Brain/truediv_1/xConst*
valueB
 *  ?*
dtype0
D
Brain/truediv_1RealDivBrain/truediv_1/xBrain/Sqrt_1*
T0
@
Brain/action_probsMulBrain/Exp_1Brain/truediv_1*
T0
:
Brain/mul_5/xConst*
valueB
 *À¢A*
dtype0
5
Brain/mul_5MulBrain/mul_5/x	Brain/Exp*
T0
&
	Brain/LogLogBrain/mul_5*
T0
:
Brain/mul_6/xConst*
valueB
 *   ?*
dtype0
5
Brain/mul_6MulBrain/mul_6/x	Brain/Log*
T0
9
Brain/ConstConst*
valueB: *
dtype0
P
	Brain/SumSumBrain/mul_6Brain/Const*
	keep_dims( *
T0*

Tidx0

5Brain/dense_5/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *
dtype0*'
_class
loc:@Brain/dense_5/kernel

3Brain/dense_5/kernel/Initializer/random_uniform/minConst*
valueB
 *¾*
dtype0*'
_class
loc:@Brain/dense_5/kernel

3Brain/dense_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*
dtype0*'
_class
loc:@Brain/dense_5/kernel
Ý
=Brain/dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform5Brain/dense_5/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@Brain/dense_5/kernel
Ö
3Brain/dense_5/kernel/Initializer/random_uniform/subSub3Brain/dense_5/kernel/Initializer/random_uniform/max3Brain/dense_5/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@Brain/dense_5/kernel
à
3Brain/dense_5/kernel/Initializer/random_uniform/mulMul=Brain/dense_5/kernel/Initializer/random_uniform/RandomUniform3Brain/dense_5/kernel/Initializer/random_uniform/sub*
T0*'
_class
loc:@Brain/dense_5/kernel
Ò
/Brain/dense_5/kernel/Initializer/random_uniformAdd3Brain/dense_5/kernel/Initializer/random_uniform/mul3Brain/dense_5/kernel/Initializer/random_uniform/min*
T0*'
_class
loc:@Brain/dense_5/kernel

Brain/dense_5/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_5/kernel
Ç
Brain/dense_5/kernel/AssignAssignBrain/dense_5/kernel/Brain/dense_5/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_5/kernel
m
Brain/dense_5/kernel/readIdentityBrain/dense_5/kernel*
T0*'
_class
loc:@Brain/dense_5/kernel
|
$Brain/dense_5/bias/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@Brain/dense_5/bias

Brain/dense_5/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_5/bias
¶
Brain/dense_5/bias/AssignAssignBrain/dense_5/bias$Brain/dense_5/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_5/bias
g
Brain/dense_5/bias/readIdentityBrain/dense_5/bias*
T0*%
_class
loc:@Brain/dense_5/bias
|
Brain/dense_6/MatMulMatMulBrain/dense_4/TanhBrain/dense_5/kernel/read*
transpose_a( *
transpose_b( *
T0
o
Brain/dense_6/BiasAddBiasAddBrain/dense_6/MatMulBrain/dense_5/bias/read*
T0*
data_formatNHWC
@
Brain/value_estimateIdentityBrain/dense_6/BiasAdd*
T0
Q
Brain/old_probabilitiesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
N
Brain/discounted_rewardsPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
Brain/advantagesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
P
#Brain/PolynomialDecay/learning_rateConst*
valueB
 *ÍÌL>*
dtype0
R
Brain/PolynomialDecay/CastCastBrain/global_step/read*

SrcT0*

DstT0
K
Brain/PolynomialDecay/Cast_1/xConst*
valueB
 * $tI*
dtype0
K
Brain/PolynomialDecay/Cast_2/xConst*
valueB
 *ÍÌÌ=*
dtype0
K
Brain/PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
m
Brain/PolynomialDecay/MinimumMinimumBrain/PolynomialDecay/CastBrain/PolynomialDecay/Cast_1/x*
T0
l
Brain/PolynomialDecay/divRealDivBrain/PolynomialDecay/MinimumBrain/PolynomialDecay/Cast_1/x*
T0
n
Brain/PolynomialDecay/subSub#Brain/PolynomialDecay/learning_rateBrain/PolynomialDecay/Cast_2/x*
T0
J
Brain/PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
e
Brain/PolynomialDecay/sub_1SubBrain/PolynomialDecay/sub_1/xBrain/PolynomialDecay/div*
T0
f
Brain/PolynomialDecay/PowPowBrain/PolynomialDecay/sub_1Brain/PolynomialDecay/Cast_3/x*
T0
_
Brain/PolynomialDecay/MulMulBrain/PolynomialDecay/subBrain/PolynomialDecay/Pow*
T0
`
Brain/PolynomialDecayAddBrain/PolynomialDecay/MulBrain/PolynomialDecay/Cast_2/x*
T0
:
Brain/add_1/yConst*
valueB
 *ÿæÛ.*
dtype0
C
Brain/add_1AddBrain/old_probabilitiesBrain/add_1/y*
T0
D
Brain/truediv_2RealDivBrain/action_probsBrain/add_1*
T0
>
Brain/mul_7MulBrain/truediv_2Brain/advantages*
T0
:
Brain/sub_1/xConst*
valueB
 *  ?*
dtype0
A
Brain/sub_1SubBrain/sub_1/xBrain/PolynomialDecay*
T0
:
Brain/add_2/xConst*
valueB
 *  ?*
dtype0
A
Brain/add_2AddBrain/add_2/xBrain/PolynomialDecay*
T0
M
Brain/clip_by_value/MinimumMinimumBrain/truediv_2Brain/add_2*
T0
Q
Brain/clip_by_valueMaximumBrain/clip_by_value/MinimumBrain/sub_1*
T0
B
Brain/mul_8MulBrain/clip_by_valueBrain/advantages*
T0
;
Brain/MinimumMinimumBrain/mul_7Brain/mul_8*
T0
B
Brain/Const_1Const*
valueB"       *
dtype0
V

Brain/MeanMeanBrain/MinimumBrain/Const_1*
	keep_dims( *
T0*

Tidx0
%
	Brain/NegNeg
Brain/Mean*
T0
G
Brain/Sum_1/reduction_indicesConst*
value	B :*
dtype0
m
Brain/Sum_1SumBrain/value_estimateBrain/Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0
\
Brain/SquaredDifferenceSquaredDifferenceBrain/discounted_rewardsBrain/Sum_1*
T0
;
Brain/Const_2Const*
valueB: *
dtype0
b
Brain/Mean_1MeanBrain/SquaredDifferenceBrain/Const_2*
	keep_dims( *
T0*

Tidx0
R
%Brain/PolynomialDecay_1/learning_rateConst*
valueB
 *    *
dtype0
T
Brain/PolynomialDecay_1/CastCastBrain/global_step/read*

SrcT0*

DstT0
M
 Brain/PolynomialDecay_1/Cast_1/xConst*
valueB
 * $tI*
dtype0
M
 Brain/PolynomialDecay_1/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
M
 Brain/PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
s
Brain/PolynomialDecay_1/MinimumMinimumBrain/PolynomialDecay_1/Cast Brain/PolynomialDecay_1/Cast_1/x*
T0
r
Brain/PolynomialDecay_1/divRealDivBrain/PolynomialDecay_1/Minimum Brain/PolynomialDecay_1/Cast_1/x*
T0
t
Brain/PolynomialDecay_1/subSub%Brain/PolynomialDecay_1/learning_rate Brain/PolynomialDecay_1/Cast_2/x*
T0
L
Brain/PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
k
Brain/PolynomialDecay_1/sub_1SubBrain/PolynomialDecay_1/sub_1/xBrain/PolynomialDecay_1/div*
T0
l
Brain/PolynomialDecay_1/PowPowBrain/PolynomialDecay_1/sub_1 Brain/PolynomialDecay_1/Cast_3/x*
T0
e
Brain/PolynomialDecay_1/MulMulBrain/PolynomialDecay_1/subBrain/PolynomialDecay_1/Pow*
T0
f
Brain/PolynomialDecay_1AddBrain/PolynomialDecay_1/Mul Brain/PolynomialDecay_1/Cast_2/x*
T0
:
Brain/mul_9/xConst*
valueB
 *   ?*
dtype0
8
Brain/mul_9MulBrain/mul_9/xBrain/Mean_1*
T0
3
Brain/add_3Add	Brain/NegBrain/mul_9*
T0
6
Brain/Const_3Const*
valueB *
dtype0
T
Brain/Mean_2Mean	Brain/SumBrain/Const_3*
	keep_dims( *
T0*

Tidx0
C
Brain/mul_10MulBrain/PolynomialDecay_1Brain/Mean_2*
T0
6
Brain/sub_2SubBrain/add_3Brain/mul_10*
T0
R
%Brain/PolynomialDecay_2/learning_rateConst*
valueB
 *RI9*
dtype0
T
Brain/PolynomialDecay_2/CastCastBrain/global_step/read*

SrcT0*

DstT0
M
 Brain/PolynomialDecay_2/Cast_1/xConst*
valueB
 * $tI*
dtype0
M
 Brain/PolynomialDecay_2/Cast_2/xConst*
valueB
 *ÿæÛ.*
dtype0
M
 Brain/PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
s
Brain/PolynomialDecay_2/MinimumMinimumBrain/PolynomialDecay_2/Cast Brain/PolynomialDecay_2/Cast_1/x*
T0
r
Brain/PolynomialDecay_2/divRealDivBrain/PolynomialDecay_2/Minimum Brain/PolynomialDecay_2/Cast_1/x*
T0
t
Brain/PolynomialDecay_2/subSub%Brain/PolynomialDecay_2/learning_rate Brain/PolynomialDecay_2/Cast_2/x*
T0
L
Brain/PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
k
Brain/PolynomialDecay_2/sub_1SubBrain/PolynomialDecay_2/sub_1/xBrain/PolynomialDecay_2/div*
T0
l
Brain/PolynomialDecay_2/PowPowBrain/PolynomialDecay_2/sub_1 Brain/PolynomialDecay_2/Cast_3/x*
T0
e
Brain/PolynomialDecay_2/MulMulBrain/PolynomialDecay_2/subBrain/PolynomialDecay_2/Pow*
T0
f
Brain/PolynomialDecay_2AddBrain/PolynomialDecay_2/Mul Brain/PolynomialDecay_2/Cast_2/x*
T0
>
Brain/gradients/ShapeConst*
valueB *
dtype0
B
Brain/gradients/ConstConst*
valueB
 *  ?*
dtype0
S
Brain/gradients/FillFillBrain/gradients/ShapeBrain/gradients/Const*
T0
O
&Brain/gradients/Brain/sub_2_grad/ShapeConst*
valueB *
dtype0
Q
(Brain/gradients/Brain/sub_2_grad/Shape_1Const*
valueB *
dtype0
ª
6Brain/gradients/Brain/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/sub_2_grad/Shape(Brain/gradients/Brain/sub_2_grad/Shape_1*
T0

$Brain/gradients/Brain/sub_2_grad/SumSumBrain/gradients/Fill6Brain/gradients/Brain/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/sub_2_grad/ReshapeReshape$Brain/gradients/Brain/sub_2_grad/Sum&Brain/gradients/Brain/sub_2_grad/Shape*
T0*
Tshape0
£
&Brain/gradients/Brain/sub_2_grad/Sum_1SumBrain/gradients/Fill8Brain/gradients/Brain/sub_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
\
$Brain/gradients/Brain/sub_2_grad/NegNeg&Brain/gradients/Brain/sub_2_grad/Sum_1*
T0

*Brain/gradients/Brain/sub_2_grad/Reshape_1Reshape$Brain/gradients/Brain/sub_2_grad/Neg(Brain/gradients/Brain/sub_2_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/sub_2_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/sub_2_grad/Reshape+^Brain/gradients/Brain/sub_2_grad/Reshape_1
é
9Brain/gradients/Brain/sub_2_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/sub_2_grad/Reshape2^Brain/gradients/Brain/sub_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/sub_2_grad/Reshape
ï
;Brain/gradients/Brain/sub_2_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/sub_2_grad/Reshape_12^Brain/gradients/Brain/sub_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/sub_2_grad/Reshape_1
O
&Brain/gradients/Brain/add_3_grad/ShapeConst*
valueB *
dtype0
Q
(Brain/gradients/Brain/add_3_grad/Shape_1Const*
valueB *
dtype0
ª
6Brain/gradients/Brain/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/add_3_grad/Shape(Brain/gradients/Brain/add_3_grad/Shape_1*
T0
Ä
$Brain/gradients/Brain/add_3_grad/SumSum9Brain/gradients/Brain/sub_2_grad/tuple/control_dependency6Brain/gradients/Brain/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/add_3_grad/ReshapeReshape$Brain/gradients/Brain/add_3_grad/Sum&Brain/gradients/Brain/add_3_grad/Shape*
T0*
Tshape0
È
&Brain/gradients/Brain/add_3_grad/Sum_1Sum9Brain/gradients/Brain/sub_2_grad/tuple/control_dependency8Brain/gradients/Brain/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/add_3_grad/Reshape_1Reshape&Brain/gradients/Brain/add_3_grad/Sum_1(Brain/gradients/Brain/add_3_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/add_3_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/add_3_grad/Reshape+^Brain/gradients/Brain/add_3_grad/Reshape_1
é
9Brain/gradients/Brain/add_3_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/add_3_grad/Reshape2^Brain/gradients/Brain/add_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/add_3_grad/Reshape
ï
;Brain/gradients/Brain/add_3_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/add_3_grad/Reshape_12^Brain/gradients/Brain/add_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/add_3_grad/Reshape_1
P
'Brain/gradients/Brain/mul_10_grad/ShapeConst*
valueB *
dtype0
R
)Brain/gradients/Brain/mul_10_grad/Shape_1Const*
valueB *
dtype0
­
7Brain/gradients/Brain/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgs'Brain/gradients/Brain/mul_10_grad/Shape)Brain/gradients/Brain/mul_10_grad/Shape_1*
T0

%Brain/gradients/Brain/mul_10_grad/mulMul;Brain/gradients/Brain/sub_2_grad/tuple/control_dependency_1Brain/Mean_2*
T0
²
%Brain/gradients/Brain/mul_10_grad/SumSum%Brain/gradients/Brain/mul_10_grad/mul7Brain/gradients/Brain/mul_10_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

)Brain/gradients/Brain/mul_10_grad/ReshapeReshape%Brain/gradients/Brain/mul_10_grad/Sum'Brain/gradients/Brain/mul_10_grad/Shape*
T0*
Tshape0

'Brain/gradients/Brain/mul_10_grad/mul_1MulBrain/PolynomialDecay_1;Brain/gradients/Brain/sub_2_grad/tuple/control_dependency_1*
T0
¸
'Brain/gradients/Brain/mul_10_grad/Sum_1Sum'Brain/gradients/Brain/mul_10_grad/mul_19Brain/gradients/Brain/mul_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¡
+Brain/gradients/Brain/mul_10_grad/Reshape_1Reshape'Brain/gradients/Brain/mul_10_grad/Sum_1)Brain/gradients/Brain/mul_10_grad/Shape_1*
T0*
Tshape0

2Brain/gradients/Brain/mul_10_grad/tuple/group_depsNoOp*^Brain/gradients/Brain/mul_10_grad/Reshape,^Brain/gradients/Brain/mul_10_grad/Reshape_1
í
:Brain/gradients/Brain/mul_10_grad/tuple/control_dependencyIdentity)Brain/gradients/Brain/mul_10_grad/Reshape3^Brain/gradients/Brain/mul_10_grad/tuple/group_deps*
T0*<
_class2
0.loc:@Brain/gradients/Brain/mul_10_grad/Reshape
ó
<Brain/gradients/Brain/mul_10_grad/tuple/control_dependency_1Identity+Brain/gradients/Brain/mul_10_grad/Reshape_13^Brain/gradients/Brain/mul_10_grad/tuple/group_deps*
T0*>
_class4
20loc:@Brain/gradients/Brain/mul_10_grad/Reshape_1
m
"Brain/gradients/Brain/Neg_grad/NegNeg9Brain/gradients/Brain/add_3_grad/tuple/control_dependency*
T0
O
&Brain/gradients/Brain/mul_9_grad/ShapeConst*
valueB *
dtype0
Q
(Brain/gradients/Brain/mul_9_grad/Shape_1Const*
valueB *
dtype0
ª
6Brain/gradients/Brain/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_9_grad/Shape(Brain/gradients/Brain/mul_9_grad/Shape_1*
T0

$Brain/gradients/Brain/mul_9_grad/mulMul;Brain/gradients/Brain/add_3_grad/tuple/control_dependency_1Brain/Mean_1*
T0
¯
$Brain/gradients/Brain/mul_9_grad/SumSum$Brain/gradients/Brain/mul_9_grad/mul6Brain/gradients/Brain/mul_9_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_9_grad/ReshapeReshape$Brain/gradients/Brain/mul_9_grad/Sum&Brain/gradients/Brain/mul_9_grad/Shape*
T0*
Tshape0

&Brain/gradients/Brain/mul_9_grad/mul_1MulBrain/mul_9/x;Brain/gradients/Brain/add_3_grad/tuple/control_dependency_1*
T0
µ
&Brain/gradients/Brain/mul_9_grad/Sum_1Sum&Brain/gradients/Brain/mul_9_grad/mul_18Brain/gradients/Brain/mul_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_9_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_9_grad/Sum_1(Brain/gradients/Brain/mul_9_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_9_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_9_grad/Reshape+^Brain/gradients/Brain/mul_9_grad/Reshape_1
é
9Brain/gradients/Brain/mul_9_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_9_grad/Reshape2^Brain/gradients/Brain/mul_9_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_9_grad/Reshape
ï
;Brain/gradients/Brain/mul_9_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_9_grad/Reshape_12^Brain/gradients/Brain/mul_9_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_9_grad/Reshape_1
X
/Brain/gradients/Brain/Mean_2_grad/Reshape/shapeConst*
valueB *
dtype0
º
)Brain/gradients/Brain/Mean_2_grad/ReshapeReshape<Brain/gradients/Brain/mul_10_grad/tuple/control_dependency_1/Brain/gradients/Brain/Mean_2_grad/Reshape/shape*
T0*
Tshape0
Y
0Brain/gradients/Brain/Mean_2_grad/Tile/multiplesConst*
valueB *
dtype0
¦
&Brain/gradients/Brain/Mean_2_grad/TileTile)Brain/gradients/Brain/Mean_2_grad/Reshape0Brain/gradients/Brain/Mean_2_grad/Tile/multiples*
T0*

Tmultiples0
P
'Brain/gradients/Brain/Mean_2_grad/ShapeConst*
valueB *
dtype0
R
)Brain/gradients/Brain/Mean_2_grad/Shape_1Const*
valueB *
dtype0

'Brain/gradients/Brain/Mean_2_grad/ConstConst*
valueB: *
dtype0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_2_grad/Shape
â
&Brain/gradients/Brain/Mean_2_grad/ProdProd'Brain/gradients/Brain/Mean_2_grad/Shape'Brain/gradients/Brain/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_2_grad/Shape

)Brain/gradients/Brain/Mean_2_grad/Const_1Const*
valueB: *
dtype0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_2_grad/Shape
è
(Brain/gradients/Brain/Mean_2_grad/Prod_1Prod)Brain/gradients/Brain/Mean_2_grad/Shape_1)Brain/gradients/Brain/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_2_grad/Shape

+Brain/gradients/Brain/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_2_grad/Shape
Ð
)Brain/gradients/Brain/Mean_2_grad/MaximumMaximum(Brain/gradients/Brain/Mean_2_grad/Prod_1+Brain/gradients/Brain/Mean_2_grad/Maximum/y*
T0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_2_grad/Shape
Î
*Brain/gradients/Brain/Mean_2_grad/floordivFloorDiv&Brain/gradients/Brain/Mean_2_grad/Prod)Brain/gradients/Brain/Mean_2_grad/Maximum*
T0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_2_grad/Shape
r
&Brain/gradients/Brain/Mean_2_grad/CastCast*Brain/gradients/Brain/Mean_2_grad/floordiv*

SrcT0*

DstT0

)Brain/gradients/Brain/Mean_2_grad/truedivRealDiv&Brain/gradients/Brain/Mean_2_grad/Tile&Brain/gradients/Brain/Mean_2_grad/Cast*
T0
b
-Brain/gradients/Brain/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0

'Brain/gradients/Brain/Mean_grad/ReshapeReshape"Brain/gradients/Brain/Neg_grad/Neg-Brain/gradients/Brain/Mean_grad/Reshape/shape*
T0*
Tshape0
V
%Brain/gradients/Brain/Mean_grad/ShapeShapeBrain/Minimum*
T0*
out_type0

$Brain/gradients/Brain/Mean_grad/TileTile'Brain/gradients/Brain/Mean_grad/Reshape%Brain/gradients/Brain/Mean_grad/Shape*
T0*

Tmultiples0
X
'Brain/gradients/Brain/Mean_grad/Shape_1ShapeBrain/Minimum*
T0*
out_type0
P
'Brain/gradients/Brain/Mean_grad/Shape_2Const*
valueB *
dtype0

%Brain/gradients/Brain/Mean_grad/ConstConst*
valueB: *
dtype0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_grad/Shape_1
Þ
$Brain/gradients/Brain/Mean_grad/ProdProd'Brain/gradients/Brain/Mean_grad/Shape_1%Brain/gradients/Brain/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_grad/Shape_1

'Brain/gradients/Brain/Mean_grad/Const_1Const*
valueB: *
dtype0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_grad/Shape_1
â
&Brain/gradients/Brain/Mean_grad/Prod_1Prod'Brain/gradients/Brain/Mean_grad/Shape_2'Brain/gradients/Brain/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_grad/Shape_1

)Brain/gradients/Brain/Mean_grad/Maximum/yConst*
value	B :*
dtype0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_grad/Shape_1
Ê
'Brain/gradients/Brain/Mean_grad/MaximumMaximum&Brain/gradients/Brain/Mean_grad/Prod_1)Brain/gradients/Brain/Mean_grad/Maximum/y*
T0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_grad/Shape_1
È
(Brain/gradients/Brain/Mean_grad/floordivFloorDiv$Brain/gradients/Brain/Mean_grad/Prod'Brain/gradients/Brain/Mean_grad/Maximum*
T0*:
_class0
.,loc:@Brain/gradients/Brain/Mean_grad/Shape_1
n
$Brain/gradients/Brain/Mean_grad/CastCast(Brain/gradients/Brain/Mean_grad/floordiv*

SrcT0*

DstT0

'Brain/gradients/Brain/Mean_grad/truedivRealDiv$Brain/gradients/Brain/Mean_grad/Tile$Brain/gradients/Brain/Mean_grad/Cast*
T0
]
/Brain/gradients/Brain/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0
¹
)Brain/gradients/Brain/Mean_1_grad/ReshapeReshape;Brain/gradients/Brain/mul_9_grad/tuple/control_dependency_1/Brain/gradients/Brain/Mean_1_grad/Reshape/shape*
T0*
Tshape0
b
'Brain/gradients/Brain/Mean_1_grad/ShapeShapeBrain/SquaredDifference*
T0*
out_type0

&Brain/gradients/Brain/Mean_1_grad/TileTile)Brain/gradients/Brain/Mean_1_grad/Reshape'Brain/gradients/Brain/Mean_1_grad/Shape*
T0*

Tmultiples0
d
)Brain/gradients/Brain/Mean_1_grad/Shape_1ShapeBrain/SquaredDifference*
T0*
out_type0
R
)Brain/gradients/Brain/Mean_1_grad/Shape_2Const*
valueB *
dtype0

'Brain/gradients/Brain/Mean_1_grad/ConstConst*
valueB: *
dtype0*<
_class2
0.loc:@Brain/gradients/Brain/Mean_1_grad/Shape_1
æ
&Brain/gradients/Brain/Mean_1_grad/ProdProd)Brain/gradients/Brain/Mean_1_grad/Shape_1'Brain/gradients/Brain/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0*<
_class2
0.loc:@Brain/gradients/Brain/Mean_1_grad/Shape_1

)Brain/gradients/Brain/Mean_1_grad/Const_1Const*
valueB: *
dtype0*<
_class2
0.loc:@Brain/gradients/Brain/Mean_1_grad/Shape_1
ê
(Brain/gradients/Brain/Mean_1_grad/Prod_1Prod)Brain/gradients/Brain/Mean_1_grad/Shape_2)Brain/gradients/Brain/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0*<
_class2
0.loc:@Brain/gradients/Brain/Mean_1_grad/Shape_1

+Brain/gradients/Brain/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*<
_class2
0.loc:@Brain/gradients/Brain/Mean_1_grad/Shape_1
Ò
)Brain/gradients/Brain/Mean_1_grad/MaximumMaximum(Brain/gradients/Brain/Mean_1_grad/Prod_1+Brain/gradients/Brain/Mean_1_grad/Maximum/y*
T0*<
_class2
0.loc:@Brain/gradients/Brain/Mean_1_grad/Shape_1
Ð
*Brain/gradients/Brain/Mean_1_grad/floordivFloorDiv&Brain/gradients/Brain/Mean_1_grad/Prod)Brain/gradients/Brain/Mean_1_grad/Maximum*
T0*<
_class2
0.loc:@Brain/gradients/Brain/Mean_1_grad/Shape_1
r
&Brain/gradients/Brain/Mean_1_grad/CastCast*Brain/gradients/Brain/Mean_1_grad/floordiv*

SrcT0*

DstT0

)Brain/gradients/Brain/Mean_1_grad/truedivRealDiv&Brain/gradients/Brain/Mean_1_grad/Tile&Brain/gradients/Brain/Mean_1_grad/Cast*
T0
Z
,Brain/gradients/Brain/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0
¡
&Brain/gradients/Brain/Sum_grad/ReshapeReshape)Brain/gradients/Brain/Mean_2_grad/truediv,Brain/gradients/Brain/Sum_grad/Reshape/shape*
T0*
Tshape0
[
-Brain/gradients/Brain/Sum_grad/Tile/multiplesConst*
valueB:*
dtype0

#Brain/gradients/Brain/Sum_grad/TileTile&Brain/gradients/Brain/Sum_grad/Reshape-Brain/gradients/Brain/Sum_grad/Tile/multiples*
T0*

Tmultiples0
W
(Brain/gradients/Brain/Minimum_grad/ShapeShapeBrain/mul_7*
T0*
out_type0
Y
*Brain/gradients/Brain/Minimum_grad/Shape_1ShapeBrain/mul_8*
T0*
out_type0
u
*Brain/gradients/Brain/Minimum_grad/Shape_2Shape'Brain/gradients/Brain/Mean_grad/truediv*
T0*
out_type0
[
.Brain/gradients/Brain/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

(Brain/gradients/Brain/Minimum_grad/zerosFill*Brain/gradients/Brain/Minimum_grad/Shape_2.Brain/gradients/Brain/Minimum_grad/zeros/Const*
T0
\
,Brain/gradients/Brain/Minimum_grad/LessEqual	LessEqualBrain/mul_7Brain/mul_8*
T0
°
8Brain/gradients/Brain/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs(Brain/gradients/Brain/Minimum_grad/Shape*Brain/gradients/Brain/Minimum_grad/Shape_1*
T0
½
)Brain/gradients/Brain/Minimum_grad/SelectSelect,Brain/gradients/Brain/Minimum_grad/LessEqual'Brain/gradients/Brain/Mean_grad/truediv(Brain/gradients/Brain/Minimum_grad/zeros*
T0
¿
+Brain/gradients/Brain/Minimum_grad/Select_1Select,Brain/gradients/Brain/Minimum_grad/LessEqual(Brain/gradients/Brain/Minimum_grad/zeros'Brain/gradients/Brain/Mean_grad/truediv*
T0
¸
&Brain/gradients/Brain/Minimum_grad/SumSum)Brain/gradients/Brain/Minimum_grad/Select8Brain/gradients/Brain/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/Minimum_grad/ReshapeReshape&Brain/gradients/Brain/Minimum_grad/Sum(Brain/gradients/Brain/Minimum_grad/Shape*
T0*
Tshape0
¾
(Brain/gradients/Brain/Minimum_grad/Sum_1Sum+Brain/gradients/Brain/Minimum_grad/Select_1:Brain/gradients/Brain/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¤
,Brain/gradients/Brain/Minimum_grad/Reshape_1Reshape(Brain/gradients/Brain/Minimum_grad/Sum_1*Brain/gradients/Brain/Minimum_grad/Shape_1*
T0*
Tshape0

3Brain/gradients/Brain/Minimum_grad/tuple/group_depsNoOp+^Brain/gradients/Brain/Minimum_grad/Reshape-^Brain/gradients/Brain/Minimum_grad/Reshape_1
ñ
;Brain/gradients/Brain/Minimum_grad/tuple/control_dependencyIdentity*Brain/gradients/Brain/Minimum_grad/Reshape4^Brain/gradients/Brain/Minimum_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/Minimum_grad/Reshape
÷
=Brain/gradients/Brain/Minimum_grad/tuple/control_dependency_1Identity,Brain/gradients/Brain/Minimum_grad/Reshape_14^Brain/gradients/Brain/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@Brain/gradients/Brain/Minimum_grad/Reshape_1
n
2Brain/gradients/Brain/SquaredDifference_grad/ShapeShapeBrain/discounted_rewards*
T0*
out_type0
c
4Brain/gradients/Brain/SquaredDifference_grad/Shape_1ShapeBrain/Sum_1*
T0*
out_type0
Î
BBrain/gradients/Brain/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs2Brain/gradients/Brain/SquaredDifference_grad/Shape4Brain/gradients/Brain/SquaredDifference_grad/Shape_1*
T0

3Brain/gradients/Brain/SquaredDifference_grad/scalarConst*^Brain/gradients/Brain/Mean_1_grad/truediv*
valueB
 *   @*
dtype0
 
0Brain/gradients/Brain/SquaredDifference_grad/mulMul3Brain/gradients/Brain/SquaredDifference_grad/scalar)Brain/gradients/Brain/Mean_1_grad/truediv*
T0

0Brain/gradients/Brain/SquaredDifference_grad/subSubBrain/discounted_rewardsBrain/Sum_1*^Brain/gradients/Brain/Mean_1_grad/truediv*
T0
¦
2Brain/gradients/Brain/SquaredDifference_grad/mul_1Mul0Brain/gradients/Brain/SquaredDifference_grad/mul0Brain/gradients/Brain/SquaredDifference_grad/sub*
T0
Õ
0Brain/gradients/Brain/SquaredDifference_grad/SumSum2Brain/gradients/Brain/SquaredDifference_grad/mul_1BBrain/gradients/Brain/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4Brain/gradients/Brain/SquaredDifference_grad/ReshapeReshape0Brain/gradients/Brain/SquaredDifference_grad/Sum2Brain/gradients/Brain/SquaredDifference_grad/Shape*
T0*
Tshape0
Ù
2Brain/gradients/Brain/SquaredDifference_grad/Sum_1Sum2Brain/gradients/Brain/SquaredDifference_grad/mul_1DBrain/gradients/Brain/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Â
6Brain/gradients/Brain/SquaredDifference_grad/Reshape_1Reshape2Brain/gradients/Brain/SquaredDifference_grad/Sum_14Brain/gradients/Brain/SquaredDifference_grad/Shape_1*
T0*
Tshape0
x
0Brain/gradients/Brain/SquaredDifference_grad/NegNeg6Brain/gradients/Brain/SquaredDifference_grad/Reshape_1*
T0
¯
=Brain/gradients/Brain/SquaredDifference_grad/tuple/group_depsNoOp5^Brain/gradients/Brain/SquaredDifference_grad/Reshape1^Brain/gradients/Brain/SquaredDifference_grad/Neg

EBrain/gradients/Brain/SquaredDifference_grad/tuple/control_dependencyIdentity4Brain/gradients/Brain/SquaredDifference_grad/Reshape>^Brain/gradients/Brain/SquaredDifference_grad/tuple/group_deps*
T0*G
_class=
;9loc:@Brain/gradients/Brain/SquaredDifference_grad/Reshape

GBrain/gradients/Brain/SquaredDifference_grad/tuple/control_dependency_1Identity0Brain/gradients/Brain/SquaredDifference_grad/Neg>^Brain/gradients/Brain/SquaredDifference_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/SquaredDifference_grad/Neg
O
&Brain/gradients/Brain/mul_6_grad/ShapeConst*
valueB *
dtype0
V
(Brain/gradients/Brain/mul_6_grad/Shape_1Const*
valueB:*
dtype0
ª
6Brain/gradients/Brain/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_6_grad/Shape(Brain/gradients/Brain/mul_6_grad/Shape_1*
T0
d
$Brain/gradients/Brain/mul_6_grad/mulMul#Brain/gradients/Brain/Sum_grad/Tile	Brain/Log*
T0
¯
$Brain/gradients/Brain/mul_6_grad/SumSum$Brain/gradients/Brain/mul_6_grad/mul6Brain/gradients/Brain/mul_6_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_6_grad/ReshapeReshape$Brain/gradients/Brain/mul_6_grad/Sum&Brain/gradients/Brain/mul_6_grad/Shape*
T0*
Tshape0
j
&Brain/gradients/Brain/mul_6_grad/mul_1MulBrain/mul_6/x#Brain/gradients/Brain/Sum_grad/Tile*
T0
µ
&Brain/gradients/Brain/mul_6_grad/Sum_1Sum&Brain/gradients/Brain/mul_6_grad/mul_18Brain/gradients/Brain/mul_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_6_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_6_grad/Sum_1(Brain/gradients/Brain/mul_6_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_6_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_6_grad/Reshape+^Brain/gradients/Brain/mul_6_grad/Reshape_1
é
9Brain/gradients/Brain/mul_6_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_6_grad/Reshape2^Brain/gradients/Brain/mul_6_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_6_grad/Reshape
ï
;Brain/gradients/Brain/mul_6_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_6_grad/Reshape_12^Brain/gradients/Brain/mul_6_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_6_grad/Reshape_1
Y
&Brain/gradients/Brain/mul_7_grad/ShapeShapeBrain/truediv_2*
T0*
out_type0
\
(Brain/gradients/Brain/mul_7_grad/Shape_1ShapeBrain/advantages*
T0*
out_type0
ª
6Brain/gradients/Brain/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_7_grad/Shape(Brain/gradients/Brain/mul_7_grad/Shape_1*
T0

$Brain/gradients/Brain/mul_7_grad/mulMul;Brain/gradients/Brain/Minimum_grad/tuple/control_dependencyBrain/advantages*
T0
¯
$Brain/gradients/Brain/mul_7_grad/SumSum$Brain/gradients/Brain/mul_7_grad/mul6Brain/gradients/Brain/mul_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_7_grad/ReshapeReshape$Brain/gradients/Brain/mul_7_grad/Sum&Brain/gradients/Brain/mul_7_grad/Shape*
T0*
Tshape0

&Brain/gradients/Brain/mul_7_grad/mul_1MulBrain/truediv_2;Brain/gradients/Brain/Minimum_grad/tuple/control_dependency*
T0
µ
&Brain/gradients/Brain/mul_7_grad/Sum_1Sum&Brain/gradients/Brain/mul_7_grad/mul_18Brain/gradients/Brain/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_7_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_7_grad/Sum_1(Brain/gradients/Brain/mul_7_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_7_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_7_grad/Reshape+^Brain/gradients/Brain/mul_7_grad/Reshape_1
é
9Brain/gradients/Brain/mul_7_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_7_grad/Reshape2^Brain/gradients/Brain/mul_7_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_7_grad/Reshape
ï
;Brain/gradients/Brain/mul_7_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_7_grad/Reshape_12^Brain/gradients/Brain/mul_7_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_7_grad/Reshape_1
]
&Brain/gradients/Brain/mul_8_grad/ShapeShapeBrain/clip_by_value*
T0*
out_type0
\
(Brain/gradients/Brain/mul_8_grad/Shape_1ShapeBrain/advantages*
T0*
out_type0
ª
6Brain/gradients/Brain/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_8_grad/Shape(Brain/gradients/Brain/mul_8_grad/Shape_1*
T0

$Brain/gradients/Brain/mul_8_grad/mulMul=Brain/gradients/Brain/Minimum_grad/tuple/control_dependency_1Brain/advantages*
T0
¯
$Brain/gradients/Brain/mul_8_grad/SumSum$Brain/gradients/Brain/mul_8_grad/mul6Brain/gradients/Brain/mul_8_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_8_grad/ReshapeReshape$Brain/gradients/Brain/mul_8_grad/Sum&Brain/gradients/Brain/mul_8_grad/Shape*
T0*
Tshape0

&Brain/gradients/Brain/mul_8_grad/mul_1MulBrain/clip_by_value=Brain/gradients/Brain/Minimum_grad/tuple/control_dependency_1*
T0
µ
&Brain/gradients/Brain/mul_8_grad/Sum_1Sum&Brain/gradients/Brain/mul_8_grad/mul_18Brain/gradients/Brain/mul_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_8_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_8_grad/Sum_1(Brain/gradients/Brain/mul_8_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_8_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_8_grad/Reshape+^Brain/gradients/Brain/mul_8_grad/Reshape_1
é
9Brain/gradients/Brain/mul_8_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_8_grad/Reshape2^Brain/gradients/Brain/mul_8_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_8_grad/Reshape
ï
;Brain/gradients/Brain/mul_8_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_8_grad/Reshape_12^Brain/gradients/Brain/mul_8_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_8_grad/Reshape_1
^
&Brain/gradients/Brain/Sum_1_grad/ShapeShapeBrain/value_estimate*
T0*
out_type0

%Brain/gradients/Brain/Sum_1_grad/SizeConst*
value	B :*
dtype0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape
µ
$Brain/gradients/Brain/Sum_1_grad/addAddBrain/Sum_1/reduction_indices%Brain/gradients/Brain/Sum_1_grad/Size*
T0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape
Á
$Brain/gradients/Brain/Sum_1_grad/modFloorMod$Brain/gradients/Brain/Sum_1_grad/add%Brain/gradients/Brain/Sum_1_grad/Size*
T0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape

(Brain/gradients/Brain/Sum_1_grad/Shape_1Const*
valueB *
dtype0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape

,Brain/gradients/Brain/Sum_1_grad/range/startConst*
value	B : *
dtype0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape

,Brain/gradients/Brain/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape
ù
&Brain/gradients/Brain/Sum_1_grad/rangeRange,Brain/gradients/Brain/Sum_1_grad/range/start%Brain/gradients/Brain/Sum_1_grad/Size,Brain/gradients/Brain/Sum_1_grad/range/delta*

Tidx0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape

+Brain/gradients/Brain/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape
È
%Brain/gradients/Brain/Sum_1_grad/FillFill(Brain/gradients/Brain/Sum_1_grad/Shape_1+Brain/gradients/Brain/Sum_1_grad/Fill/value*
T0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape
©
.Brain/gradients/Brain/Sum_1_grad/DynamicStitchDynamicStitch&Brain/gradients/Brain/Sum_1_grad/range$Brain/gradients/Brain/Sum_1_grad/mod&Brain/gradients/Brain/Sum_1_grad/Shape%Brain/gradients/Brain/Sum_1_grad/Fill*
N*
T0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape

*Brain/gradients/Brain/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape
Ó
(Brain/gradients/Brain/Sum_1_grad/MaximumMaximum.Brain/gradients/Brain/Sum_1_grad/DynamicStitch*Brain/gradients/Brain/Sum_1_grad/Maximum/y*
T0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape
Ë
)Brain/gradients/Brain/Sum_1_grad/floordivFloorDiv&Brain/gradients/Brain/Sum_1_grad/Shape(Brain/gradients/Brain/Sum_1_grad/Maximum*
T0*9
_class/
-+loc:@Brain/gradients/Brain/Sum_1_grad/Shape
Ã
(Brain/gradients/Brain/Sum_1_grad/ReshapeReshapeGBrain/gradients/Brain/SquaredDifference_grad/tuple/control_dependency_1.Brain/gradients/Brain/Sum_1_grad/DynamicStitch*
T0*
Tshape0

%Brain/gradients/Brain/Sum_1_grad/TileTile(Brain/gradients/Brain/Sum_1_grad/Reshape)Brain/gradients/Brain/Sum_1_grad/floordiv*
T0*

Tmultiples0

)Brain/gradients/Brain/Log_grad/Reciprocal
ReciprocalBrain/mul_5<^Brain/gradients/Brain/mul_6_grad/tuple/control_dependency_1*
T0

"Brain/gradients/Brain/Log_grad/mulMul;Brain/gradients/Brain/mul_6_grad/tuple/control_dependency_1)Brain/gradients/Brain/Log_grad/Reciprocal*
T0
m
.Brain/gradients/Brain/clip_by_value_grad/ShapeShapeBrain/clip_by_value/Minimum*
T0*
out_type0
Y
0Brain/gradients/Brain/clip_by_value_grad/Shape_1Const*
valueB *
dtype0

0Brain/gradients/Brain/clip_by_value_grad/Shape_2Shape9Brain/gradients/Brain/mul_8_grad/tuple/control_dependency*
T0*
out_type0
a
4Brain/gradients/Brain/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0
§
.Brain/gradients/Brain/clip_by_value_grad/zerosFill0Brain/gradients/Brain/clip_by_value_grad/Shape_24Brain/gradients/Brain/clip_by_value_grad/zeros/Const*
T0
x
5Brain/gradients/Brain/clip_by_value_grad/GreaterEqualGreaterEqualBrain/clip_by_value/MinimumBrain/sub_1*
T0
Â
>Brain/gradients/Brain/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs.Brain/gradients/Brain/clip_by_value_grad/Shape0Brain/gradients/Brain/clip_by_value_grad/Shape_1*
T0
ä
/Brain/gradients/Brain/clip_by_value_grad/SelectSelect5Brain/gradients/Brain/clip_by_value_grad/GreaterEqual9Brain/gradients/Brain/mul_8_grad/tuple/control_dependency.Brain/gradients/Brain/clip_by_value_grad/zeros*
T0
æ
1Brain/gradients/Brain/clip_by_value_grad/Select_1Select5Brain/gradients/Brain/clip_by_value_grad/GreaterEqual.Brain/gradients/Brain/clip_by_value_grad/zeros9Brain/gradients/Brain/mul_8_grad/tuple/control_dependency*
T0
Ê
,Brain/gradients/Brain/clip_by_value_grad/SumSum/Brain/gradients/Brain/clip_by_value_grad/Select>Brain/gradients/Brain/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0Brain/gradients/Brain/clip_by_value_grad/ReshapeReshape,Brain/gradients/Brain/clip_by_value_grad/Sum.Brain/gradients/Brain/clip_by_value_grad/Shape*
T0*
Tshape0
Ð
.Brain/gradients/Brain/clip_by_value_grad/Sum_1Sum1Brain/gradients/Brain/clip_by_value_grad/Select_1@Brain/gradients/Brain/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2Brain/gradients/Brain/clip_by_value_grad/Reshape_1Reshape.Brain/gradients/Brain/clip_by_value_grad/Sum_10Brain/gradients/Brain/clip_by_value_grad/Shape_1*
T0*
Tshape0
©
9Brain/gradients/Brain/clip_by_value_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/clip_by_value_grad/Reshape3^Brain/gradients/Brain/clip_by_value_grad/Reshape_1

ABrain/gradients/Brain/clip_by_value_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/clip_by_value_grad/Reshape:^Brain/gradients/Brain/clip_by_value_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/clip_by_value_grad/Reshape

CBrain/gradients/Brain/clip_by_value_grad/tuple/control_dependency_1Identity2Brain/gradients/Brain/clip_by_value_grad/Reshape_1:^Brain/gradients/Brain/clip_by_value_grad/tuple/group_deps*
T0*E
_class;
97loc:@Brain/gradients/Brain/clip_by_value_grad/Reshape_1
O
&Brain/gradients/Brain/mul_5_grad/ShapeConst*
valueB *
dtype0
V
(Brain/gradients/Brain/mul_5_grad/Shape_1Const*
valueB:*
dtype0
ª
6Brain/gradients/Brain/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_5_grad/Shape(Brain/gradients/Brain/mul_5_grad/Shape_1*
T0
c
$Brain/gradients/Brain/mul_5_grad/mulMul"Brain/gradients/Brain/Log_grad/mul	Brain/Exp*
T0
¯
$Brain/gradients/Brain/mul_5_grad/SumSum$Brain/gradients/Brain/mul_5_grad/mul6Brain/gradients/Brain/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_5_grad/ReshapeReshape$Brain/gradients/Brain/mul_5_grad/Sum&Brain/gradients/Brain/mul_5_grad/Shape*
T0*
Tshape0
i
&Brain/gradients/Brain/mul_5_grad/mul_1MulBrain/mul_5/x"Brain/gradients/Brain/Log_grad/mul*
T0
µ
&Brain/gradients/Brain/mul_5_grad/Sum_1Sum&Brain/gradients/Brain/mul_5_grad/mul_18Brain/gradients/Brain/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_5_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_5_grad/Sum_1(Brain/gradients/Brain/mul_5_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_5_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_5_grad/Reshape+^Brain/gradients/Brain/mul_5_grad/Reshape_1
é
9Brain/gradients/Brain/mul_5_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_5_grad/Reshape2^Brain/gradients/Brain/mul_5_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_5_grad/Reshape
ï
;Brain/gradients/Brain/mul_5_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_5_grad/Reshape_12^Brain/gradients/Brain/mul_5_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_5_grad/Reshape_1
i
6Brain/gradients/Brain/clip_by_value/Minimum_grad/ShapeShapeBrain/truediv_2*
T0*
out_type0
a
8Brain/gradients/Brain/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

8Brain/gradients/Brain/clip_by_value/Minimum_grad/Shape_2ShapeABrain/gradients/Brain/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
i
<Brain/gradients/Brain/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
¿
6Brain/gradients/Brain/clip_by_value/Minimum_grad/zerosFill8Brain/gradients/Brain/clip_by_value/Minimum_grad/Shape_2<Brain/gradients/Brain/clip_by_value/Minimum_grad/zeros/Const*
T0
n
:Brain/gradients/Brain/clip_by_value/Minimum_grad/LessEqual	LessEqualBrain/truediv_2Brain/add_2*
T0
Ú
FBrain/gradients/Brain/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs6Brain/gradients/Brain/clip_by_value/Minimum_grad/Shape8Brain/gradients/Brain/clip_by_value/Minimum_grad/Shape_1*
T0

7Brain/gradients/Brain/clip_by_value/Minimum_grad/SelectSelect:Brain/gradients/Brain/clip_by_value/Minimum_grad/LessEqualABrain/gradients/Brain/clip_by_value_grad/tuple/control_dependency6Brain/gradients/Brain/clip_by_value/Minimum_grad/zeros*
T0

9Brain/gradients/Brain/clip_by_value/Minimum_grad/Select_1Select:Brain/gradients/Brain/clip_by_value/Minimum_grad/LessEqual6Brain/gradients/Brain/clip_by_value/Minimum_grad/zerosABrain/gradients/Brain/clip_by_value_grad/tuple/control_dependency*
T0
â
4Brain/gradients/Brain/clip_by_value/Minimum_grad/SumSum7Brain/gradients/Brain/clip_by_value/Minimum_grad/SelectFBrain/gradients/Brain/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
È
8Brain/gradients/Brain/clip_by_value/Minimum_grad/ReshapeReshape4Brain/gradients/Brain/clip_by_value/Minimum_grad/Sum6Brain/gradients/Brain/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
è
6Brain/gradients/Brain/clip_by_value/Minimum_grad/Sum_1Sum9Brain/gradients/Brain/clip_by_value/Minimum_grad/Select_1HBrain/gradients/Brain/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Î
:Brain/gradients/Brain/clip_by_value/Minimum_grad/Reshape_1Reshape6Brain/gradients/Brain/clip_by_value/Minimum_grad/Sum_18Brain/gradients/Brain/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0
Á
ABrain/gradients/Brain/clip_by_value/Minimum_grad/tuple/group_depsNoOp9^Brain/gradients/Brain/clip_by_value/Minimum_grad/Reshape;^Brain/gradients/Brain/clip_by_value/Minimum_grad/Reshape_1
©
IBrain/gradients/Brain/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity8Brain/gradients/Brain/clip_by_value/Minimum_grad/ReshapeB^Brain/gradients/Brain/clip_by_value/Minimum_grad/tuple/group_deps*
T0*K
_classA
?=loc:@Brain/gradients/Brain/clip_by_value/Minimum_grad/Reshape
¯
KBrain/gradients/Brain/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity:Brain/gradients/Brain/clip_by_value/Minimum_grad/Reshape_1B^Brain/gradients/Brain/clip_by_value/Minimum_grad/tuple/group_deps*
T0*M
_classC
A?loc:@Brain/gradients/Brain/clip_by_value/Minimum_grad/Reshape_1

6Brain/gradients/Brain/dense_6/BiasAdd_grad/BiasAddGradBiasAddGrad%Brain/gradients/Brain/Sum_1_grad/Tile*
T0*
data_formatNHWC
¤
;Brain/gradients/Brain/dense_6/BiasAdd_grad/tuple/group_depsNoOp&^Brain/gradients/Brain/Sum_1_grad/Tile7^Brain/gradients/Brain/dense_6/BiasAdd_grad/BiasAddGrad
÷
CBrain/gradients/Brain/dense_6/BiasAdd_grad/tuple/control_dependencyIdentity%Brain/gradients/Brain/Sum_1_grad/Tile<^Brain/gradients/Brain/dense_6/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@Brain/gradients/Brain/Sum_1_grad/Tile

EBrain/gradients/Brain/dense_6/BiasAdd_grad/tuple/control_dependency_1Identity6Brain/gradients/Brain/dense_6/BiasAdd_grad/BiasAddGrad<^Brain/gradients/Brain/dense_6/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@Brain/gradients/Brain/dense_6/BiasAdd_grad/BiasAddGrad
ñ
Brain/gradients/AddNAddN9Brain/gradients/Brain/mul_7_grad/tuple/control_dependencyIBrain/gradients/Brain/clip_by_value/Minimum_grad/tuple/control_dependency*
N*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_7_grad/Reshape
`
*Brain/gradients/Brain/truediv_2_grad/ShapeShapeBrain/action_probs*
T0*
out_type0
[
,Brain/gradients/Brain/truediv_2_grad/Shape_1ShapeBrain/add_1*
T0*
out_type0
¶
:Brain/gradients/Brain/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs*Brain/gradients/Brain/truediv_2_grad/Shape,Brain/gradients/Brain/truediv_2_grad/Shape_1*
T0
c
,Brain/gradients/Brain/truediv_2_grad/RealDivRealDivBrain/gradients/AddNBrain/add_1*
T0
¿
(Brain/gradients/Brain/truediv_2_grad/SumSum,Brain/gradients/Brain/truediv_2_grad/RealDiv:Brain/gradients/Brain/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,Brain/gradients/Brain/truediv_2_grad/ReshapeReshape(Brain/gradients/Brain/truediv_2_grad/Sum*Brain/gradients/Brain/truediv_2_grad/Shape*
T0*
Tshape0
L
(Brain/gradients/Brain/truediv_2_grad/NegNegBrain/action_probs*
T0
y
.Brain/gradients/Brain/truediv_2_grad/RealDiv_1RealDiv(Brain/gradients/Brain/truediv_2_grad/NegBrain/add_1*
T0

.Brain/gradients/Brain/truediv_2_grad/RealDiv_2RealDiv.Brain/gradients/Brain/truediv_2_grad/RealDiv_1Brain/add_1*
T0
~
(Brain/gradients/Brain/truediv_2_grad/mulMulBrain/gradients/AddN.Brain/gradients/Brain/truediv_2_grad/RealDiv_2*
T0
¿
*Brain/gradients/Brain/truediv_2_grad/Sum_1Sum(Brain/gradients/Brain/truediv_2_grad/mul<Brain/gradients/Brain/truediv_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
ª
.Brain/gradients/Brain/truediv_2_grad/Reshape_1Reshape*Brain/gradients/Brain/truediv_2_grad/Sum_1,Brain/gradients/Brain/truediv_2_grad/Shape_1*
T0*
Tshape0

5Brain/gradients/Brain/truediv_2_grad/tuple/group_depsNoOp-^Brain/gradients/Brain/truediv_2_grad/Reshape/^Brain/gradients/Brain/truediv_2_grad/Reshape_1
ù
=Brain/gradients/Brain/truediv_2_grad/tuple/control_dependencyIdentity,Brain/gradients/Brain/truediv_2_grad/Reshape6^Brain/gradients/Brain/truediv_2_grad/tuple/group_deps*
T0*?
_class5
31loc:@Brain/gradients/Brain/truediv_2_grad/Reshape
ÿ
?Brain/gradients/Brain/truediv_2_grad/tuple/control_dependency_1Identity.Brain/gradients/Brain/truediv_2_grad/Reshape_16^Brain/gradients/Brain/truediv_2_grad/tuple/group_deps*
T0*A
_class7
53loc:@Brain/gradients/Brain/truediv_2_grad/Reshape_1
É
0Brain/gradients/Brain/dense_6/MatMul_grad/MatMulMatMulCBrain/gradients/Brain/dense_6/BiasAdd_grad/tuple/control_dependencyBrain/dense_5/kernel/read*
transpose_a( *
transpose_b(*
T0
Ä
2Brain/gradients/Brain/dense_6/MatMul_grad/MatMul_1MatMulBrain/dense_4/TanhCBrain/gradients/Brain/dense_6/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
ª
:Brain/gradients/Brain/dense_6/MatMul_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/dense_6/MatMul_grad/MatMul3^Brain/gradients/Brain/dense_6/MatMul_grad/MatMul_1

BBrain/gradients/Brain/dense_6/MatMul_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/dense_6/MatMul_grad/MatMul;^Brain/gradients/Brain/dense_6/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense_6/MatMul_grad/MatMul

DBrain/gradients/Brain/dense_6/MatMul_grad/tuple/control_dependency_1Identity2Brain/gradients/Brain/dense_6/MatMul_grad/MatMul_1;^Brain/gradients/Brain/dense_6/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@Brain/gradients/Brain/dense_6/MatMul_grad/MatMul_1
\
-Brain/gradients/Brain/action_probs_grad/ShapeShapeBrain/Exp_1*
T0*
out_type0
]
/Brain/gradients/Brain/action_probs_grad/Shape_1Const*
valueB:*
dtype0
¿
=Brain/gradients/Brain/action_probs_grad/BroadcastGradientArgsBroadcastGradientArgs-Brain/gradients/Brain/action_probs_grad/Shape/Brain/gradients/Brain/action_probs_grad/Shape_1*
T0

+Brain/gradients/Brain/action_probs_grad/mulMul=Brain/gradients/Brain/truediv_2_grad/tuple/control_dependencyBrain/truediv_1*
T0
Ä
+Brain/gradients/Brain/action_probs_grad/SumSum+Brain/gradients/Brain/action_probs_grad/mul=Brain/gradients/Brain/action_probs_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
­
/Brain/gradients/Brain/action_probs_grad/ReshapeReshape+Brain/gradients/Brain/action_probs_grad/Sum-Brain/gradients/Brain/action_probs_grad/Shape*
T0*
Tshape0

-Brain/gradients/Brain/action_probs_grad/mul_1MulBrain/Exp_1=Brain/gradients/Brain/truediv_2_grad/tuple/control_dependency*
T0
Ê
-Brain/gradients/Brain/action_probs_grad/Sum_1Sum-Brain/gradients/Brain/action_probs_grad/mul_1?Brain/gradients/Brain/action_probs_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
³
1Brain/gradients/Brain/action_probs_grad/Reshape_1Reshape-Brain/gradients/Brain/action_probs_grad/Sum_1/Brain/gradients/Brain/action_probs_grad/Shape_1*
T0*
Tshape0
¦
8Brain/gradients/Brain/action_probs_grad/tuple/group_depsNoOp0^Brain/gradients/Brain/action_probs_grad/Reshape2^Brain/gradients/Brain/action_probs_grad/Reshape_1

@Brain/gradients/Brain/action_probs_grad/tuple/control_dependencyIdentity/Brain/gradients/Brain/action_probs_grad/Reshape9^Brain/gradients/Brain/action_probs_grad/tuple/group_deps*
T0*B
_class8
64loc:@Brain/gradients/Brain/action_probs_grad/Reshape

BBrain/gradients/Brain/action_probs_grad/tuple/control_dependency_1Identity1Brain/gradients/Brain/action_probs_grad/Reshape_19^Brain/gradients/Brain/action_probs_grad/tuple/group_deps*
T0*D
_class:
86loc:@Brain/gradients/Brain/action_probs_grad/Reshape_1

0Brain/gradients/Brain/dense_4/Tanh_grad/TanhGradTanhGradBrain/dense_4/TanhBBrain/gradients/Brain/dense_6/MatMul_grad/tuple/control_dependency*
T0

$Brain/gradients/Brain/Exp_1_grad/mulMul@Brain/gradients/Brain/action_probs_grad/tuple/control_dependencyBrain/Exp_1*
T0
S
*Brain/gradients/Brain/truediv_1_grad/ShapeConst*
valueB *
dtype0
Z
,Brain/gradients/Brain/truediv_1_grad/Shape_1Const*
valueB:*
dtype0
¶
:Brain/gradients/Brain/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs*Brain/gradients/Brain/truediv_1_grad/Shape,Brain/gradients/Brain/truediv_1_grad/Shape_1*
T0

,Brain/gradients/Brain/truediv_1_grad/RealDivRealDivBBrain/gradients/Brain/action_probs_grad/tuple/control_dependency_1Brain/Sqrt_1*
T0
¿
(Brain/gradients/Brain/truediv_1_grad/SumSum,Brain/gradients/Brain/truediv_1_grad/RealDiv:Brain/gradients/Brain/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,Brain/gradients/Brain/truediv_1_grad/ReshapeReshape(Brain/gradients/Brain/truediv_1_grad/Sum*Brain/gradients/Brain/truediv_1_grad/Shape*
T0*
Tshape0
K
(Brain/gradients/Brain/truediv_1_grad/NegNegBrain/truediv_1/x*
T0
z
.Brain/gradients/Brain/truediv_1_grad/RealDiv_1RealDiv(Brain/gradients/Brain/truediv_1_grad/NegBrain/Sqrt_1*
T0

.Brain/gradients/Brain/truediv_1_grad/RealDiv_2RealDiv.Brain/gradients/Brain/truediv_1_grad/RealDiv_1Brain/Sqrt_1*
T0
¬
(Brain/gradients/Brain/truediv_1_grad/mulMulBBrain/gradients/Brain/action_probs_grad/tuple/control_dependency_1.Brain/gradients/Brain/truediv_1_grad/RealDiv_2*
T0
¿
*Brain/gradients/Brain/truediv_1_grad/Sum_1Sum(Brain/gradients/Brain/truediv_1_grad/mul<Brain/gradients/Brain/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
ª
.Brain/gradients/Brain/truediv_1_grad/Reshape_1Reshape*Brain/gradients/Brain/truediv_1_grad/Sum_1,Brain/gradients/Brain/truediv_1_grad/Shape_1*
T0*
Tshape0

5Brain/gradients/Brain/truediv_1_grad/tuple/group_depsNoOp-^Brain/gradients/Brain/truediv_1_grad/Reshape/^Brain/gradients/Brain/truediv_1_grad/Reshape_1
ù
=Brain/gradients/Brain/truediv_1_grad/tuple/control_dependencyIdentity,Brain/gradients/Brain/truediv_1_grad/Reshape6^Brain/gradients/Brain/truediv_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@Brain/gradients/Brain/truediv_1_grad/Reshape
ÿ
?Brain/gradients/Brain/truediv_1_grad/tuple/control_dependency_1Identity.Brain/gradients/Brain/truediv_1_grad/Reshape_16^Brain/gradients/Brain/truediv_1_grad/tuple/group_deps*
T0*A
_class7
53loc:@Brain/gradients/Brain/truediv_1_grad/Reshape_1

6Brain/gradients/Brain/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad0Brain/gradients/Brain/dense_4/Tanh_grad/TanhGrad*
T0*
data_formatNHWC
¯
;Brain/gradients/Brain/dense_4/BiasAdd_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/dense_4/Tanh_grad/TanhGrad7^Brain/gradients/Brain/dense_4/BiasAdd_grad/BiasAddGrad

CBrain/gradients/Brain/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/dense_4/Tanh_grad/TanhGrad<^Brain/gradients/Brain/dense_4/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense_4/Tanh_grad/TanhGrad

EBrain/gradients/Brain/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity6Brain/gradients/Brain/dense_4/BiasAdd_grad/BiasAddGrad<^Brain/gradients/Brain/dense_4/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@Brain/gradients/Brain/dense_4/BiasAdd_grad/BiasAddGrad
W
(Brain/gradients/Brain/truediv_grad/ShapeShapeBrain/mul_1*
T0*
out_type0
X
*Brain/gradients/Brain/truediv_grad/Shape_1Const*
valueB:*
dtype0
°
8Brain/gradients/Brain/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs(Brain/gradients/Brain/truediv_grad/Shape*Brain/gradients/Brain/truediv_grad/Shape_1*
T0
q
*Brain/gradients/Brain/truediv_grad/RealDivRealDiv$Brain/gradients/Brain/Exp_1_grad/mulBrain/mul_2*
T0
¹
&Brain/gradients/Brain/truediv_grad/SumSum*Brain/gradients/Brain/truediv_grad/RealDiv8Brain/gradients/Brain/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/truediv_grad/ReshapeReshape&Brain/gradients/Brain/truediv_grad/Sum(Brain/gradients/Brain/truediv_grad/Shape*
T0*
Tshape0
C
&Brain/gradients/Brain/truediv_grad/NegNegBrain/mul_1*
T0
u
,Brain/gradients/Brain/truediv_grad/RealDiv_1RealDiv&Brain/gradients/Brain/truediv_grad/NegBrain/mul_2*
T0
{
,Brain/gradients/Brain/truediv_grad/RealDiv_2RealDiv,Brain/gradients/Brain/truediv_grad/RealDiv_1Brain/mul_2*
T0

&Brain/gradients/Brain/truediv_grad/mulMul$Brain/gradients/Brain/Exp_1_grad/mul,Brain/gradients/Brain/truediv_grad/RealDiv_2*
T0
¹
(Brain/gradients/Brain/truediv_grad/Sum_1Sum&Brain/gradients/Brain/truediv_grad/mul:Brain/gradients/Brain/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¤
,Brain/gradients/Brain/truediv_grad/Reshape_1Reshape(Brain/gradients/Brain/truediv_grad/Sum_1*Brain/gradients/Brain/truediv_grad/Shape_1*
T0*
Tshape0

3Brain/gradients/Brain/truediv_grad/tuple/group_depsNoOp+^Brain/gradients/Brain/truediv_grad/Reshape-^Brain/gradients/Brain/truediv_grad/Reshape_1
ñ
;Brain/gradients/Brain/truediv_grad/tuple/control_dependencyIdentity*Brain/gradients/Brain/truediv_grad/Reshape4^Brain/gradients/Brain/truediv_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/truediv_grad/Reshape
÷
=Brain/gradients/Brain/truediv_grad/tuple/control_dependency_1Identity,Brain/gradients/Brain/truediv_grad/Reshape_14^Brain/gradients/Brain/truediv_grad/tuple/group_deps*
T0*?
_class5
31loc:@Brain/gradients/Brain/truediv_grad/Reshape_1

*Brain/gradients/Brain/Sqrt_1_grad/SqrtGradSqrtGradBrain/Sqrt_1?Brain/gradients/Brain/truediv_1_grad/tuple/control_dependency_1*
T0
É
0Brain/gradients/Brain/dense_4/MatMul_grad/MatMulMatMulCBrain/gradients/Brain/dense_4/BiasAdd_grad/tuple/control_dependencyBrain/dense_3/kernel/read*
transpose_a( *
transpose_b(*
T0
Ä
2Brain/gradients/Brain/dense_4/MatMul_grad/MatMul_1MatMulBrain/dense_3/TanhCBrain/gradients/Brain/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
ª
:Brain/gradients/Brain/dense_4/MatMul_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/dense_4/MatMul_grad/MatMul3^Brain/gradients/Brain/dense_4/MatMul_grad/MatMul_1

BBrain/gradients/Brain/dense_4/MatMul_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/dense_4/MatMul_grad/MatMul;^Brain/gradients/Brain/dense_4/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense_4/MatMul_grad/MatMul

DBrain/gradients/Brain/dense_4/MatMul_grad/tuple/control_dependency_1Identity2Brain/gradients/Brain/dense_4/MatMul_grad/MatMul_1;^Brain/gradients/Brain/dense_4/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@Brain/gradients/Brain/dense_4/MatMul_grad/MatMul_1
O
&Brain/gradients/Brain/mul_1_grad/ShapeConst*
valueB *
dtype0
U
(Brain/gradients/Brain/mul_1_grad/Shape_1Shape	Brain/Pow*
T0*
out_type0
ª
6Brain/gradients/Brain/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_1_grad/Shape(Brain/gradients/Brain/mul_1_grad/Shape_1*
T0
|
$Brain/gradients/Brain/mul_1_grad/mulMul;Brain/gradients/Brain/truediv_grad/tuple/control_dependency	Brain/Pow*
T0
¯
$Brain/gradients/Brain/mul_1_grad/SumSum$Brain/gradients/Brain/mul_1_grad/mul6Brain/gradients/Brain/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_1_grad/ReshapeReshape$Brain/gradients/Brain/mul_1_grad/Sum&Brain/gradients/Brain/mul_1_grad/Shape*
T0*
Tshape0

&Brain/gradients/Brain/mul_1_grad/mul_1MulBrain/mul_1/x;Brain/gradients/Brain/truediv_grad/tuple/control_dependency*
T0
µ
&Brain/gradients/Brain/mul_1_grad/Sum_1Sum&Brain/gradients/Brain/mul_1_grad/mul_18Brain/gradients/Brain/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_1_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_1_grad/Sum_1(Brain/gradients/Brain/mul_1_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_1_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_1_grad/Reshape+^Brain/gradients/Brain/mul_1_grad/Reshape_1
é
9Brain/gradients/Brain/mul_1_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_1_grad/Reshape2^Brain/gradients/Brain/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_1_grad/Reshape
ï
;Brain/gradients/Brain/mul_1_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_1_grad/Reshape_12^Brain/gradients/Brain/mul_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_1_grad/Reshape_1
O
&Brain/gradients/Brain/mul_2_grad/ShapeConst*
valueB *
dtype0
V
(Brain/gradients/Brain/mul_2_grad/Shape_1Const*
valueB:*
dtype0
ª
6Brain/gradients/Brain/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_2_grad/Shape(Brain/gradients/Brain/mul_2_grad/Shape_1*
T0
~
$Brain/gradients/Brain/mul_2_grad/mulMul=Brain/gradients/Brain/truediv_grad/tuple/control_dependency_1	Brain/Exp*
T0
¯
$Brain/gradients/Brain/mul_2_grad/SumSum$Brain/gradients/Brain/mul_2_grad/mul6Brain/gradients/Brain/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_2_grad/ReshapeReshape$Brain/gradients/Brain/mul_2_grad/Sum&Brain/gradients/Brain/mul_2_grad/Shape*
T0*
Tshape0

&Brain/gradients/Brain/mul_2_grad/mul_1MulBrain/mul_2/x=Brain/gradients/Brain/truediv_grad/tuple/control_dependency_1*
T0
µ
&Brain/gradients/Brain/mul_2_grad/Sum_1Sum&Brain/gradients/Brain/mul_2_grad/mul_18Brain/gradients/Brain/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_2_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_2_grad/Sum_1(Brain/gradients/Brain/mul_2_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_2_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_2_grad/Reshape+^Brain/gradients/Brain/mul_2_grad/Reshape_1
é
9Brain/gradients/Brain/mul_2_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_2_grad/Reshape2^Brain/gradients/Brain/mul_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_2_grad/Reshape
ï
;Brain/gradients/Brain/mul_2_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_2_grad/Reshape_12^Brain/gradients/Brain/mul_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_2_grad/Reshape_1
T
&Brain/gradients/Brain/mul_4_grad/ShapeConst*
valueB:*
dtype0
Q
(Brain/gradients/Brain/mul_4_grad/Shape_1Const*
valueB *
dtype0
ª
6Brain/gradients/Brain/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_4_grad/Shape(Brain/gradients/Brain/mul_4_grad/Shape_1*
T0
o
$Brain/gradients/Brain/mul_4_grad/mulMul*Brain/gradients/Brain/Sqrt_1_grad/SqrtGradBrain/mul_4/y*
T0
¯
$Brain/gradients/Brain/mul_4_grad/SumSum$Brain/gradients/Brain/mul_4_grad/mul6Brain/gradients/Brain/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_4_grad/ReshapeReshape$Brain/gradients/Brain/mul_4_grad/Sum&Brain/gradients/Brain/mul_4_grad/Shape*
T0*
Tshape0
o
&Brain/gradients/Brain/mul_4_grad/mul_1MulBrain/mul_3*Brain/gradients/Brain/Sqrt_1_grad/SqrtGrad*
T0
µ
&Brain/gradients/Brain/mul_4_grad/Sum_1Sum&Brain/gradients/Brain/mul_4_grad/mul_18Brain/gradients/Brain/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_4_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_4_grad/Sum_1(Brain/gradients/Brain/mul_4_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_4_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_4_grad/Reshape+^Brain/gradients/Brain/mul_4_grad/Reshape_1
é
9Brain/gradients/Brain/mul_4_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_4_grad/Reshape2^Brain/gradients/Brain/mul_4_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_4_grad/Reshape
ï
;Brain/gradients/Brain/mul_4_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_4_grad/Reshape_12^Brain/gradients/Brain/mul_4_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_4_grad/Reshape_1

0Brain/gradients/Brain/dense_3/Tanh_grad/TanhGradTanhGradBrain/dense_3/TanhBBrain/gradients/Brain/dense_4/MatMul_grad/tuple/control_dependency*
T0
Q
$Brain/gradients/Brain/Pow_grad/ShapeShape	Brain/sub*
T0*
out_type0
O
&Brain/gradients/Brain/Pow_grad/Shape_1Const*
valueB *
dtype0
¤
4Brain/gradients/Brain/Pow_grad/BroadcastGradientArgsBroadcastGradientArgs$Brain/gradients/Brain/Pow_grad/Shape&Brain/gradients/Brain/Pow_grad/Shape_1*
T0
|
"Brain/gradients/Brain/Pow_grad/mulMul;Brain/gradients/Brain/mul_1_grad/tuple/control_dependency_1Brain/Pow/y*
T0
Q
$Brain/gradients/Brain/Pow_grad/sub/yConst*
valueB
 *  ?*
dtype0
e
"Brain/gradients/Brain/Pow_grad/subSubBrain/Pow/y$Brain/gradients/Brain/Pow_grad/sub/y*
T0
a
"Brain/gradients/Brain/Pow_grad/PowPow	Brain/sub"Brain/gradients/Brain/Pow_grad/sub*
T0
|
$Brain/gradients/Brain/Pow_grad/mul_1Mul"Brain/gradients/Brain/Pow_grad/mul"Brain/gradients/Brain/Pow_grad/Pow*
T0
«
"Brain/gradients/Brain/Pow_grad/SumSum$Brain/gradients/Brain/Pow_grad/mul_14Brain/gradients/Brain/Pow_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

&Brain/gradients/Brain/Pow_grad/ReshapeReshape"Brain/gradients/Brain/Pow_grad/Sum$Brain/gradients/Brain/Pow_grad/Shape*
T0*
Tshape0
U
(Brain/gradients/Brain/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0
o
&Brain/gradients/Brain/Pow_grad/GreaterGreater	Brain/sub(Brain/gradients/Brain/Pow_grad/Greater/y*
T0
=
"Brain/gradients/Brain/Pow_grad/LogLog	Brain/sub*
T0
J
)Brain/gradients/Brain/Pow_grad/zeros_like	ZerosLike	Brain/sub*
T0
¯
%Brain/gradients/Brain/Pow_grad/SelectSelect&Brain/gradients/Brain/Pow_grad/Greater"Brain/gradients/Brain/Pow_grad/Log)Brain/gradients/Brain/Pow_grad/zeros_like*
T0
|
$Brain/gradients/Brain/Pow_grad/mul_2Mul;Brain/gradients/Brain/mul_1_grad/tuple/control_dependency_1	Brain/Pow*
T0

$Brain/gradients/Brain/Pow_grad/mul_3Mul$Brain/gradients/Brain/Pow_grad/mul_2%Brain/gradients/Brain/Pow_grad/Select*
T0
¯
$Brain/gradients/Brain/Pow_grad/Sum_1Sum$Brain/gradients/Brain/Pow_grad/mul_36Brain/gradients/Brain/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/Pow_grad/Reshape_1Reshape$Brain/gradients/Brain/Pow_grad/Sum_1&Brain/gradients/Brain/Pow_grad/Shape_1*
T0*
Tshape0

/Brain/gradients/Brain/Pow_grad/tuple/group_depsNoOp'^Brain/gradients/Brain/Pow_grad/Reshape)^Brain/gradients/Brain/Pow_grad/Reshape_1
á
7Brain/gradients/Brain/Pow_grad/tuple/control_dependencyIdentity&Brain/gradients/Brain/Pow_grad/Reshape0^Brain/gradients/Brain/Pow_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Brain/gradients/Brain/Pow_grad/Reshape
ç
9Brain/gradients/Brain/Pow_grad/tuple/control_dependency_1Identity(Brain/gradients/Brain/Pow_grad/Reshape_10^Brain/gradients/Brain/Pow_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/Pow_grad/Reshape_1
O
&Brain/gradients/Brain/mul_3_grad/ShapeConst*
valueB *
dtype0
V
(Brain/gradients/Brain/mul_3_grad/Shape_1Const*
valueB:*
dtype0
ª
6Brain/gradients/Brain/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs&Brain/gradients/Brain/mul_3_grad/Shape(Brain/gradients/Brain/mul_3_grad/Shape_1*
T0
z
$Brain/gradients/Brain/mul_3_grad/mulMul9Brain/gradients/Brain/mul_4_grad/tuple/control_dependency	Brain/Exp*
T0
¯
$Brain/gradients/Brain/mul_3_grad/SumSum$Brain/gradients/Brain/mul_3_grad/mul6Brain/gradients/Brain/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(Brain/gradients/Brain/mul_3_grad/ReshapeReshape$Brain/gradients/Brain/mul_3_grad/Sum&Brain/gradients/Brain/mul_3_grad/Shape*
T0*
Tshape0

&Brain/gradients/Brain/mul_3_grad/mul_1MulBrain/mul_3/x9Brain/gradients/Brain/mul_4_grad/tuple/control_dependency*
T0
µ
&Brain/gradients/Brain/mul_3_grad/Sum_1Sum&Brain/gradients/Brain/mul_3_grad/mul_18Brain/gradients/Brain/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*Brain/gradients/Brain/mul_3_grad/Reshape_1Reshape&Brain/gradients/Brain/mul_3_grad/Sum_1(Brain/gradients/Brain/mul_3_grad/Shape_1*
T0*
Tshape0

1Brain/gradients/Brain/mul_3_grad/tuple/group_depsNoOp)^Brain/gradients/Brain/mul_3_grad/Reshape+^Brain/gradients/Brain/mul_3_grad/Reshape_1
é
9Brain/gradients/Brain/mul_3_grad/tuple/control_dependencyIdentity(Brain/gradients/Brain/mul_3_grad/Reshape2^Brain/gradients/Brain/mul_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/mul_3_grad/Reshape
ï
;Brain/gradients/Brain/mul_3_grad/tuple/control_dependency_1Identity*Brain/gradients/Brain/mul_3_grad/Reshape_12^Brain/gradients/Brain/mul_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_3_grad/Reshape_1

6Brain/gradients/Brain/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad0Brain/gradients/Brain/dense_3/Tanh_grad/TanhGrad*
T0*
data_formatNHWC
¯
;Brain/gradients/Brain/dense_3/BiasAdd_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/dense_3/Tanh_grad/TanhGrad7^Brain/gradients/Brain/dense_3/BiasAdd_grad/BiasAddGrad

CBrain/gradients/Brain/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/dense_3/Tanh_grad/TanhGrad<^Brain/gradients/Brain/dense_3/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense_3/Tanh_grad/TanhGrad

EBrain/gradients/Brain/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity6Brain/gradients/Brain/dense_3/BiasAdd_grad/BiasAddGrad<^Brain/gradients/Brain/dense_3/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@Brain/gradients/Brain/dense_3/BiasAdd_grad/BiasAddGrad
Z
$Brain/gradients/Brain/sub_grad/ShapeShapeBrain/StopGradient*
T0*
out_type0
^
&Brain/gradients/Brain/sub_grad/Shape_1ShapeBrain/dense_5/MatMul*
T0*
out_type0
¤
4Brain/gradients/Brain/sub_grad/BroadcastGradientArgsBroadcastGradientArgs$Brain/gradients/Brain/sub_grad/Shape&Brain/gradients/Brain/sub_grad/Shape_1*
T0
¾
"Brain/gradients/Brain/sub_grad/SumSum7Brain/gradients/Brain/Pow_grad/tuple/control_dependency4Brain/gradients/Brain/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

&Brain/gradients/Brain/sub_grad/ReshapeReshape"Brain/gradients/Brain/sub_grad/Sum$Brain/gradients/Brain/sub_grad/Shape*
T0*
Tshape0
Â
$Brain/gradients/Brain/sub_grad/Sum_1Sum7Brain/gradients/Brain/Pow_grad/tuple/control_dependency6Brain/gradients/Brain/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
X
"Brain/gradients/Brain/sub_grad/NegNeg$Brain/gradients/Brain/sub_grad/Sum_1*
T0

(Brain/gradients/Brain/sub_grad/Reshape_1Reshape"Brain/gradients/Brain/sub_grad/Neg&Brain/gradients/Brain/sub_grad/Shape_1*
T0*
Tshape0

/Brain/gradients/Brain/sub_grad/tuple/group_depsNoOp'^Brain/gradients/Brain/sub_grad/Reshape)^Brain/gradients/Brain/sub_grad/Reshape_1
á
7Brain/gradients/Brain/sub_grad/tuple/control_dependencyIdentity&Brain/gradients/Brain/sub_grad/Reshape0^Brain/gradients/Brain/sub_grad/tuple/group_deps*
T0*9
_class/
-+loc:@Brain/gradients/Brain/sub_grad/Reshape
ç
9Brain/gradients/Brain/sub_grad/tuple/control_dependency_1Identity(Brain/gradients/Brain/sub_grad/Reshape_10^Brain/gradients/Brain/sub_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Brain/gradients/Brain/sub_grad/Reshape_1
É
0Brain/gradients/Brain/dense_3/MatMul_grad/MatMulMatMulCBrain/gradients/Brain/dense_3/BiasAdd_grad/tuple/control_dependencyBrain/dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0
½
2Brain/gradients/Brain/dense_3/MatMul_grad/MatMul_1MatMulBrain/stateCBrain/gradients/Brain/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
ª
:Brain/gradients/Brain/dense_3/MatMul_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/dense_3/MatMul_grad/MatMul3^Brain/gradients/Brain/dense_3/MatMul_grad/MatMul_1

BBrain/gradients/Brain/dense_3/MatMul_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/dense_3/MatMul_grad/MatMul;^Brain/gradients/Brain/dense_3/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense_3/MatMul_grad/MatMul

DBrain/gradients/Brain/dense_3/MatMul_grad/tuple/control_dependency_1Identity2Brain/gradients/Brain/dense_3/MatMul_grad/MatMul_1;^Brain/gradients/Brain/dense_3/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@Brain/gradients/Brain/dense_3/MatMul_grad/MatMul_1
¿
0Brain/gradients/Brain/dense_5/MatMul_grad/MatMulMatMul9Brain/gradients/Brain/sub_grad/tuple/control_dependency_1Brain/dense_4/kernel/read*
transpose_a( *
transpose_b(*
T0
º
2Brain/gradients/Brain/dense_5/MatMul_grad/MatMul_1MatMulBrain/dense_2/Tanh9Brain/gradients/Brain/sub_grad/tuple/control_dependency_1*
transpose_a(*
transpose_b( *
T0
ª
:Brain/gradients/Brain/dense_5/MatMul_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/dense_5/MatMul_grad/MatMul3^Brain/gradients/Brain/dense_5/MatMul_grad/MatMul_1

BBrain/gradients/Brain/dense_5/MatMul_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/dense_5/MatMul_grad/MatMul;^Brain/gradients/Brain/dense_5/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense_5/MatMul_grad/MatMul

DBrain/gradients/Brain/dense_5/MatMul_grad/tuple/control_dependency_1Identity2Brain/gradients/Brain/dense_5/MatMul_grad/MatMul_1;^Brain/gradients/Brain/dense_5/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@Brain/gradients/Brain/dense_5/MatMul_grad/MatMul_1

0Brain/gradients/Brain/dense_2/Tanh_grad/TanhGradTanhGradBrain/dense_2/TanhBBrain/gradients/Brain/dense_5/MatMul_grad/tuple/control_dependency*
T0

6Brain/gradients/Brain/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad0Brain/gradients/Brain/dense_2/Tanh_grad/TanhGrad*
T0*
data_formatNHWC
¯
;Brain/gradients/Brain/dense_2/BiasAdd_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/dense_2/Tanh_grad/TanhGrad7^Brain/gradients/Brain/dense_2/BiasAdd_grad/BiasAddGrad

CBrain/gradients/Brain/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/dense_2/Tanh_grad/TanhGrad<^Brain/gradients/Brain/dense_2/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense_2/Tanh_grad/TanhGrad

EBrain/gradients/Brain/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity6Brain/gradients/Brain/dense_2/BiasAdd_grad/BiasAddGrad<^Brain/gradients/Brain/dense_2/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@Brain/gradients/Brain/dense_2/BiasAdd_grad/BiasAddGrad
¦
Brain/gradients/AddN_1AddN;Brain/gradients/Brain/mul_5_grad/tuple/control_dependency_1;Brain/gradients/Brain/mul_2_grad/tuple/control_dependency_1;Brain/gradients/Brain/mul_3_grad/tuple/control_dependency_1*
N*
T0*=
_class3
1/loc:@Brain/gradients/Brain/mul_5_grad/Reshape_1
U
"Brain/gradients/Brain/Exp_grad/mulMulBrain/gradients/AddN_1	Brain/Exp*
T0
É
0Brain/gradients/Brain/dense_2/MatMul_grad/MatMulMatMulCBrain/gradients/Brain/dense_2/BiasAdd_grad/tuple/control_dependencyBrain/dense_1/kernel/read*
transpose_a( *
transpose_b(*
T0
Â
2Brain/gradients/Brain/dense_2/MatMul_grad/MatMul_1MatMulBrain/dense/TanhCBrain/gradients/Brain/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
ª
:Brain/gradients/Brain/dense_2/MatMul_grad/tuple/group_depsNoOp1^Brain/gradients/Brain/dense_2/MatMul_grad/MatMul3^Brain/gradients/Brain/dense_2/MatMul_grad/MatMul_1

BBrain/gradients/Brain/dense_2/MatMul_grad/tuple/control_dependencyIdentity0Brain/gradients/Brain/dense_2/MatMul_grad/MatMul;^Brain/gradients/Brain/dense_2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense_2/MatMul_grad/MatMul

DBrain/gradients/Brain/dense_2/MatMul_grad/tuple/control_dependency_1Identity2Brain/gradients/Brain/dense_2/MatMul_grad/MatMul_1;^Brain/gradients/Brain/dense_2/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@Brain/gradients/Brain/dense_2/MatMul_grad/MatMul_1

.Brain/gradients/Brain/dense/Tanh_grad/TanhGradTanhGradBrain/dense/TanhBBrain/gradients/Brain/dense_2/MatMul_grad/tuple/control_dependency*
T0

4Brain/gradients/Brain/dense/BiasAdd_grad/BiasAddGradBiasAddGrad.Brain/gradients/Brain/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC
©
9Brain/gradients/Brain/dense/BiasAdd_grad/tuple/group_depsNoOp/^Brain/gradients/Brain/dense/Tanh_grad/TanhGrad5^Brain/gradients/Brain/dense/BiasAdd_grad/BiasAddGrad

ABrain/gradients/Brain/dense/BiasAdd_grad/tuple/control_dependencyIdentity.Brain/gradients/Brain/dense/Tanh_grad/TanhGrad:^Brain/gradients/Brain/dense/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@Brain/gradients/Brain/dense/Tanh_grad/TanhGrad

CBrain/gradients/Brain/dense/BiasAdd_grad/tuple/control_dependency_1Identity4Brain/gradients/Brain/dense/BiasAdd_grad/BiasAddGrad:^Brain/gradients/Brain/dense/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@Brain/gradients/Brain/dense/BiasAdd_grad/BiasAddGrad
Ã
.Brain/gradients/Brain/dense/MatMul_grad/MatMulMatMulABrain/gradients/Brain/dense/BiasAdd_grad/tuple/control_dependencyBrain/dense/kernel/read*
transpose_a( *
transpose_b(*
T0
¹
0Brain/gradients/Brain/dense/MatMul_grad/MatMul_1MatMulBrain/stateABrain/gradients/Brain/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
¤
8Brain/gradients/Brain/dense/MatMul_grad/tuple/group_depsNoOp/^Brain/gradients/Brain/dense/MatMul_grad/MatMul1^Brain/gradients/Brain/dense/MatMul_grad/MatMul_1

@Brain/gradients/Brain/dense/MatMul_grad/tuple/control_dependencyIdentity.Brain/gradients/Brain/dense/MatMul_grad/MatMul9^Brain/gradients/Brain/dense/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@Brain/gradients/Brain/dense/MatMul_grad/MatMul

BBrain/gradients/Brain/dense/MatMul_grad/tuple/control_dependency_1Identity0Brain/gradients/Brain/dense/MatMul_grad/MatMul_19^Brain/gradients/Brain/dense/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Brain/gradients/Brain/dense/MatMul_grad/MatMul_1
q
Brain/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*#
_class
loc:@Brain/dense/bias

Brain/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *#
_class
loc:@Brain/dense/bias
­
Brain/beta1_power/AssignAssignBrain/beta1_powerBrain/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
c
Brain/beta1_power/readIdentityBrain/beta1_power*
T0*#
_class
loc:@Brain/dense/bias
q
Brain/beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*#
_class
loc:@Brain/dense/bias

Brain/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *#
_class
loc:@Brain/dense/bias
­
Brain/beta2_power/AssignAssignBrain/beta2_powerBrain/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
c
Brain/beta2_power/readIdentityBrain/beta2_power*
T0*#
_class
loc:@Brain/dense/bias

/Brain/Brain/dense/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense/kernel

Brain/Brain/dense/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense/kernel
×
$Brain/Brain/dense/kernel/Adam/AssignAssignBrain/Brain/dense/kernel/Adam/Brain/Brain/dense/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense/kernel
}
"Brain/Brain/dense/kernel/Adam/readIdentityBrain/Brain/dense/kernel/Adam*
T0*%
_class
loc:@Brain/dense/kernel

1Brain/Brain/dense/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense/kernel

Brain/Brain/dense/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense/kernel
Ý
&Brain/Brain/dense/kernel/Adam_1/AssignAssignBrain/Brain/dense/kernel/Adam_11Brain/Brain/dense/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense/kernel

$Brain/Brain/dense/kernel/Adam_1/readIdentityBrain/Brain/dense/kernel/Adam_1*
T0*%
_class
loc:@Brain/dense/kernel

-Brain/Brain/dense/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*#
_class
loc:@Brain/dense/bias

Brain/Brain/dense/bias/Adam
VariableV2*
shape:@*
dtype0*
	container *
shared_name *#
_class
loc:@Brain/dense/bias
Ï
"Brain/Brain/dense/bias/Adam/AssignAssignBrain/Brain/dense/bias/Adam-Brain/Brain/dense/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
w
 Brain/Brain/dense/bias/Adam/readIdentityBrain/Brain/dense/bias/Adam*
T0*#
_class
loc:@Brain/dense/bias

/Brain/Brain/dense/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*#
_class
loc:@Brain/dense/bias

Brain/Brain/dense/bias/Adam_1
VariableV2*
shape:@*
dtype0*
	container *
shared_name *#
_class
loc:@Brain/dense/bias
Õ
$Brain/Brain/dense/bias/Adam_1/AssignAssignBrain/Brain/dense/bias/Adam_1/Brain/Brain/dense/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
{
"Brain/Brain/dense/bias/Adam_1/readIdentityBrain/Brain/dense/bias/Adam_1*
T0*#
_class
loc:@Brain/dense/bias

1Brain/Brain/dense_1/kernel/Adam/Initializer/zerosConst*
valueB@@*    *
dtype0*'
_class
loc:@Brain/dense_1/kernel

Brain/Brain/dense_1/kernel/Adam
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_1/kernel
ß
&Brain/Brain/dense_1/kernel/Adam/AssignAssignBrain/Brain/dense_1/kernel/Adam1Brain/Brain/dense_1/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_1/kernel

$Brain/Brain/dense_1/kernel/Adam/readIdentityBrain/Brain/dense_1/kernel/Adam*
T0*'
_class
loc:@Brain/dense_1/kernel

3Brain/Brain/dense_1/kernel/Adam_1/Initializer/zerosConst*
valueB@@*    *
dtype0*'
_class
loc:@Brain/dense_1/kernel

!Brain/Brain/dense_1/kernel/Adam_1
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_1/kernel
å
(Brain/Brain/dense_1/kernel/Adam_1/AssignAssign!Brain/Brain/dense_1/kernel/Adam_13Brain/Brain/dense_1/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_1/kernel

&Brain/Brain/dense_1/kernel/Adam_1/readIdentity!Brain/Brain/dense_1/kernel/Adam_1*
T0*'
_class
loc:@Brain/dense_1/kernel

/Brain/Brain/dense_1/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_1/bias

Brain/Brain/dense_1/bias/Adam
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_1/bias
×
$Brain/Brain/dense_1/bias/Adam/AssignAssignBrain/Brain/dense_1/bias/Adam/Brain/Brain/dense_1/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_1/bias
}
"Brain/Brain/dense_1/bias/Adam/readIdentityBrain/Brain/dense_1/bias/Adam*
T0*%
_class
loc:@Brain/dense_1/bias

1Brain/Brain/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_1/bias

Brain/Brain/dense_1/bias/Adam_1
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_1/bias
Ý
&Brain/Brain/dense_1/bias/Adam_1/AssignAssignBrain/Brain/dense_1/bias/Adam_11Brain/Brain/dense_1/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_1/bias

$Brain/Brain/dense_1/bias/Adam_1/readIdentityBrain/Brain/dense_1/bias/Adam_1*
T0*%
_class
loc:@Brain/dense_1/bias

1Brain/Brain/dense_2/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@Brain/dense_2/kernel

Brain/Brain/dense_2/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_2/kernel
ß
&Brain/Brain/dense_2/kernel/Adam/AssignAssignBrain/Brain/dense_2/kernel/Adam1Brain/Brain/dense_2/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_2/kernel

$Brain/Brain/dense_2/kernel/Adam/readIdentityBrain/Brain/dense_2/kernel/Adam*
T0*'
_class
loc:@Brain/dense_2/kernel

3Brain/Brain/dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@Brain/dense_2/kernel

!Brain/Brain/dense_2/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_2/kernel
å
(Brain/Brain/dense_2/kernel/Adam_1/AssignAssign!Brain/Brain/dense_2/kernel/Adam_13Brain/Brain/dense_2/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_2/kernel

&Brain/Brain/dense_2/kernel/Adam_1/readIdentity!Brain/Brain/dense_2/kernel/Adam_1*
T0*'
_class
loc:@Brain/dense_2/kernel

/Brain/Brain/dense_2/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_2/bias

Brain/Brain/dense_2/bias/Adam
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_2/bias
×
$Brain/Brain/dense_2/bias/Adam/AssignAssignBrain/Brain/dense_2/bias/Adam/Brain/Brain/dense_2/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_2/bias
}
"Brain/Brain/dense_2/bias/Adam/readIdentityBrain/Brain/dense_2/bias/Adam*
T0*%
_class
loc:@Brain/dense_2/bias

1Brain/Brain/dense_2/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_2/bias

Brain/Brain/dense_2/bias/Adam_1
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_2/bias
Ý
&Brain/Brain/dense_2/bias/Adam_1/AssignAssignBrain/Brain/dense_2/bias/Adam_11Brain/Brain/dense_2/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_2/bias

$Brain/Brain/dense_2/bias/Adam_1/readIdentityBrain/Brain/dense_2/bias/Adam_1*
T0*%
_class
loc:@Brain/dense_2/bias

1Brain/Brain/dense_3/kernel/Adam/Initializer/zerosConst*
valueB@@*    *
dtype0*'
_class
loc:@Brain/dense_3/kernel

Brain/Brain/dense_3/kernel/Adam
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_3/kernel
ß
&Brain/Brain/dense_3/kernel/Adam/AssignAssignBrain/Brain/dense_3/kernel/Adam1Brain/Brain/dense_3/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_3/kernel

$Brain/Brain/dense_3/kernel/Adam/readIdentityBrain/Brain/dense_3/kernel/Adam*
T0*'
_class
loc:@Brain/dense_3/kernel

3Brain/Brain/dense_3/kernel/Adam_1/Initializer/zerosConst*
valueB@@*    *
dtype0*'
_class
loc:@Brain/dense_3/kernel

!Brain/Brain/dense_3/kernel/Adam_1
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_3/kernel
å
(Brain/Brain/dense_3/kernel/Adam_1/AssignAssign!Brain/Brain/dense_3/kernel/Adam_13Brain/Brain/dense_3/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_3/kernel

&Brain/Brain/dense_3/kernel/Adam_1/readIdentity!Brain/Brain/dense_3/kernel/Adam_1*
T0*'
_class
loc:@Brain/dense_3/kernel

/Brain/Brain/dense_3/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_3/bias

Brain/Brain/dense_3/bias/Adam
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_3/bias
×
$Brain/Brain/dense_3/bias/Adam/AssignAssignBrain/Brain/dense_3/bias/Adam/Brain/Brain/dense_3/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_3/bias
}
"Brain/Brain/dense_3/bias/Adam/readIdentityBrain/Brain/dense_3/bias/Adam*
T0*%
_class
loc:@Brain/dense_3/bias

1Brain/Brain/dense_3/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*%
_class
loc:@Brain/dense_3/bias

Brain/Brain/dense_3/bias/Adam_1
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_3/bias
Ý
&Brain/Brain/dense_3/bias/Adam_1/AssignAssignBrain/Brain/dense_3/bias/Adam_11Brain/Brain/dense_3/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_3/bias

$Brain/Brain/dense_3/bias/Adam_1/readIdentityBrain/Brain/dense_3/bias/Adam_1*
T0*%
_class
loc:@Brain/dense_3/bias

1Brain/Brain/dense_4/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@Brain/dense_4/kernel

Brain/Brain/dense_4/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_4/kernel
ß
&Brain/Brain/dense_4/kernel/Adam/AssignAssignBrain/Brain/dense_4/kernel/Adam1Brain/Brain/dense_4/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_4/kernel

$Brain/Brain/dense_4/kernel/Adam/readIdentityBrain/Brain/dense_4/kernel/Adam*
T0*'
_class
loc:@Brain/dense_4/kernel

3Brain/Brain/dense_4/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@Brain/dense_4/kernel

!Brain/Brain/dense_4/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_4/kernel
å
(Brain/Brain/dense_4/kernel/Adam_1/AssignAssign!Brain/Brain/dense_4/kernel/Adam_13Brain/Brain/dense_4/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_4/kernel

&Brain/Brain/dense_4/kernel/Adam_1/readIdentity!Brain/Brain/dense_4/kernel/Adam_1*
T0*'
_class
loc:@Brain/dense_4/kernel

4Brain/Brain/log_sigma_squared/Adam/Initializer/zerosConst*
valueB*    *
dtype0**
_class 
loc:@Brain/log_sigma_squared

"Brain/Brain/log_sigma_squared/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name **
_class 
loc:@Brain/log_sigma_squared
ë
)Brain/Brain/log_sigma_squared/Adam/AssignAssign"Brain/Brain/log_sigma_squared/Adam4Brain/Brain/log_sigma_squared/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@Brain/log_sigma_squared

'Brain/Brain/log_sigma_squared/Adam/readIdentity"Brain/Brain/log_sigma_squared/Adam*
T0**
_class 
loc:@Brain/log_sigma_squared

6Brain/Brain/log_sigma_squared/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0**
_class 
loc:@Brain/log_sigma_squared
 
$Brain/Brain/log_sigma_squared/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name **
_class 
loc:@Brain/log_sigma_squared
ñ
+Brain/Brain/log_sigma_squared/Adam_1/AssignAssign$Brain/Brain/log_sigma_squared/Adam_16Brain/Brain/log_sigma_squared/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(**
_class 
loc:@Brain/log_sigma_squared

)Brain/Brain/log_sigma_squared/Adam_1/readIdentity$Brain/Brain/log_sigma_squared/Adam_1*
T0**
_class 
loc:@Brain/log_sigma_squared

1Brain/Brain/dense_5/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@Brain/dense_5/kernel

Brain/Brain/dense_5/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_5/kernel
ß
&Brain/Brain/dense_5/kernel/Adam/AssignAssignBrain/Brain/dense_5/kernel/Adam1Brain/Brain/dense_5/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_5/kernel

$Brain/Brain/dense_5/kernel/Adam/readIdentityBrain/Brain/dense_5/kernel/Adam*
T0*'
_class
loc:@Brain/dense_5/kernel

3Brain/Brain/dense_5/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@Brain/dense_5/kernel

!Brain/Brain/dense_5/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *'
_class
loc:@Brain/dense_5/kernel
å
(Brain/Brain/dense_5/kernel/Adam_1/AssignAssign!Brain/Brain/dense_5/kernel/Adam_13Brain/Brain/dense_5/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_5/kernel

&Brain/Brain/dense_5/kernel/Adam_1/readIdentity!Brain/Brain/dense_5/kernel/Adam_1*
T0*'
_class
loc:@Brain/dense_5/kernel

/Brain/Brain/dense_5/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@Brain/dense_5/bias

Brain/Brain/dense_5/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_5/bias
×
$Brain/Brain/dense_5/bias/Adam/AssignAssignBrain/Brain/dense_5/bias/Adam/Brain/Brain/dense_5/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_5/bias
}
"Brain/Brain/dense_5/bias/Adam/readIdentityBrain/Brain/dense_5/bias/Adam*
T0*%
_class
loc:@Brain/dense_5/bias

1Brain/Brain/dense_5/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*%
_class
loc:@Brain/dense_5/bias

Brain/Brain/dense_5/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@Brain/dense_5/bias
Ý
&Brain/Brain/dense_5/bias/Adam_1/AssignAssignBrain/Brain/dense_5/bias/Adam_11Brain/Brain/dense_5/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_5/bias

$Brain/Brain/dense_5/bias/Adam_1/readIdentityBrain/Brain/dense_5/bias/Adam_1*
T0*%
_class
loc:@Brain/dense_5/bias
=
Brain/Adam/beta1Const*
valueB
 *fff?*
dtype0
=
Brain/Adam/beta2Const*
valueB
 *w¾?*
dtype0
?
Brain/Adam/epsilonConst*
valueB
 *wÌ+2*
dtype0
«
.Brain/Adam/update_Brain/dense/kernel/ApplyAdam	ApplyAdamBrain/dense/kernelBrain/Brain/dense/kernel/AdamBrain/Brain/dense/kernel/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonBBrain/gradients/Brain/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@Brain/dense/kernel
¢
,Brain/Adam/update_Brain/dense/bias/ApplyAdam	ApplyAdamBrain/dense/biasBrain/Brain/dense/bias/AdamBrain/Brain/dense/bias/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonCBrain/gradients/Brain/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@Brain/dense/bias
·
0Brain/Adam/update_Brain/dense_1/kernel/ApplyAdam	ApplyAdamBrain/dense_1/kernelBrain/Brain/dense_1/kernel/Adam!Brain/Brain/dense_1/kernel/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonDBrain/gradients/Brain/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *'
_class
loc:@Brain/dense_1/kernel
®
.Brain/Adam/update_Brain/dense_1/bias/ApplyAdam	ApplyAdamBrain/dense_1/biasBrain/Brain/dense_1/bias/AdamBrain/Brain/dense_1/bias/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonEBrain/gradients/Brain/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@Brain/dense_1/bias
·
0Brain/Adam/update_Brain/dense_2/kernel/ApplyAdam	ApplyAdamBrain/dense_2/kernelBrain/Brain/dense_2/kernel/Adam!Brain/Brain/dense_2/kernel/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonDBrain/gradients/Brain/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *'
_class
loc:@Brain/dense_2/kernel
®
.Brain/Adam/update_Brain/dense_2/bias/ApplyAdam	ApplyAdamBrain/dense_2/biasBrain/Brain/dense_2/bias/AdamBrain/Brain/dense_2/bias/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonEBrain/gradients/Brain/dense_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@Brain/dense_2/bias
·
0Brain/Adam/update_Brain/dense_3/kernel/ApplyAdam	ApplyAdamBrain/dense_3/kernelBrain/Brain/dense_3/kernel/Adam!Brain/Brain/dense_3/kernel/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonDBrain/gradients/Brain/dense_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *'
_class
loc:@Brain/dense_3/kernel
®
.Brain/Adam/update_Brain/dense_3/bias/ApplyAdam	ApplyAdamBrain/dense_3/biasBrain/Brain/dense_3/bias/AdamBrain/Brain/dense_3/bias/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonEBrain/gradients/Brain/dense_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@Brain/dense_3/bias
·
0Brain/Adam/update_Brain/dense_4/kernel/ApplyAdam	ApplyAdamBrain/dense_4/kernelBrain/Brain/dense_4/kernel/Adam!Brain/Brain/dense_4/kernel/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonDBrain/gradients/Brain/dense_5/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *'
_class
loc:@Brain/dense_4/kernel
¤
3Brain/Adam/update_Brain/log_sigma_squared/ApplyAdam	ApplyAdamBrain/log_sigma_squared"Brain/Brain/log_sigma_squared/Adam$Brain/Brain/log_sigma_squared/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilon"Brain/gradients/Brain/Exp_grad/mul*
T0*
use_locking( *
use_nesterov( **
_class 
loc:@Brain/log_sigma_squared
·
0Brain/Adam/update_Brain/dense_5/kernel/ApplyAdam	ApplyAdamBrain/dense_5/kernelBrain/Brain/dense_5/kernel/Adam!Brain/Brain/dense_5/kernel/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonDBrain/gradients/Brain/dense_6/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *'
_class
loc:@Brain/dense_5/kernel
®
.Brain/Adam/update_Brain/dense_5/bias/ApplyAdam	ApplyAdamBrain/dense_5/biasBrain/Brain/dense_5/bias/AdamBrain/Brain/dense_5/bias/Adam_1Brain/beta1_power/readBrain/beta2_power/readBrain/PolynomialDecay_2Brain/Adam/beta1Brain/Adam/beta2Brain/Adam/epsilonEBrain/gradients/Brain/dense_6/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@Brain/dense_5/bias
Æ
Brain/Adam/mulMulBrain/beta1_power/readBrain/Adam/beta1/^Brain/Adam/update_Brain/dense/kernel/ApplyAdam-^Brain/Adam/update_Brain/dense/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_1/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_1/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_2/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_2/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_3/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_3/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_4/kernel/ApplyAdam4^Brain/Adam/update_Brain/log_sigma_squared/ApplyAdam1^Brain/Adam/update_Brain/dense_5/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_5/bias/ApplyAdam*
T0*#
_class
loc:@Brain/dense/bias

Brain/Adam/AssignAssignBrain/beta1_powerBrain/Adam/mul*
T0*
validate_shape(*
use_locking( *#
_class
loc:@Brain/dense/bias
È
Brain/Adam/mul_1MulBrain/beta2_power/readBrain/Adam/beta2/^Brain/Adam/update_Brain/dense/kernel/ApplyAdam-^Brain/Adam/update_Brain/dense/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_1/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_1/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_2/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_2/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_3/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_3/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_4/kernel/ApplyAdam4^Brain/Adam/update_Brain/log_sigma_squared/ApplyAdam1^Brain/Adam/update_Brain/dense_5/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_5/bias/ApplyAdam*
T0*#
_class
loc:@Brain/dense/bias

Brain/Adam/Assign_1AssignBrain/beta2_powerBrain/Adam/mul_1*
T0*
validate_shape(*
use_locking( *#
_class
loc:@Brain/dense/bias


Brain/AdamNoOp/^Brain/Adam/update_Brain/dense/kernel/ApplyAdam-^Brain/Adam/update_Brain/dense/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_1/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_1/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_2/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_2/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_3/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_3/bias/ApplyAdam1^Brain/Adam/update_Brain/dense_4/kernel/ApplyAdam4^Brain/Adam/update_Brain/log_sigma_squared/ApplyAdam1^Brain/Adam/update_Brain/dense_5/kernel/ApplyAdam/^Brain/Adam/update_Brain/dense_5/bias/ApplyAdam^Brain/Adam/Assign^Brain/Adam/Assign_1
?
TrueBrain/batch_sizePlaceholder*
dtype0*
shape:
D
TrueBrain/sequence_lengthPlaceholder*
dtype0*
shape:
M
#TrueBrain/global_step/initial_valueConst*
value	B : *
dtype0
a
TrueBrain/global_step
VariableV2*
shape: *
dtype0*
	container *
shared_name 
¾
TrueBrain/global_step/AssignAssignTrueBrain/global_step#TrueBrain/global_step/initial_value*
T0*
validate_shape(*
use_locking(*(
_class
loc:@TrueBrain/global_step
p
TrueBrain/global_step/readIdentityTrueBrain/global_step*
T0*(
_class
loc:@TrueBrain/global_step
9
TrueBrain/Add/yConst*
value	B :*
dtype0
J
TrueBrain/AddAddTrueBrain/global_step/readTrueBrain/Add/y*
T0

TrueBrain/AssignAssignTrueBrain/global_stepTrueBrain/Add*
T0*
validate_shape(*
use_locking(*(
_class
loc:@TrueBrain/global_step
P
#TrueBrain/last_reward/initial_valueConst*
valueB
 *    *
dtype0
a
TrueBrain/last_reward
VariableV2*
shape: *
dtype0*
	container *
shared_name 
¾
TrueBrain/last_reward/AssignAssignTrueBrain/last_reward#TrueBrain/last_reward/initial_value*
T0*
validate_shape(*
use_locking(*(
_class
loc:@TrueBrain/last_reward
p
TrueBrain/last_reward/readIdentityTrueBrain/last_reward*
T0*(
_class
loc:@TrueBrain/last_reward
=
TrueBrain/new_rewardPlaceholder*
dtype0*
shape: 
¥
TrueBrain/Assign_1AssignTrueBrain/last_rewardTrueBrain/new_reward*
T0*
validate_shape(*
use_locking(*(
_class
loc:@TrueBrain/last_reward
I
TrueBrain/statePlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

9TrueBrain/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"   @   *
dtype0*)
_class
loc:@TrueBrain/dense/kernel

8TrueBrain/dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*)
_class
loc:@TrueBrain/dense/kernel

:TrueBrain/dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *î¤Ü>*
dtype0*)
_class
loc:@TrueBrain/dense/kernel
ë
CTrueBrain/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9TrueBrain/dense/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*)
_class
loc:@TrueBrain/dense/kernel
ó
7TrueBrain/dense/kernel/Initializer/truncated_normal/mulMulCTrueBrain/dense/kernel/Initializer/truncated_normal/TruncatedNormal:TrueBrain/dense/kernel/Initializer/truncated_normal/stddev*
T0*)
_class
loc:@TrueBrain/dense/kernel
á
3TrueBrain/dense/kernel/Initializer/truncated_normalAdd7TrueBrain/dense/kernel/Initializer/truncated_normal/mul8TrueBrain/dense/kernel/Initializer/truncated_normal/mean*
T0*)
_class
loc:@TrueBrain/dense/kernel

TrueBrain/dense/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense/kernel
Ñ
TrueBrain/dense/kernel/AssignAssignTrueBrain/dense/kernel3TrueBrain/dense/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense/kernel
s
TrueBrain/dense/kernel/readIdentityTrueBrain/dense/kernel*
T0*)
_class
loc:@TrueBrain/dense/kernel

&TrueBrain/dense/bias/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@TrueBrain/dense/bias

TrueBrain/dense/bias
VariableV2*
shape:@*
dtype0*
	container *
shared_name *'
_class
loc:@TrueBrain/dense/bias
¾
TrueBrain/dense/bias/AssignAssignTrueBrain/dense/bias&TrueBrain/dense/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias
m
TrueBrain/dense/bias/readIdentityTrueBrain/dense/bias*
T0*'
_class
loc:@TrueBrain/dense/bias
}
TrueBrain/dense/MatMulMatMulTrueBrain/stateTrueBrain/dense/kernel/read*
transpose_a( *
transpose_b( *
T0
u
TrueBrain/dense/BiasAddBiasAddTrueBrain/dense/MatMulTrueBrain/dense/bias/read*
T0*
data_formatNHWC
>
TrueBrain/dense/TanhTanhTrueBrain/dense/BiasAdd*
T0

;TrueBrain/dense_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"@   @   *
dtype0*+
_class!
loc:@TrueBrain/dense_1/kernel

:TrueBrain/dense_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*+
_class!
loc:@TrueBrain/dense_1/kernel

<TrueBrain/dense_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *Eñ>*
dtype0*+
_class!
loc:@TrueBrain/dense_1/kernel
ñ
ETrueBrain/dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;TrueBrain/dense_1/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*+
_class!
loc:@TrueBrain/dense_1/kernel
û
9TrueBrain/dense_1/kernel/Initializer/truncated_normal/mulMulETrueBrain/dense_1/kernel/Initializer/truncated_normal/TruncatedNormal<TrueBrain/dense_1/kernel/Initializer/truncated_normal/stddev*
T0*+
_class!
loc:@TrueBrain/dense_1/kernel
é
5TrueBrain/dense_1/kernel/Initializer/truncated_normalAdd9TrueBrain/dense_1/kernel/Initializer/truncated_normal/mul:TrueBrain/dense_1/kernel/Initializer/truncated_normal/mean*
T0*+
_class!
loc:@TrueBrain/dense_1/kernel

TrueBrain/dense_1/kernel
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_1/kernel
Ù
TrueBrain/dense_1/kernel/AssignAssignTrueBrain/dense_1/kernel5TrueBrain/dense_1/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_1/kernel
y
TrueBrain/dense_1/kernel/readIdentityTrueBrain/dense_1/kernel*
T0*+
_class!
loc:@TrueBrain/dense_1/kernel

(TrueBrain/dense_1/bias/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_1/bias

TrueBrain/dense_1/bias
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_1/bias
Æ
TrueBrain/dense_1/bias/AssignAssignTrueBrain/dense_1/bias(TrueBrain/dense_1/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_1/bias
s
TrueBrain/dense_1/bias/readIdentityTrueBrain/dense_1/bias*
T0*)
_class
loc:@TrueBrain/dense_1/bias

TrueBrain/dense_2/MatMulMatMulTrueBrain/dense/TanhTrueBrain/dense_1/kernel/read*
transpose_a( *
transpose_b( *
T0
{
TrueBrain/dense_2/BiasAddBiasAddTrueBrain/dense_2/MatMulTrueBrain/dense_1/bias/read*
T0*
data_formatNHWC
B
TrueBrain/dense_2/TanhTanhTrueBrain/dense_2/BiasAdd*
T0

;TrueBrain/dense_2/kernel/Initializer/truncated_normal/shapeConst*
valueB"   @   *
dtype0*+
_class!
loc:@TrueBrain/dense_2/kernel

:TrueBrain/dense_2/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*+
_class!
loc:@TrueBrain/dense_2/kernel

<TrueBrain/dense_2/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *î¤Ü>*
dtype0*+
_class!
loc:@TrueBrain/dense_2/kernel
ñ
ETrueBrain/dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;TrueBrain/dense_2/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*+
_class!
loc:@TrueBrain/dense_2/kernel
û
9TrueBrain/dense_2/kernel/Initializer/truncated_normal/mulMulETrueBrain/dense_2/kernel/Initializer/truncated_normal/TruncatedNormal<TrueBrain/dense_2/kernel/Initializer/truncated_normal/stddev*
T0*+
_class!
loc:@TrueBrain/dense_2/kernel
é
5TrueBrain/dense_2/kernel/Initializer/truncated_normalAdd9TrueBrain/dense_2/kernel/Initializer/truncated_normal/mul:TrueBrain/dense_2/kernel/Initializer/truncated_normal/mean*
T0*+
_class!
loc:@TrueBrain/dense_2/kernel

TrueBrain/dense_2/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_2/kernel
Ù
TrueBrain/dense_2/kernel/AssignAssignTrueBrain/dense_2/kernel5TrueBrain/dense_2/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_2/kernel
y
TrueBrain/dense_2/kernel/readIdentityTrueBrain/dense_2/kernel*
T0*+
_class!
loc:@TrueBrain/dense_2/kernel

(TrueBrain/dense_2/bias/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_2/bias

TrueBrain/dense_2/bias
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_2/bias
Æ
TrueBrain/dense_2/bias/AssignAssignTrueBrain/dense_2/bias(TrueBrain/dense_2/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_2/bias
s
TrueBrain/dense_2/bias/readIdentityTrueBrain/dense_2/bias*
T0*)
_class
loc:@TrueBrain/dense_2/bias

TrueBrain/dense_3/MatMulMatMulTrueBrain/stateTrueBrain/dense_2/kernel/read*
transpose_a( *
transpose_b( *
T0
{
TrueBrain/dense_3/BiasAddBiasAddTrueBrain/dense_3/MatMulTrueBrain/dense_2/bias/read*
T0*
data_formatNHWC
B
TrueBrain/dense_3/TanhTanhTrueBrain/dense_3/BiasAdd*
T0

;TrueBrain/dense_3/kernel/Initializer/truncated_normal/shapeConst*
valueB"@   @   *
dtype0*+
_class!
loc:@TrueBrain/dense_3/kernel

:TrueBrain/dense_3/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*+
_class!
loc:@TrueBrain/dense_3/kernel

<TrueBrain/dense_3/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *Eñ>*
dtype0*+
_class!
loc:@TrueBrain/dense_3/kernel
ñ
ETrueBrain/dense_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;TrueBrain/dense_3/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*+
_class!
loc:@TrueBrain/dense_3/kernel
û
9TrueBrain/dense_3/kernel/Initializer/truncated_normal/mulMulETrueBrain/dense_3/kernel/Initializer/truncated_normal/TruncatedNormal<TrueBrain/dense_3/kernel/Initializer/truncated_normal/stddev*
T0*+
_class!
loc:@TrueBrain/dense_3/kernel
é
5TrueBrain/dense_3/kernel/Initializer/truncated_normalAdd9TrueBrain/dense_3/kernel/Initializer/truncated_normal/mul:TrueBrain/dense_3/kernel/Initializer/truncated_normal/mean*
T0*+
_class!
loc:@TrueBrain/dense_3/kernel

TrueBrain/dense_3/kernel
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_3/kernel
Ù
TrueBrain/dense_3/kernel/AssignAssignTrueBrain/dense_3/kernel5TrueBrain/dense_3/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_3/kernel
y
TrueBrain/dense_3/kernel/readIdentityTrueBrain/dense_3/kernel*
T0*+
_class!
loc:@TrueBrain/dense_3/kernel

(TrueBrain/dense_3/bias/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_3/bias

TrueBrain/dense_3/bias
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_3/bias
Æ
TrueBrain/dense_3/bias/AssignAssignTrueBrain/dense_3/bias(TrueBrain/dense_3/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_3/bias
s
TrueBrain/dense_3/bias/readIdentityTrueBrain/dense_3/bias*
T0*)
_class
loc:@TrueBrain/dense_3/bias

TrueBrain/dense_4/MatMulMatMulTrueBrain/dense_3/TanhTrueBrain/dense_3/kernel/read*
transpose_a( *
transpose_b( *
T0
{
TrueBrain/dense_4/BiasAddBiasAddTrueBrain/dense_4/MatMulTrueBrain/dense_3/bias/read*
T0*
data_formatNHWC
B
TrueBrain/dense_4/TanhTanhTrueBrain/dense_4/BiasAdd*
T0

;TrueBrain/dense_4/kernel/Initializer/truncated_normal/shapeConst*
valueB"@      *
dtype0*+
_class!
loc:@TrueBrain/dense_4/kernel

:TrueBrain/dense_4/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*+
_class!
loc:@TrueBrain/dense_4/kernel

<TrueBrain/dense_4/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *i<*
dtype0*+
_class!
loc:@TrueBrain/dense_4/kernel
ñ
ETrueBrain/dense_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;TrueBrain/dense_4/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*+
_class!
loc:@TrueBrain/dense_4/kernel
û
9TrueBrain/dense_4/kernel/Initializer/truncated_normal/mulMulETrueBrain/dense_4/kernel/Initializer/truncated_normal/TruncatedNormal<TrueBrain/dense_4/kernel/Initializer/truncated_normal/stddev*
T0*+
_class!
loc:@TrueBrain/dense_4/kernel
é
5TrueBrain/dense_4/kernel/Initializer/truncated_normalAdd9TrueBrain/dense_4/kernel/Initializer/truncated_normal/mul:TrueBrain/dense_4/kernel/Initializer/truncated_normal/mean*
T0*+
_class!
loc:@TrueBrain/dense_4/kernel

TrueBrain/dense_4/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_4/kernel
Ù
TrueBrain/dense_4/kernel/AssignAssignTrueBrain/dense_4/kernel5TrueBrain/dense_4/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_4/kernel
y
TrueBrain/dense_4/kernel/readIdentityTrueBrain/dense_4/kernel*
T0*+
_class!
loc:@TrueBrain/dense_4/kernel

TrueBrain/dense_5/MatMulMatMulTrueBrain/dense_2/TanhTrueBrain/dense_4/kernel/read*
transpose_a( *
transpose_b( *
T0

-TrueBrain/log_sigma_squared/Initializer/zerosConst*
valueB*    *
dtype0*.
_class$
" loc:@TrueBrain/log_sigma_squared

TrueBrain/log_sigma_squared
VariableV2*
shape:*
dtype0*
	container *
shared_name *.
_class$
" loc:@TrueBrain/log_sigma_squared
Ú
"TrueBrain/log_sigma_squared/AssignAssignTrueBrain/log_sigma_squared-TrueBrain/log_sigma_squared/Initializer/zeros*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@TrueBrain/log_sigma_squared

 TrueBrain/log_sigma_squared/readIdentityTrueBrain/log_sigma_squared*
T0*.
_class$
" loc:@TrueBrain/log_sigma_squared
?
TrueBrain/ExpExp TrueBrain/log_sigma_squared/read*
T0
K
TrueBrain/epsilonPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
.
TrueBrain/SqrtSqrtTrueBrain/Exp*
T0
@
TrueBrain/mulMulTrueBrain/SqrtTrueBrain/epsilon*
T0
F
TrueBrain/addAddTrueBrain/dense_5/MatMulTrueBrain/mul*
T0
4
TrueBrain/actionIdentityTrueBrain/add*
T0
A
TrueBrain/StopGradientStopGradientTrueBrain/action*
T0
O
TrueBrain/subSubTrueBrain/StopGradientTrueBrain/dense_5/MatMul*
T0
<
TrueBrain/Pow/yConst*
valueB
 *   @*
dtype0
=
TrueBrain/PowPowTrueBrain/subTrueBrain/Pow/y*
T0
>
TrueBrain/mul_1/xConst*
valueB
 *  ¿*
dtype0
A
TrueBrain/mul_1MulTrueBrain/mul_1/xTrueBrain/Pow*
T0
>
TrueBrain/mul_2/xConst*
valueB
 *   @*
dtype0
A
TrueBrain/mul_2MulTrueBrain/mul_2/xTrueBrain/Exp*
T0
G
TrueBrain/truedivRealDivTrueBrain/mul_1TrueBrain/mul_2*
T0
2
TrueBrain/Exp_1ExpTrueBrain/truediv*
T0
>
TrueBrain/mul_3/xConst*
valueB
 *   @*
dtype0
A
TrueBrain/mul_3MulTrueBrain/mul_3/xTrueBrain/Exp*
T0
>
TrueBrain/mul_4/yConst*
valueB
 *ÛI@*
dtype0
C
TrueBrain/mul_4MulTrueBrain/mul_3TrueBrain/mul_4/y*
T0
2
TrueBrain/Sqrt_1SqrtTrueBrain/mul_4*
T0
B
TrueBrain/truediv_1/xConst*
valueB
 *  ?*
dtype0
P
TrueBrain/truediv_1RealDivTrueBrain/truediv_1/xTrueBrain/Sqrt_1*
T0
L
TrueBrain/action_probsMulTrueBrain/Exp_1TrueBrain/truediv_1*
T0
>
TrueBrain/mul_5/xConst*
valueB
 *À¢A*
dtype0
A
TrueBrain/mul_5MulTrueBrain/mul_5/xTrueBrain/Exp*
T0
.
TrueBrain/LogLogTrueBrain/mul_5*
T0
>
TrueBrain/mul_6/xConst*
valueB
 *   ?*
dtype0
A
TrueBrain/mul_6MulTrueBrain/mul_6/xTrueBrain/Log*
T0
=
TrueBrain/ConstConst*
valueB: *
dtype0
\
TrueBrain/SumSumTrueBrain/mul_6TrueBrain/Const*
	keep_dims( *
T0*

Tidx0

9TrueBrain/dense_5/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *
dtype0*+
_class!
loc:@TrueBrain/dense_5/kernel

7TrueBrain/dense_5/kernel/Initializer/random_uniform/minConst*
valueB
 *¾*
dtype0*+
_class!
loc:@TrueBrain/dense_5/kernel

7TrueBrain/dense_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*
dtype0*+
_class!
loc:@TrueBrain/dense_5/kernel
é
ATrueBrain/dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform9TrueBrain/dense_5/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*+
_class!
loc:@TrueBrain/dense_5/kernel
æ
7TrueBrain/dense_5/kernel/Initializer/random_uniform/subSub7TrueBrain/dense_5/kernel/Initializer/random_uniform/max7TrueBrain/dense_5/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@TrueBrain/dense_5/kernel
ð
7TrueBrain/dense_5/kernel/Initializer/random_uniform/mulMulATrueBrain/dense_5/kernel/Initializer/random_uniform/RandomUniform7TrueBrain/dense_5/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@TrueBrain/dense_5/kernel
â
3TrueBrain/dense_5/kernel/Initializer/random_uniformAdd7TrueBrain/dense_5/kernel/Initializer/random_uniform/mul7TrueBrain/dense_5/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@TrueBrain/dense_5/kernel

TrueBrain/dense_5/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_5/kernel
×
TrueBrain/dense_5/kernel/AssignAssignTrueBrain/dense_5/kernel3TrueBrain/dense_5/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_5/kernel
y
TrueBrain/dense_5/kernel/readIdentityTrueBrain/dense_5/kernel*
T0*+
_class!
loc:@TrueBrain/dense_5/kernel

(TrueBrain/dense_5/bias/Initializer/zerosConst*
valueB*    *
dtype0*)
_class
loc:@TrueBrain/dense_5/bias

TrueBrain/dense_5/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_5/bias
Æ
TrueBrain/dense_5/bias/AssignAssignTrueBrain/dense_5/bias(TrueBrain/dense_5/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_5/bias
s
TrueBrain/dense_5/bias/readIdentityTrueBrain/dense_5/bias*
T0*)
_class
loc:@TrueBrain/dense_5/bias

TrueBrain/dense_6/MatMulMatMulTrueBrain/dense_4/TanhTrueBrain/dense_5/kernel/read*
transpose_a( *
transpose_b( *
T0
{
TrueBrain/dense_6/BiasAddBiasAddTrueBrain/dense_6/MatMulTrueBrain/dense_5/bias/read*
T0*
data_formatNHWC
H
TrueBrain/value_estimateIdentityTrueBrain/dense_6/BiasAdd*
T0
U
TrueBrain/old_probabilitiesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
R
TrueBrain/discounted_rewardsPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
N
TrueBrain/advantagesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
T
'TrueBrain/PolynomialDecay/learning_rateConst*
valueB
 *ÍÌL>*
dtype0
Z
TrueBrain/PolynomialDecay/CastCastTrueBrain/global_step/read*

SrcT0*

DstT0
O
"TrueBrain/PolynomialDecay/Cast_1/xConst*
valueB
 * $tI*
dtype0
O
"TrueBrain/PolynomialDecay/Cast_2/xConst*
valueB
 *ÍÌÌ=*
dtype0
O
"TrueBrain/PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
y
!TrueBrain/PolynomialDecay/MinimumMinimumTrueBrain/PolynomialDecay/Cast"TrueBrain/PolynomialDecay/Cast_1/x*
T0
x
TrueBrain/PolynomialDecay/divRealDiv!TrueBrain/PolynomialDecay/Minimum"TrueBrain/PolynomialDecay/Cast_1/x*
T0
z
TrueBrain/PolynomialDecay/subSub'TrueBrain/PolynomialDecay/learning_rate"TrueBrain/PolynomialDecay/Cast_2/x*
T0
N
!TrueBrain/PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
q
TrueBrain/PolynomialDecay/sub_1Sub!TrueBrain/PolynomialDecay/sub_1/xTrueBrain/PolynomialDecay/div*
T0
r
TrueBrain/PolynomialDecay/PowPowTrueBrain/PolynomialDecay/sub_1"TrueBrain/PolynomialDecay/Cast_3/x*
T0
k
TrueBrain/PolynomialDecay/MulMulTrueBrain/PolynomialDecay/subTrueBrain/PolynomialDecay/Pow*
T0
l
TrueBrain/PolynomialDecayAddTrueBrain/PolynomialDecay/Mul"TrueBrain/PolynomialDecay/Cast_2/x*
T0
>
TrueBrain/add_1/yConst*
valueB
 *ÿæÛ.*
dtype0
O
TrueBrain/add_1AddTrueBrain/old_probabilitiesTrueBrain/add_1/y*
T0
P
TrueBrain/truediv_2RealDivTrueBrain/action_probsTrueBrain/add_1*
T0
J
TrueBrain/mul_7MulTrueBrain/truediv_2TrueBrain/advantages*
T0
>
TrueBrain/sub_1/xConst*
valueB
 *  ?*
dtype0
M
TrueBrain/sub_1SubTrueBrain/sub_1/xTrueBrain/PolynomialDecay*
T0
>
TrueBrain/add_2/xConst*
valueB
 *  ?*
dtype0
M
TrueBrain/add_2AddTrueBrain/add_2/xTrueBrain/PolynomialDecay*
T0
Y
TrueBrain/clip_by_value/MinimumMinimumTrueBrain/truediv_2TrueBrain/add_2*
T0
]
TrueBrain/clip_by_valueMaximumTrueBrain/clip_by_value/MinimumTrueBrain/sub_1*
T0
N
TrueBrain/mul_8MulTrueBrain/clip_by_valueTrueBrain/advantages*
T0
G
TrueBrain/MinimumMinimumTrueBrain/mul_7TrueBrain/mul_8*
T0
F
TrueBrain/Const_1Const*
valueB"       *
dtype0
b
TrueBrain/MeanMeanTrueBrain/MinimumTrueBrain/Const_1*
	keep_dims( *
T0*

Tidx0
-
TrueBrain/NegNegTrueBrain/Mean*
T0
K
!TrueBrain/Sum_1/reduction_indicesConst*
value	B :*
dtype0
y
TrueBrain/Sum_1SumTrueBrain/value_estimate!TrueBrain/Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0
h
TrueBrain/SquaredDifferenceSquaredDifferenceTrueBrain/discounted_rewardsTrueBrain/Sum_1*
T0
?
TrueBrain/Const_2Const*
valueB: *
dtype0
n
TrueBrain/Mean_1MeanTrueBrain/SquaredDifferenceTrueBrain/Const_2*
	keep_dims( *
T0*

Tidx0
V
)TrueBrain/PolynomialDecay_1/learning_rateConst*
valueB
 *    *
dtype0
\
 TrueBrain/PolynomialDecay_1/CastCastTrueBrain/global_step/read*

SrcT0*

DstT0
Q
$TrueBrain/PolynomialDecay_1/Cast_1/xConst*
valueB
 * $tI*
dtype0
Q
$TrueBrain/PolynomialDecay_1/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
Q
$TrueBrain/PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0

#TrueBrain/PolynomialDecay_1/MinimumMinimum TrueBrain/PolynomialDecay_1/Cast$TrueBrain/PolynomialDecay_1/Cast_1/x*
T0
~
TrueBrain/PolynomialDecay_1/divRealDiv#TrueBrain/PolynomialDecay_1/Minimum$TrueBrain/PolynomialDecay_1/Cast_1/x*
T0

TrueBrain/PolynomialDecay_1/subSub)TrueBrain/PolynomialDecay_1/learning_rate$TrueBrain/PolynomialDecay_1/Cast_2/x*
T0
P
#TrueBrain/PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
w
!TrueBrain/PolynomialDecay_1/sub_1Sub#TrueBrain/PolynomialDecay_1/sub_1/xTrueBrain/PolynomialDecay_1/div*
T0
x
TrueBrain/PolynomialDecay_1/PowPow!TrueBrain/PolynomialDecay_1/sub_1$TrueBrain/PolynomialDecay_1/Cast_3/x*
T0
q
TrueBrain/PolynomialDecay_1/MulMulTrueBrain/PolynomialDecay_1/subTrueBrain/PolynomialDecay_1/Pow*
T0
r
TrueBrain/PolynomialDecay_1AddTrueBrain/PolynomialDecay_1/Mul$TrueBrain/PolynomialDecay_1/Cast_2/x*
T0
>
TrueBrain/mul_9/xConst*
valueB
 *   ?*
dtype0
D
TrueBrain/mul_9MulTrueBrain/mul_9/xTrueBrain/Mean_1*
T0
?
TrueBrain/add_3AddTrueBrain/NegTrueBrain/mul_9*
T0
:
TrueBrain/Const_3Const*
valueB *
dtype0
`
TrueBrain/Mean_2MeanTrueBrain/SumTrueBrain/Const_3*
	keep_dims( *
T0*

Tidx0
O
TrueBrain/mul_10MulTrueBrain/PolynomialDecay_1TrueBrain/Mean_2*
T0
B
TrueBrain/sub_2SubTrueBrain/add_3TrueBrain/mul_10*
T0
V
)TrueBrain/PolynomialDecay_2/learning_rateConst*
valueB
 *RI9*
dtype0
\
 TrueBrain/PolynomialDecay_2/CastCastTrueBrain/global_step/read*

SrcT0*

DstT0
Q
$TrueBrain/PolynomialDecay_2/Cast_1/xConst*
valueB
 * $tI*
dtype0
Q
$TrueBrain/PolynomialDecay_2/Cast_2/xConst*
valueB
 *ÿæÛ.*
dtype0
Q
$TrueBrain/PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0

#TrueBrain/PolynomialDecay_2/MinimumMinimum TrueBrain/PolynomialDecay_2/Cast$TrueBrain/PolynomialDecay_2/Cast_1/x*
T0
~
TrueBrain/PolynomialDecay_2/divRealDiv#TrueBrain/PolynomialDecay_2/Minimum$TrueBrain/PolynomialDecay_2/Cast_1/x*
T0

TrueBrain/PolynomialDecay_2/subSub)TrueBrain/PolynomialDecay_2/learning_rate$TrueBrain/PolynomialDecay_2/Cast_2/x*
T0
P
#TrueBrain/PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
w
!TrueBrain/PolynomialDecay_2/sub_1Sub#TrueBrain/PolynomialDecay_2/sub_1/xTrueBrain/PolynomialDecay_2/div*
T0
x
TrueBrain/PolynomialDecay_2/PowPow!TrueBrain/PolynomialDecay_2/sub_1$TrueBrain/PolynomialDecay_2/Cast_3/x*
T0
q
TrueBrain/PolynomialDecay_2/MulMulTrueBrain/PolynomialDecay_2/subTrueBrain/PolynomialDecay_2/Pow*
T0
r
TrueBrain/PolynomialDecay_2AddTrueBrain/PolynomialDecay_2/Mul$TrueBrain/PolynomialDecay_2/Cast_2/x*
T0
B
TrueBrain/gradients/ShapeConst*
valueB *
dtype0
F
TrueBrain/gradients/ConstConst*
valueB
 *  ?*
dtype0
_
TrueBrain/gradients/FillFillTrueBrain/gradients/ShapeTrueBrain/gradients/Const*
T0
W
.TrueBrain/gradients/TrueBrain/sub_2_grad/ShapeConst*
valueB *
dtype0
Y
0TrueBrain/gradients/TrueBrain/sub_2_grad/Shape_1Const*
valueB *
dtype0
Â
>TrueBrain/gradients/TrueBrain/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/sub_2_grad/Shape0TrueBrain/gradients/TrueBrain/sub_2_grad/Shape_1*
T0
³
,TrueBrain/gradients/TrueBrain/sub_2_grad/SumSumTrueBrain/gradients/Fill>TrueBrain/gradients/TrueBrain/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/sub_2_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/sub_2_grad/Sum.TrueBrain/gradients/TrueBrain/sub_2_grad/Shape*
T0*
Tshape0
·
.TrueBrain/gradients/TrueBrain/sub_2_grad/Sum_1SumTrueBrain/gradients/Fill@TrueBrain/gradients/TrueBrain/sub_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
l
,TrueBrain/gradients/TrueBrain/sub_2_grad/NegNeg.TrueBrain/gradients/TrueBrain/sub_2_grad/Sum_1*
T0
´
2TrueBrain/gradients/TrueBrain/sub_2_grad/Reshape_1Reshape,TrueBrain/gradients/TrueBrain/sub_2_grad/Neg0TrueBrain/gradients/TrueBrain/sub_2_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/sub_2_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/sub_2_grad/Reshape3^TrueBrain/gradients/TrueBrain/sub_2_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/sub_2_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/sub_2_grad/Reshape:^TrueBrain/gradients/TrueBrain/sub_2_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/sub_2_grad/Reshape

CTrueBrain/gradients/TrueBrain/sub_2_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/sub_2_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/sub_2_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/sub_2_grad/Reshape_1
W
.TrueBrain/gradients/TrueBrain/add_3_grad/ShapeConst*
valueB *
dtype0
Y
0TrueBrain/gradients/TrueBrain/add_3_grad/Shape_1Const*
valueB *
dtype0
Â
>TrueBrain/gradients/TrueBrain/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/add_3_grad/Shape0TrueBrain/gradients/TrueBrain/add_3_grad/Shape_1*
T0
Ü
,TrueBrain/gradients/TrueBrain/add_3_grad/SumSumATrueBrain/gradients/TrueBrain/sub_2_grad/tuple/control_dependency>TrueBrain/gradients/TrueBrain/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/add_3_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/add_3_grad/Sum.TrueBrain/gradients/TrueBrain/add_3_grad/Shape*
T0*
Tshape0
à
.TrueBrain/gradients/TrueBrain/add_3_grad/Sum_1SumATrueBrain/gradients/TrueBrain/sub_2_grad/tuple/control_dependency@TrueBrain/gradients/TrueBrain/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/add_3_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/add_3_grad/Sum_10TrueBrain/gradients/TrueBrain/add_3_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/add_3_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/add_3_grad/Reshape3^TrueBrain/gradients/TrueBrain/add_3_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/add_3_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/add_3_grad/Reshape:^TrueBrain/gradients/TrueBrain/add_3_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/add_3_grad/Reshape

CTrueBrain/gradients/TrueBrain/add_3_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/add_3_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/add_3_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/add_3_grad/Reshape_1
X
/TrueBrain/gradients/TrueBrain/mul_10_grad/ShapeConst*
valueB *
dtype0
Z
1TrueBrain/gradients/TrueBrain/mul_10_grad/Shape_1Const*
valueB *
dtype0
Å
?TrueBrain/gradients/TrueBrain/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgs/TrueBrain/gradients/TrueBrain/mul_10_grad/Shape1TrueBrain/gradients/TrueBrain/mul_10_grad/Shape_1*
T0

-TrueBrain/gradients/TrueBrain/mul_10_grad/mulMulCTrueBrain/gradients/TrueBrain/sub_2_grad/tuple/control_dependency_1TrueBrain/Mean_2*
T0
Ê
-TrueBrain/gradients/TrueBrain/mul_10_grad/SumSum-TrueBrain/gradients/TrueBrain/mul_10_grad/mul?TrueBrain/gradients/TrueBrain/mul_10_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
³
1TrueBrain/gradients/TrueBrain/mul_10_grad/ReshapeReshape-TrueBrain/gradients/TrueBrain/mul_10_grad/Sum/TrueBrain/gradients/TrueBrain/mul_10_grad/Shape*
T0*
Tshape0
¡
/TrueBrain/gradients/TrueBrain/mul_10_grad/mul_1MulTrueBrain/PolynomialDecay_1CTrueBrain/gradients/TrueBrain/sub_2_grad/tuple/control_dependency_1*
T0
Ð
/TrueBrain/gradients/TrueBrain/mul_10_grad/Sum_1Sum/TrueBrain/gradients/TrueBrain/mul_10_grad/mul_1ATrueBrain/gradients/TrueBrain/mul_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¹
3TrueBrain/gradients/TrueBrain/mul_10_grad/Reshape_1Reshape/TrueBrain/gradients/TrueBrain/mul_10_grad/Sum_11TrueBrain/gradients/TrueBrain/mul_10_grad/Shape_1*
T0*
Tshape0
¬
:TrueBrain/gradients/TrueBrain/mul_10_grad/tuple/group_depsNoOp2^TrueBrain/gradients/TrueBrain/mul_10_grad/Reshape4^TrueBrain/gradients/TrueBrain/mul_10_grad/Reshape_1

BTrueBrain/gradients/TrueBrain/mul_10_grad/tuple/control_dependencyIdentity1TrueBrain/gradients/TrueBrain/mul_10_grad/Reshape;^TrueBrain/gradients/TrueBrain/mul_10_grad/tuple/group_deps*
T0*D
_class:
86loc:@TrueBrain/gradients/TrueBrain/mul_10_grad/Reshape

DTrueBrain/gradients/TrueBrain/mul_10_grad/tuple/control_dependency_1Identity3TrueBrain/gradients/TrueBrain/mul_10_grad/Reshape_1;^TrueBrain/gradients/TrueBrain/mul_10_grad/tuple/group_deps*
T0*F
_class<
:8loc:@TrueBrain/gradients/TrueBrain/mul_10_grad/Reshape_1
}
*TrueBrain/gradients/TrueBrain/Neg_grad/NegNegATrueBrain/gradients/TrueBrain/add_3_grad/tuple/control_dependency*
T0
W
.TrueBrain/gradients/TrueBrain/mul_9_grad/ShapeConst*
valueB *
dtype0
Y
0TrueBrain/gradients/TrueBrain/mul_9_grad/Shape_1Const*
valueB *
dtype0
Â
>TrueBrain/gradients/TrueBrain/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_9_grad/Shape0TrueBrain/gradients/TrueBrain/mul_9_grad/Shape_1*
T0

,TrueBrain/gradients/TrueBrain/mul_9_grad/mulMulCTrueBrain/gradients/TrueBrain/add_3_grad/tuple/control_dependency_1TrueBrain/Mean_1*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_9_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_9_grad/mul>TrueBrain/gradients/TrueBrain/mul_9_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_9_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_9_grad/Sum.TrueBrain/gradients/TrueBrain/mul_9_grad/Shape*
T0*
Tshape0

.TrueBrain/gradients/TrueBrain/mul_9_grad/mul_1MulTrueBrain/mul_9/xCTrueBrain/gradients/TrueBrain/add_3_grad/tuple/control_dependency_1*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_9_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_9_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_9_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_9_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_9_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_9_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_9_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_9_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_9_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_9_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_9_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_9_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_9_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_9_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_9_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_9_grad/Reshape_1
`
7TrueBrain/gradients/TrueBrain/Mean_2_grad/Reshape/shapeConst*
valueB *
dtype0
Ò
1TrueBrain/gradients/TrueBrain/Mean_2_grad/ReshapeReshapeDTrueBrain/gradients/TrueBrain/mul_10_grad/tuple/control_dependency_17TrueBrain/gradients/TrueBrain/Mean_2_grad/Reshape/shape*
T0*
Tshape0
a
8TrueBrain/gradients/TrueBrain/Mean_2_grad/Tile/multiplesConst*
valueB *
dtype0
¾
.TrueBrain/gradients/TrueBrain/Mean_2_grad/TileTile1TrueBrain/gradients/TrueBrain/Mean_2_grad/Reshape8TrueBrain/gradients/TrueBrain/Mean_2_grad/Tile/multiples*
T0*

Tmultiples0
X
/TrueBrain/gradients/TrueBrain/Mean_2_grad/ShapeConst*
valueB *
dtype0
Z
1TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape_1Const*
valueB *
dtype0
¡
/TrueBrain/gradients/TrueBrain/Mean_2_grad/ConstConst*
valueB: *
dtype0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape

.TrueBrain/gradients/TrueBrain/Mean_2_grad/ProdProd/TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape/TrueBrain/gradients/TrueBrain/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape
£
1TrueBrain/gradients/TrueBrain/Mean_2_grad/Const_1Const*
valueB: *
dtype0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape

0TrueBrain/gradients/TrueBrain/Mean_2_grad/Prod_1Prod1TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape_11TrueBrain/gradients/TrueBrain/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape
¡
3TrueBrain/gradients/TrueBrain/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape
ð
1TrueBrain/gradients/TrueBrain/Mean_2_grad/MaximumMaximum0TrueBrain/gradients/TrueBrain/Mean_2_grad/Prod_13TrueBrain/gradients/TrueBrain/Mean_2_grad/Maximum/y*
T0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape
î
2TrueBrain/gradients/TrueBrain/Mean_2_grad/floordivFloorDiv.TrueBrain/gradients/TrueBrain/Mean_2_grad/Prod1TrueBrain/gradients/TrueBrain/Mean_2_grad/Maximum*
T0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_2_grad/Shape

.TrueBrain/gradients/TrueBrain/Mean_2_grad/CastCast2TrueBrain/gradients/TrueBrain/Mean_2_grad/floordiv*

SrcT0*

DstT0
¥
1TrueBrain/gradients/TrueBrain/Mean_2_grad/truedivRealDiv.TrueBrain/gradients/TrueBrain/Mean_2_grad/Tile.TrueBrain/gradients/TrueBrain/Mean_2_grad/Cast*
T0
j
5TrueBrain/gradients/TrueBrain/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0
´
/TrueBrain/gradients/TrueBrain/Mean_grad/ReshapeReshape*TrueBrain/gradients/TrueBrain/Neg_grad/Neg5TrueBrain/gradients/TrueBrain/Mean_grad/Reshape/shape*
T0*
Tshape0
b
-TrueBrain/gradients/TrueBrain/Mean_grad/ShapeShapeTrueBrain/Minimum*
T0*
out_type0
¯
,TrueBrain/gradients/TrueBrain/Mean_grad/TileTile/TrueBrain/gradients/TrueBrain/Mean_grad/Reshape-TrueBrain/gradients/TrueBrain/Mean_grad/Shape*
T0*

Tmultiples0
d
/TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1ShapeTrueBrain/Minimum*
T0*
out_type0
X
/TrueBrain/gradients/TrueBrain/Mean_grad/Shape_2Const*
valueB *
dtype0

-TrueBrain/gradients/TrueBrain/Mean_grad/ConstConst*
valueB: *
dtype0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1
þ
,TrueBrain/gradients/TrueBrain/Mean_grad/ProdProd/TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1-TrueBrain/gradients/TrueBrain/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1
¡
/TrueBrain/gradients/TrueBrain/Mean_grad/Const_1Const*
valueB: *
dtype0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1

.TrueBrain/gradients/TrueBrain/Mean_grad/Prod_1Prod/TrueBrain/gradients/TrueBrain/Mean_grad/Shape_2/TrueBrain/gradients/TrueBrain/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1

1TrueBrain/gradients/TrueBrain/Mean_grad/Maximum/yConst*
value	B :*
dtype0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1
ê
/TrueBrain/gradients/TrueBrain/Mean_grad/MaximumMaximum.TrueBrain/gradients/TrueBrain/Mean_grad/Prod_11TrueBrain/gradients/TrueBrain/Mean_grad/Maximum/y*
T0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1
è
0TrueBrain/gradients/TrueBrain/Mean_grad/floordivFloorDiv,TrueBrain/gradients/TrueBrain/Mean_grad/Prod/TrueBrain/gradients/TrueBrain/Mean_grad/Maximum*
T0*B
_class8
64loc:@TrueBrain/gradients/TrueBrain/Mean_grad/Shape_1
~
,TrueBrain/gradients/TrueBrain/Mean_grad/CastCast0TrueBrain/gradients/TrueBrain/Mean_grad/floordiv*

SrcT0*

DstT0

/TrueBrain/gradients/TrueBrain/Mean_grad/truedivRealDiv,TrueBrain/gradients/TrueBrain/Mean_grad/Tile,TrueBrain/gradients/TrueBrain/Mean_grad/Cast*
T0
e
7TrueBrain/gradients/TrueBrain/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0
Ñ
1TrueBrain/gradients/TrueBrain/Mean_1_grad/ReshapeReshapeCTrueBrain/gradients/TrueBrain/mul_9_grad/tuple/control_dependency_17TrueBrain/gradients/TrueBrain/Mean_1_grad/Reshape/shape*
T0*
Tshape0
n
/TrueBrain/gradients/TrueBrain/Mean_1_grad/ShapeShapeTrueBrain/SquaredDifference*
T0*
out_type0
µ
.TrueBrain/gradients/TrueBrain/Mean_1_grad/TileTile1TrueBrain/gradients/TrueBrain/Mean_1_grad/Reshape/TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape*
T0*

Tmultiples0
p
1TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1ShapeTrueBrain/SquaredDifference*
T0*
out_type0
Z
1TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_2Const*
valueB *
dtype0
£
/TrueBrain/gradients/TrueBrain/Mean_1_grad/ConstConst*
valueB: *
dtype0*D
_class:
86loc:@TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1

.TrueBrain/gradients/TrueBrain/Mean_1_grad/ProdProd1TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1/TrueBrain/gradients/TrueBrain/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0*D
_class:
86loc:@TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1
¥
1TrueBrain/gradients/TrueBrain/Mean_1_grad/Const_1Const*
valueB: *
dtype0*D
_class:
86loc:@TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1

0TrueBrain/gradients/TrueBrain/Mean_1_grad/Prod_1Prod1TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_21TrueBrain/gradients/TrueBrain/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0*D
_class:
86loc:@TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1
£
3TrueBrain/gradients/TrueBrain/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*D
_class:
86loc:@TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1
ò
1TrueBrain/gradients/TrueBrain/Mean_1_grad/MaximumMaximum0TrueBrain/gradients/TrueBrain/Mean_1_grad/Prod_13TrueBrain/gradients/TrueBrain/Mean_1_grad/Maximum/y*
T0*D
_class:
86loc:@TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1
ð
2TrueBrain/gradients/TrueBrain/Mean_1_grad/floordivFloorDiv.TrueBrain/gradients/TrueBrain/Mean_1_grad/Prod1TrueBrain/gradients/TrueBrain/Mean_1_grad/Maximum*
T0*D
_class:
86loc:@TrueBrain/gradients/TrueBrain/Mean_1_grad/Shape_1

.TrueBrain/gradients/TrueBrain/Mean_1_grad/CastCast2TrueBrain/gradients/TrueBrain/Mean_1_grad/floordiv*

SrcT0*

DstT0
¥
1TrueBrain/gradients/TrueBrain/Mean_1_grad/truedivRealDiv.TrueBrain/gradients/TrueBrain/Mean_1_grad/Tile.TrueBrain/gradients/TrueBrain/Mean_1_grad/Cast*
T0
b
4TrueBrain/gradients/TrueBrain/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0
¹
.TrueBrain/gradients/TrueBrain/Sum_grad/ReshapeReshape1TrueBrain/gradients/TrueBrain/Mean_2_grad/truediv4TrueBrain/gradients/TrueBrain/Sum_grad/Reshape/shape*
T0*
Tshape0
c
5TrueBrain/gradients/TrueBrain/Sum_grad/Tile/multiplesConst*
valueB:*
dtype0
µ
+TrueBrain/gradients/TrueBrain/Sum_grad/TileTile.TrueBrain/gradients/TrueBrain/Sum_grad/Reshape5TrueBrain/gradients/TrueBrain/Sum_grad/Tile/multiples*
T0*

Tmultiples0
c
0TrueBrain/gradients/TrueBrain/Minimum_grad/ShapeShapeTrueBrain/mul_7*
T0*
out_type0
e
2TrueBrain/gradients/TrueBrain/Minimum_grad/Shape_1ShapeTrueBrain/mul_8*
T0*
out_type0

2TrueBrain/gradients/TrueBrain/Minimum_grad/Shape_2Shape/TrueBrain/gradients/TrueBrain/Mean_grad/truediv*
T0*
out_type0
c
6TrueBrain/gradients/TrueBrain/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
­
0TrueBrain/gradients/TrueBrain/Minimum_grad/zerosFill2TrueBrain/gradients/TrueBrain/Minimum_grad/Shape_26TrueBrain/gradients/TrueBrain/Minimum_grad/zeros/Const*
T0
l
4TrueBrain/gradients/TrueBrain/Minimum_grad/LessEqual	LessEqualTrueBrain/mul_7TrueBrain/mul_8*
T0
È
@TrueBrain/gradients/TrueBrain/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs0TrueBrain/gradients/TrueBrain/Minimum_grad/Shape2TrueBrain/gradients/TrueBrain/Minimum_grad/Shape_1*
T0
Ý
1TrueBrain/gradients/TrueBrain/Minimum_grad/SelectSelect4TrueBrain/gradients/TrueBrain/Minimum_grad/LessEqual/TrueBrain/gradients/TrueBrain/Mean_grad/truediv0TrueBrain/gradients/TrueBrain/Minimum_grad/zeros*
T0
ß
3TrueBrain/gradients/TrueBrain/Minimum_grad/Select_1Select4TrueBrain/gradients/TrueBrain/Minimum_grad/LessEqual0TrueBrain/gradients/TrueBrain/Minimum_grad/zeros/TrueBrain/gradients/TrueBrain/Mean_grad/truediv*
T0
Ð
.TrueBrain/gradients/TrueBrain/Minimum_grad/SumSum1TrueBrain/gradients/TrueBrain/Minimum_grad/Select@TrueBrain/gradients/TrueBrain/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/Minimum_grad/ReshapeReshape.TrueBrain/gradients/TrueBrain/Minimum_grad/Sum0TrueBrain/gradients/TrueBrain/Minimum_grad/Shape*
T0*
Tshape0
Ö
0TrueBrain/gradients/TrueBrain/Minimum_grad/Sum_1Sum3TrueBrain/gradients/TrueBrain/Minimum_grad/Select_1BTrueBrain/gradients/TrueBrain/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¼
4TrueBrain/gradients/TrueBrain/Minimum_grad/Reshape_1Reshape0TrueBrain/gradients/TrueBrain/Minimum_grad/Sum_12TrueBrain/gradients/TrueBrain/Minimum_grad/Shape_1*
T0*
Tshape0
¯
;TrueBrain/gradients/TrueBrain/Minimum_grad/tuple/group_depsNoOp3^TrueBrain/gradients/TrueBrain/Minimum_grad/Reshape5^TrueBrain/gradients/TrueBrain/Minimum_grad/Reshape_1

CTrueBrain/gradients/TrueBrain/Minimum_grad/tuple/control_dependencyIdentity2TrueBrain/gradients/TrueBrain/Minimum_grad/Reshape<^TrueBrain/gradients/TrueBrain/Minimum_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/Minimum_grad/Reshape

ETrueBrain/gradients/TrueBrain/Minimum_grad/tuple/control_dependency_1Identity4TrueBrain/gradients/TrueBrain/Minimum_grad/Reshape_1<^TrueBrain/gradients/TrueBrain/Minimum_grad/tuple/group_deps*
T0*G
_class=
;9loc:@TrueBrain/gradients/TrueBrain/Minimum_grad/Reshape_1
z
:TrueBrain/gradients/TrueBrain/SquaredDifference_grad/ShapeShapeTrueBrain/discounted_rewards*
T0*
out_type0
o
<TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Shape_1ShapeTrueBrain/Sum_1*
T0*
out_type0
æ
JTrueBrain/gradients/TrueBrain/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs:TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Shape<TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Shape_1*
T0

;TrueBrain/gradients/TrueBrain/SquaredDifference_grad/scalarConst2^TrueBrain/gradients/TrueBrain/Mean_1_grad/truediv*
valueB
 *   @*
dtype0
¸
8TrueBrain/gradients/TrueBrain/SquaredDifference_grad/mulMul;TrueBrain/gradients/TrueBrain/SquaredDifference_grad/scalar1TrueBrain/gradients/TrueBrain/Mean_1_grad/truediv*
T0
«
8TrueBrain/gradients/TrueBrain/SquaredDifference_grad/subSubTrueBrain/discounted_rewardsTrueBrain/Sum_12^TrueBrain/gradients/TrueBrain/Mean_1_grad/truediv*
T0
¾
:TrueBrain/gradients/TrueBrain/SquaredDifference_grad/mul_1Mul8TrueBrain/gradients/TrueBrain/SquaredDifference_grad/mul8TrueBrain/gradients/TrueBrain/SquaredDifference_grad/sub*
T0
í
8TrueBrain/gradients/TrueBrain/SquaredDifference_grad/SumSum:TrueBrain/gradients/TrueBrain/SquaredDifference_grad/mul_1JTrueBrain/gradients/TrueBrain/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Ô
<TrueBrain/gradients/TrueBrain/SquaredDifference_grad/ReshapeReshape8TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Sum:TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Shape*
T0*
Tshape0
ñ
:TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Sum_1Sum:TrueBrain/gradients/TrueBrain/SquaredDifference_grad/mul_1LTrueBrain/gradients/TrueBrain/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ú
>TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Reshape_1Reshape:TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Sum_1<TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Shape_1*
T0*
Tshape0

8TrueBrain/gradients/TrueBrain/SquaredDifference_grad/NegNeg>TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Reshape_1*
T0
Ç
ETrueBrain/gradients/TrueBrain/SquaredDifference_grad/tuple/group_depsNoOp=^TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Reshape9^TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Neg
¹
MTrueBrain/gradients/TrueBrain/SquaredDifference_grad/tuple/control_dependencyIdentity<TrueBrain/gradients/TrueBrain/SquaredDifference_grad/ReshapeF^TrueBrain/gradients/TrueBrain/SquaredDifference_grad/tuple/group_deps*
T0*O
_classE
CAloc:@TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Reshape
³
OTrueBrain/gradients/TrueBrain/SquaredDifference_grad/tuple/control_dependency_1Identity8TrueBrain/gradients/TrueBrain/SquaredDifference_grad/NegF^TrueBrain/gradients/TrueBrain/SquaredDifference_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/SquaredDifference_grad/Neg
W
.TrueBrain/gradients/TrueBrain/mul_6_grad/ShapeConst*
valueB *
dtype0
^
0TrueBrain/gradients/TrueBrain/mul_6_grad/Shape_1Const*
valueB:*
dtype0
Â
>TrueBrain/gradients/TrueBrain/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_6_grad/Shape0TrueBrain/gradients/TrueBrain/mul_6_grad/Shape_1*
T0
x
,TrueBrain/gradients/TrueBrain/mul_6_grad/mulMul+TrueBrain/gradients/TrueBrain/Sum_grad/TileTrueBrain/Log*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_6_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_6_grad/mul>TrueBrain/gradients/TrueBrain/mul_6_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_6_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_6_grad/Sum.TrueBrain/gradients/TrueBrain/mul_6_grad/Shape*
T0*
Tshape0
~
.TrueBrain/gradients/TrueBrain/mul_6_grad/mul_1MulTrueBrain/mul_6/x+TrueBrain/gradients/TrueBrain/Sum_grad/Tile*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_6_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_6_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_6_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_6_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_6_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_6_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_6_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_6_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_6_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_6_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_6_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_6_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_6_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_6_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_6_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_6_grad/Reshape_1
e
.TrueBrain/gradients/TrueBrain/mul_7_grad/ShapeShapeTrueBrain/truediv_2*
T0*
out_type0
h
0TrueBrain/gradients/TrueBrain/mul_7_grad/Shape_1ShapeTrueBrain/advantages*
T0*
out_type0
Â
>TrueBrain/gradients/TrueBrain/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_7_grad/Shape0TrueBrain/gradients/TrueBrain/mul_7_grad/Shape_1*
T0

,TrueBrain/gradients/TrueBrain/mul_7_grad/mulMulCTrueBrain/gradients/TrueBrain/Minimum_grad/tuple/control_dependencyTrueBrain/advantages*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_7_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_7_grad/mul>TrueBrain/gradients/TrueBrain/mul_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_7_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_7_grad/Sum.TrueBrain/gradients/TrueBrain/mul_7_grad/Shape*
T0*
Tshape0

.TrueBrain/gradients/TrueBrain/mul_7_grad/mul_1MulTrueBrain/truediv_2CTrueBrain/gradients/TrueBrain/Minimum_grad/tuple/control_dependency*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_7_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_7_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_7_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_7_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_7_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_7_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_7_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_7_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_7_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_7_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_7_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_7_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_7_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_7_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_7_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_7_grad/Reshape_1
i
.TrueBrain/gradients/TrueBrain/mul_8_grad/ShapeShapeTrueBrain/clip_by_value*
T0*
out_type0
h
0TrueBrain/gradients/TrueBrain/mul_8_grad/Shape_1ShapeTrueBrain/advantages*
T0*
out_type0
Â
>TrueBrain/gradients/TrueBrain/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_8_grad/Shape0TrueBrain/gradients/TrueBrain/mul_8_grad/Shape_1*
T0

,TrueBrain/gradients/TrueBrain/mul_8_grad/mulMulETrueBrain/gradients/TrueBrain/Minimum_grad/tuple/control_dependency_1TrueBrain/advantages*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_8_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_8_grad/mul>TrueBrain/gradients/TrueBrain/mul_8_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_8_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_8_grad/Sum.TrueBrain/gradients/TrueBrain/mul_8_grad/Shape*
T0*
Tshape0

.TrueBrain/gradients/TrueBrain/mul_8_grad/mul_1MulTrueBrain/clip_by_valueETrueBrain/gradients/TrueBrain/Minimum_grad/tuple/control_dependency_1*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_8_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_8_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_8_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_8_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_8_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_8_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_8_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_8_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_8_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_8_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_8_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_8_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_8_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_8_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_8_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_8_grad/Reshape_1
j
.TrueBrain/gradients/TrueBrain/Sum_1_grad/ShapeShapeTrueBrain/value_estimate*
T0*
out_type0

-TrueBrain/gradients/TrueBrain/Sum_1_grad/SizeConst*
value	B :*
dtype0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
Ñ
,TrueBrain/gradients/TrueBrain/Sum_1_grad/addAdd!TrueBrain/Sum_1/reduction_indices-TrueBrain/gradients/TrueBrain/Sum_1_grad/Size*
T0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
á
,TrueBrain/gradients/TrueBrain/Sum_1_grad/modFloorMod,TrueBrain/gradients/TrueBrain/Sum_1_grad/add-TrueBrain/gradients/TrueBrain/Sum_1_grad/Size*
T0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape

0TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape_1Const*
valueB *
dtype0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
¡
4TrueBrain/gradients/TrueBrain/Sum_1_grad/range/startConst*
value	B : *
dtype0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
¡
4TrueBrain/gradients/TrueBrain/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
¡
.TrueBrain/gradients/TrueBrain/Sum_1_grad/rangeRange4TrueBrain/gradients/TrueBrain/Sum_1_grad/range/start-TrueBrain/gradients/TrueBrain/Sum_1_grad/Size4TrueBrain/gradients/TrueBrain/Sum_1_grad/range/delta*

Tidx0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
 
3TrueBrain/gradients/TrueBrain/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
è
-TrueBrain/gradients/TrueBrain/Sum_1_grad/FillFill0TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape_13TrueBrain/gradients/TrueBrain/Sum_1_grad/Fill/value*
T0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
Ù
6TrueBrain/gradients/TrueBrain/Sum_1_grad/DynamicStitchDynamicStitch.TrueBrain/gradients/TrueBrain/Sum_1_grad/range,TrueBrain/gradients/TrueBrain/Sum_1_grad/mod.TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape-TrueBrain/gradients/TrueBrain/Sum_1_grad/Fill*
N*
T0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape

2TrueBrain/gradients/TrueBrain/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
ó
0TrueBrain/gradients/TrueBrain/Sum_1_grad/MaximumMaximum6TrueBrain/gradients/TrueBrain/Sum_1_grad/DynamicStitch2TrueBrain/gradients/TrueBrain/Sum_1_grad/Maximum/y*
T0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
ë
1TrueBrain/gradients/TrueBrain/Sum_1_grad/floordivFloorDiv.TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape0TrueBrain/gradients/TrueBrain/Sum_1_grad/Maximum*
T0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Shape
Û
0TrueBrain/gradients/TrueBrain/Sum_1_grad/ReshapeReshapeOTrueBrain/gradients/TrueBrain/SquaredDifference_grad/tuple/control_dependency_16TrueBrain/gradients/TrueBrain/Sum_1_grad/DynamicStitch*
T0*
Tshape0
µ
-TrueBrain/gradients/TrueBrain/Sum_1_grad/TileTile0TrueBrain/gradients/TrueBrain/Sum_1_grad/Reshape1TrueBrain/gradients/TrueBrain/Sum_1_grad/floordiv*
T0*

Tmultiples0

1TrueBrain/gradients/TrueBrain/Log_grad/Reciprocal
ReciprocalTrueBrain/mul_5D^TrueBrain/gradients/TrueBrain/mul_6_grad/tuple/control_dependency_1*
T0
²
*TrueBrain/gradients/TrueBrain/Log_grad/mulMulCTrueBrain/gradients/TrueBrain/mul_6_grad/tuple/control_dependency_11TrueBrain/gradients/TrueBrain/Log_grad/Reciprocal*
T0
y
6TrueBrain/gradients/TrueBrain/clip_by_value_grad/ShapeShapeTrueBrain/clip_by_value/Minimum*
T0*
out_type0
a
8TrueBrain/gradients/TrueBrain/clip_by_value_grad/Shape_1Const*
valueB *
dtype0

8TrueBrain/gradients/TrueBrain/clip_by_value_grad/Shape_2ShapeATrueBrain/gradients/TrueBrain/mul_8_grad/tuple/control_dependency*
T0*
out_type0
i
<TrueBrain/gradients/TrueBrain/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0
¿
6TrueBrain/gradients/TrueBrain/clip_by_value_grad/zerosFill8TrueBrain/gradients/TrueBrain/clip_by_value_grad/Shape_2<TrueBrain/gradients/TrueBrain/clip_by_value_grad/zeros/Const*
T0

=TrueBrain/gradients/TrueBrain/clip_by_value_grad/GreaterEqualGreaterEqualTrueBrain/clip_by_value/MinimumTrueBrain/sub_1*
T0
Ú
FTrueBrain/gradients/TrueBrain/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs6TrueBrain/gradients/TrueBrain/clip_by_value_grad/Shape8TrueBrain/gradients/TrueBrain/clip_by_value_grad/Shape_1*
T0

7TrueBrain/gradients/TrueBrain/clip_by_value_grad/SelectSelect=TrueBrain/gradients/TrueBrain/clip_by_value_grad/GreaterEqualATrueBrain/gradients/TrueBrain/mul_8_grad/tuple/control_dependency6TrueBrain/gradients/TrueBrain/clip_by_value_grad/zeros*
T0

9TrueBrain/gradients/TrueBrain/clip_by_value_grad/Select_1Select=TrueBrain/gradients/TrueBrain/clip_by_value_grad/GreaterEqual6TrueBrain/gradients/TrueBrain/clip_by_value_grad/zerosATrueBrain/gradients/TrueBrain/mul_8_grad/tuple/control_dependency*
T0
â
4TrueBrain/gradients/TrueBrain/clip_by_value_grad/SumSum7TrueBrain/gradients/TrueBrain/clip_by_value_grad/SelectFTrueBrain/gradients/TrueBrain/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
È
8TrueBrain/gradients/TrueBrain/clip_by_value_grad/ReshapeReshape4TrueBrain/gradients/TrueBrain/clip_by_value_grad/Sum6TrueBrain/gradients/TrueBrain/clip_by_value_grad/Shape*
T0*
Tshape0
è
6TrueBrain/gradients/TrueBrain/clip_by_value_grad/Sum_1Sum9TrueBrain/gradients/TrueBrain/clip_by_value_grad/Select_1HTrueBrain/gradients/TrueBrain/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Î
:TrueBrain/gradients/TrueBrain/clip_by_value_grad/Reshape_1Reshape6TrueBrain/gradients/TrueBrain/clip_by_value_grad/Sum_18TrueBrain/gradients/TrueBrain/clip_by_value_grad/Shape_1*
T0*
Tshape0
Á
ATrueBrain/gradients/TrueBrain/clip_by_value_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/clip_by_value_grad/Reshape;^TrueBrain/gradients/TrueBrain/clip_by_value_grad/Reshape_1
©
ITrueBrain/gradients/TrueBrain/clip_by_value_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/clip_by_value_grad/ReshapeB^TrueBrain/gradients/TrueBrain/clip_by_value_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/clip_by_value_grad/Reshape
¯
KTrueBrain/gradients/TrueBrain/clip_by_value_grad/tuple/control_dependency_1Identity:TrueBrain/gradients/TrueBrain/clip_by_value_grad/Reshape_1B^TrueBrain/gradients/TrueBrain/clip_by_value_grad/tuple/group_deps*
T0*M
_classC
A?loc:@TrueBrain/gradients/TrueBrain/clip_by_value_grad/Reshape_1
W
.TrueBrain/gradients/TrueBrain/mul_5_grad/ShapeConst*
valueB *
dtype0
^
0TrueBrain/gradients/TrueBrain/mul_5_grad/Shape_1Const*
valueB:*
dtype0
Â
>TrueBrain/gradients/TrueBrain/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_5_grad/Shape0TrueBrain/gradients/TrueBrain/mul_5_grad/Shape_1*
T0
w
,TrueBrain/gradients/TrueBrain/mul_5_grad/mulMul*TrueBrain/gradients/TrueBrain/Log_grad/mulTrueBrain/Exp*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_5_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_5_grad/mul>TrueBrain/gradients/TrueBrain/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_5_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_5_grad/Sum.TrueBrain/gradients/TrueBrain/mul_5_grad/Shape*
T0*
Tshape0
}
.TrueBrain/gradients/TrueBrain/mul_5_grad/mul_1MulTrueBrain/mul_5/x*TrueBrain/gradients/TrueBrain/Log_grad/mul*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_5_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_5_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_5_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_5_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_5_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_5_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_5_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_5_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_5_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_5_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_5_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_5_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_5_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_5_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_5_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_5_grad/Reshape_1
u
>TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/ShapeShapeTrueBrain/truediv_2*
T0*
out_type0
i
@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0
­
@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Shape_2ShapeITrueBrain/gradients/TrueBrain/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
q
DTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
×
>TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/zerosFill@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Shape_2DTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/zeros/Const*
T0
~
BTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/LessEqual	LessEqualTrueBrain/truediv_2TrueBrain/add_2*
T0
ò
NTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs>TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Shape@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Shape_1*
T0
¡
?TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/SelectSelectBTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/LessEqualITrueBrain/gradients/TrueBrain/clip_by_value_grad/tuple/control_dependency>TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/zeros*
T0
£
ATrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Select_1SelectBTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/LessEqual>TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/zerosITrueBrain/gradients/TrueBrain/clip_by_value_grad/tuple/control_dependency*
T0
ú
<TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/SumSum?TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/SelectNTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
à
@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/ReshapeReshape<TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Sum>TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0

>TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Sum_1SumATrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Select_1PTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
æ
BTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Reshape_1Reshape>TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Sum_1@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0
Ù
ITrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/tuple/group_depsNoOpA^TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/ReshapeC^TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Reshape_1
É
QTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/ReshapeJ^TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/tuple/group_deps*
T0*S
_classI
GEloc:@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Reshape
Ï
STrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityBTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Reshape_1J^TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/tuple/group_deps*
T0*U
_classK
IGloc:@TrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/Reshape_1

>TrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/BiasAddGradBiasAddGrad-TrueBrain/gradients/TrueBrain/Sum_1_grad/Tile*
T0*
data_formatNHWC
¼
CTrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/tuple/group_depsNoOp.^TrueBrain/gradients/TrueBrain/Sum_1_grad/Tile?^TrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/BiasAddGrad

KTrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/tuple/control_dependencyIdentity-TrueBrain/gradients/TrueBrain/Sum_1_grad/TileD^TrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@TrueBrain/gradients/TrueBrain/Sum_1_grad/Tile
»
MTrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/tuple/control_dependency_1Identity>TrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/BiasAddGradD^TrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@TrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/BiasAddGrad

TrueBrain/gradients/AddNAddNATrueBrain/gradients/TrueBrain/mul_7_grad/tuple/control_dependencyQTrueBrain/gradients/TrueBrain/clip_by_value/Minimum_grad/tuple/control_dependency*
N*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_7_grad/Reshape
l
2TrueBrain/gradients/TrueBrain/truediv_2_grad/ShapeShapeTrueBrain/action_probs*
T0*
out_type0
g
4TrueBrain/gradients/TrueBrain/truediv_2_grad/Shape_1ShapeTrueBrain/add_1*
T0*
out_type0
Î
BTrueBrain/gradients/TrueBrain/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs2TrueBrain/gradients/TrueBrain/truediv_2_grad/Shape4TrueBrain/gradients/TrueBrain/truediv_2_grad/Shape_1*
T0
s
4TrueBrain/gradients/TrueBrain/truediv_2_grad/RealDivRealDivTrueBrain/gradients/AddNTrueBrain/add_1*
T0
×
0TrueBrain/gradients/TrueBrain/truediv_2_grad/SumSum4TrueBrain/gradients/TrueBrain/truediv_2_grad/RealDivBTrueBrain/gradients/TrueBrain/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4TrueBrain/gradients/TrueBrain/truediv_2_grad/ReshapeReshape0TrueBrain/gradients/TrueBrain/truediv_2_grad/Sum2TrueBrain/gradients/TrueBrain/truediv_2_grad/Shape*
T0*
Tshape0
X
0TrueBrain/gradients/TrueBrain/truediv_2_grad/NegNegTrueBrain/action_probs*
T0

6TrueBrain/gradients/TrueBrain/truediv_2_grad/RealDiv_1RealDiv0TrueBrain/gradients/TrueBrain/truediv_2_grad/NegTrueBrain/add_1*
T0

6TrueBrain/gradients/TrueBrain/truediv_2_grad/RealDiv_2RealDiv6TrueBrain/gradients/TrueBrain/truediv_2_grad/RealDiv_1TrueBrain/add_1*
T0

0TrueBrain/gradients/TrueBrain/truediv_2_grad/mulMulTrueBrain/gradients/AddN6TrueBrain/gradients/TrueBrain/truediv_2_grad/RealDiv_2*
T0
×
2TrueBrain/gradients/TrueBrain/truediv_2_grad/Sum_1Sum0TrueBrain/gradients/TrueBrain/truediv_2_grad/mulDTrueBrain/gradients/TrueBrain/truediv_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Â
6TrueBrain/gradients/TrueBrain/truediv_2_grad/Reshape_1Reshape2TrueBrain/gradients/TrueBrain/truediv_2_grad/Sum_14TrueBrain/gradients/TrueBrain/truediv_2_grad/Shape_1*
T0*
Tshape0
µ
=TrueBrain/gradients/TrueBrain/truediv_2_grad/tuple/group_depsNoOp5^TrueBrain/gradients/TrueBrain/truediv_2_grad/Reshape7^TrueBrain/gradients/TrueBrain/truediv_2_grad/Reshape_1

ETrueBrain/gradients/TrueBrain/truediv_2_grad/tuple/control_dependencyIdentity4TrueBrain/gradients/TrueBrain/truediv_2_grad/Reshape>^TrueBrain/gradients/TrueBrain/truediv_2_grad/tuple/group_deps*
T0*G
_class=
;9loc:@TrueBrain/gradients/TrueBrain/truediv_2_grad/Reshape

GTrueBrain/gradients/TrueBrain/truediv_2_grad/tuple/control_dependency_1Identity6TrueBrain/gradients/TrueBrain/truediv_2_grad/Reshape_1>^TrueBrain/gradients/TrueBrain/truediv_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@TrueBrain/gradients/TrueBrain/truediv_2_grad/Reshape_1
Ý
8TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/MatMulMatMulKTrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/tuple/control_dependencyTrueBrain/dense_5/kernel/read*
transpose_a( *
transpose_b(*
T0
Ø
:TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/MatMul_1MatMulTrueBrain/dense_4/TanhKTrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
Â
BTrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/MatMul;^TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/MatMul_1
«
JTrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/MatMulC^TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/MatMul
±
LTrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/tuple/control_dependency_1Identity:TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/MatMul_1C^TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@TrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/MatMul_1
h
5TrueBrain/gradients/TrueBrain/action_probs_grad/ShapeShapeTrueBrain/Exp_1*
T0*
out_type0
e
7TrueBrain/gradients/TrueBrain/action_probs_grad/Shape_1Const*
valueB:*
dtype0
×
ETrueBrain/gradients/TrueBrain/action_probs_grad/BroadcastGradientArgsBroadcastGradientArgs5TrueBrain/gradients/TrueBrain/action_probs_grad/Shape7TrueBrain/gradients/TrueBrain/action_probs_grad/Shape_1*
T0

3TrueBrain/gradients/TrueBrain/action_probs_grad/mulMulETrueBrain/gradients/TrueBrain/truediv_2_grad/tuple/control_dependencyTrueBrain/truediv_1*
T0
Ü
3TrueBrain/gradients/TrueBrain/action_probs_grad/SumSum3TrueBrain/gradients/TrueBrain/action_probs_grad/mulETrueBrain/gradients/TrueBrain/action_probs_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
Å
7TrueBrain/gradients/TrueBrain/action_probs_grad/ReshapeReshape3TrueBrain/gradients/TrueBrain/action_probs_grad/Sum5TrueBrain/gradients/TrueBrain/action_probs_grad/Shape*
T0*
Tshape0

5TrueBrain/gradients/TrueBrain/action_probs_grad/mul_1MulTrueBrain/Exp_1ETrueBrain/gradients/TrueBrain/truediv_2_grad/tuple/control_dependency*
T0
â
5TrueBrain/gradients/TrueBrain/action_probs_grad/Sum_1Sum5TrueBrain/gradients/TrueBrain/action_probs_grad/mul_1GTrueBrain/gradients/TrueBrain/action_probs_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Ë
9TrueBrain/gradients/TrueBrain/action_probs_grad/Reshape_1Reshape5TrueBrain/gradients/TrueBrain/action_probs_grad/Sum_17TrueBrain/gradients/TrueBrain/action_probs_grad/Shape_1*
T0*
Tshape0
¾
@TrueBrain/gradients/TrueBrain/action_probs_grad/tuple/group_depsNoOp8^TrueBrain/gradients/TrueBrain/action_probs_grad/Reshape:^TrueBrain/gradients/TrueBrain/action_probs_grad/Reshape_1
¥
HTrueBrain/gradients/TrueBrain/action_probs_grad/tuple/control_dependencyIdentity7TrueBrain/gradients/TrueBrain/action_probs_grad/ReshapeA^TrueBrain/gradients/TrueBrain/action_probs_grad/tuple/group_deps*
T0*J
_class@
><loc:@TrueBrain/gradients/TrueBrain/action_probs_grad/Reshape
«
JTrueBrain/gradients/TrueBrain/action_probs_grad/tuple/control_dependency_1Identity9TrueBrain/gradients/TrueBrain/action_probs_grad/Reshape_1A^TrueBrain/gradients/TrueBrain/action_probs_grad/tuple/group_deps*
T0*L
_classB
@>loc:@TrueBrain/gradients/TrueBrain/action_probs_grad/Reshape_1
±
8TrueBrain/gradients/TrueBrain/dense_4/Tanh_grad/TanhGradTanhGradTrueBrain/dense_4/TanhJTrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/tuple/control_dependency*
T0

,TrueBrain/gradients/TrueBrain/Exp_1_grad/mulMulHTrueBrain/gradients/TrueBrain/action_probs_grad/tuple/control_dependencyTrueBrain/Exp_1*
T0
[
2TrueBrain/gradients/TrueBrain/truediv_1_grad/ShapeConst*
valueB *
dtype0
b
4TrueBrain/gradients/TrueBrain/truediv_1_grad/Shape_1Const*
valueB:*
dtype0
Î
BTrueBrain/gradients/TrueBrain/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs2TrueBrain/gradients/TrueBrain/truediv_1_grad/Shape4TrueBrain/gradients/TrueBrain/truediv_1_grad/Shape_1*
T0
¦
4TrueBrain/gradients/TrueBrain/truediv_1_grad/RealDivRealDivJTrueBrain/gradients/TrueBrain/action_probs_grad/tuple/control_dependency_1TrueBrain/Sqrt_1*
T0
×
0TrueBrain/gradients/TrueBrain/truediv_1_grad/SumSum4TrueBrain/gradients/TrueBrain/truediv_1_grad/RealDivBTrueBrain/gradients/TrueBrain/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¼
4TrueBrain/gradients/TrueBrain/truediv_1_grad/ReshapeReshape0TrueBrain/gradients/TrueBrain/truediv_1_grad/Sum2TrueBrain/gradients/TrueBrain/truediv_1_grad/Shape*
T0*
Tshape0
W
0TrueBrain/gradients/TrueBrain/truediv_1_grad/NegNegTrueBrain/truediv_1/x*
T0

6TrueBrain/gradients/TrueBrain/truediv_1_grad/RealDiv_1RealDiv0TrueBrain/gradients/TrueBrain/truediv_1_grad/NegTrueBrain/Sqrt_1*
T0

6TrueBrain/gradients/TrueBrain/truediv_1_grad/RealDiv_2RealDiv6TrueBrain/gradients/TrueBrain/truediv_1_grad/RealDiv_1TrueBrain/Sqrt_1*
T0
Ä
0TrueBrain/gradients/TrueBrain/truediv_1_grad/mulMulJTrueBrain/gradients/TrueBrain/action_probs_grad/tuple/control_dependency_16TrueBrain/gradients/TrueBrain/truediv_1_grad/RealDiv_2*
T0
×
2TrueBrain/gradients/TrueBrain/truediv_1_grad/Sum_1Sum0TrueBrain/gradients/TrueBrain/truediv_1_grad/mulDTrueBrain/gradients/TrueBrain/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
Â
6TrueBrain/gradients/TrueBrain/truediv_1_grad/Reshape_1Reshape2TrueBrain/gradients/TrueBrain/truediv_1_grad/Sum_14TrueBrain/gradients/TrueBrain/truediv_1_grad/Shape_1*
T0*
Tshape0
µ
=TrueBrain/gradients/TrueBrain/truediv_1_grad/tuple/group_depsNoOp5^TrueBrain/gradients/TrueBrain/truediv_1_grad/Reshape7^TrueBrain/gradients/TrueBrain/truediv_1_grad/Reshape_1

ETrueBrain/gradients/TrueBrain/truediv_1_grad/tuple/control_dependencyIdentity4TrueBrain/gradients/TrueBrain/truediv_1_grad/Reshape>^TrueBrain/gradients/TrueBrain/truediv_1_grad/tuple/group_deps*
T0*G
_class=
;9loc:@TrueBrain/gradients/TrueBrain/truediv_1_grad/Reshape

GTrueBrain/gradients/TrueBrain/truediv_1_grad/tuple/control_dependency_1Identity6TrueBrain/gradients/TrueBrain/truediv_1_grad/Reshape_1>^TrueBrain/gradients/TrueBrain/truediv_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@TrueBrain/gradients/TrueBrain/truediv_1_grad/Reshape_1
§
>TrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad8TrueBrain/gradients/TrueBrain/dense_4/Tanh_grad/TanhGrad*
T0*
data_formatNHWC
Ç
CTrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/dense_4/Tanh_grad/TanhGrad?^TrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/BiasAddGrad
­
KTrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/dense_4/Tanh_grad/TanhGradD^TrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense_4/Tanh_grad/TanhGrad
»
MTrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity>TrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/BiasAddGradD^TrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@TrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/BiasAddGrad
c
0TrueBrain/gradients/TrueBrain/truediv_grad/ShapeShapeTrueBrain/mul_1*
T0*
out_type0
`
2TrueBrain/gradients/TrueBrain/truediv_grad/Shape_1Const*
valueB:*
dtype0
È
@TrueBrain/gradients/TrueBrain/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs0TrueBrain/gradients/TrueBrain/truediv_grad/Shape2TrueBrain/gradients/TrueBrain/truediv_grad/Shape_1*
T0

2TrueBrain/gradients/TrueBrain/truediv_grad/RealDivRealDiv,TrueBrain/gradients/TrueBrain/Exp_1_grad/mulTrueBrain/mul_2*
T0
Ñ
.TrueBrain/gradients/TrueBrain/truediv_grad/SumSum2TrueBrain/gradients/TrueBrain/truediv_grad/RealDiv@TrueBrain/gradients/TrueBrain/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/truediv_grad/ReshapeReshape.TrueBrain/gradients/TrueBrain/truediv_grad/Sum0TrueBrain/gradients/TrueBrain/truediv_grad/Shape*
T0*
Tshape0
O
.TrueBrain/gradients/TrueBrain/truediv_grad/NegNegTrueBrain/mul_1*
T0

4TrueBrain/gradients/TrueBrain/truediv_grad/RealDiv_1RealDiv.TrueBrain/gradients/TrueBrain/truediv_grad/NegTrueBrain/mul_2*
T0

4TrueBrain/gradients/TrueBrain/truediv_grad/RealDiv_2RealDiv4TrueBrain/gradients/TrueBrain/truediv_grad/RealDiv_1TrueBrain/mul_2*
T0
¢
.TrueBrain/gradients/TrueBrain/truediv_grad/mulMul,TrueBrain/gradients/TrueBrain/Exp_1_grad/mul4TrueBrain/gradients/TrueBrain/truediv_grad/RealDiv_2*
T0
Ñ
0TrueBrain/gradients/TrueBrain/truediv_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/truediv_grad/mulBTrueBrain/gradients/TrueBrain/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¼
4TrueBrain/gradients/TrueBrain/truediv_grad/Reshape_1Reshape0TrueBrain/gradients/TrueBrain/truediv_grad/Sum_12TrueBrain/gradients/TrueBrain/truediv_grad/Shape_1*
T0*
Tshape0
¯
;TrueBrain/gradients/TrueBrain/truediv_grad/tuple/group_depsNoOp3^TrueBrain/gradients/TrueBrain/truediv_grad/Reshape5^TrueBrain/gradients/TrueBrain/truediv_grad/Reshape_1

CTrueBrain/gradients/TrueBrain/truediv_grad/tuple/control_dependencyIdentity2TrueBrain/gradients/TrueBrain/truediv_grad/Reshape<^TrueBrain/gradients/TrueBrain/truediv_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/truediv_grad/Reshape

ETrueBrain/gradients/TrueBrain/truediv_grad/tuple/control_dependency_1Identity4TrueBrain/gradients/TrueBrain/truediv_grad/Reshape_1<^TrueBrain/gradients/TrueBrain/truediv_grad/tuple/group_deps*
T0*G
_class=
;9loc:@TrueBrain/gradients/TrueBrain/truediv_grad/Reshape_1
¢
2TrueBrain/gradients/TrueBrain/Sqrt_1_grad/SqrtGradSqrtGradTrueBrain/Sqrt_1GTrueBrain/gradients/TrueBrain/truediv_1_grad/tuple/control_dependency_1*
T0
Ý
8TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/MatMulMatMulKTrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/tuple/control_dependencyTrueBrain/dense_3/kernel/read*
transpose_a( *
transpose_b(*
T0
Ø
:TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/MatMul_1MatMulTrueBrain/dense_3/TanhKTrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
Â
BTrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/MatMul;^TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/MatMul_1
«
JTrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/MatMulC^TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/MatMul
±
LTrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/tuple/control_dependency_1Identity:TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/MatMul_1C^TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@TrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/MatMul_1
W
.TrueBrain/gradients/TrueBrain/mul_1_grad/ShapeConst*
valueB *
dtype0
a
0TrueBrain/gradients/TrueBrain/mul_1_grad/Shape_1ShapeTrueBrain/Pow*
T0*
out_type0
Â
>TrueBrain/gradients/TrueBrain/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_1_grad/Shape0TrueBrain/gradients/TrueBrain/mul_1_grad/Shape_1*
T0

,TrueBrain/gradients/TrueBrain/mul_1_grad/mulMulCTrueBrain/gradients/TrueBrain/truediv_grad/tuple/control_dependencyTrueBrain/Pow*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_1_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_1_grad/mul>TrueBrain/gradients/TrueBrain/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_1_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_1_grad/Sum.TrueBrain/gradients/TrueBrain/mul_1_grad/Shape*
T0*
Tshape0

.TrueBrain/gradients/TrueBrain/mul_1_grad/mul_1MulTrueBrain/mul_1/xCTrueBrain/gradients/TrueBrain/truediv_grad/tuple/control_dependency*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_1_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_1_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_1_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_1_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_1_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_1_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_1_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_1_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_1_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_1_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_1_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_1_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_1_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_1_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_1_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_1_grad/Reshape_1
W
.TrueBrain/gradients/TrueBrain/mul_2_grad/ShapeConst*
valueB *
dtype0
^
0TrueBrain/gradients/TrueBrain/mul_2_grad/Shape_1Const*
valueB:*
dtype0
Â
>TrueBrain/gradients/TrueBrain/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_2_grad/Shape0TrueBrain/gradients/TrueBrain/mul_2_grad/Shape_1*
T0

,TrueBrain/gradients/TrueBrain/mul_2_grad/mulMulETrueBrain/gradients/TrueBrain/truediv_grad/tuple/control_dependency_1TrueBrain/Exp*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_2_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_2_grad/mul>TrueBrain/gradients/TrueBrain/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_2_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_2_grad/Sum.TrueBrain/gradients/TrueBrain/mul_2_grad/Shape*
T0*
Tshape0

.TrueBrain/gradients/TrueBrain/mul_2_grad/mul_1MulTrueBrain/mul_2/xETrueBrain/gradients/TrueBrain/truediv_grad/tuple/control_dependency_1*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_2_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_2_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_2_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_2_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_2_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_2_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_2_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_2_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_2_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_2_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_2_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_2_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_2_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_2_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_2_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_2_grad/Reshape_1
\
.TrueBrain/gradients/TrueBrain/mul_4_grad/ShapeConst*
valueB:*
dtype0
Y
0TrueBrain/gradients/TrueBrain/mul_4_grad/Shape_1Const*
valueB *
dtype0
Â
>TrueBrain/gradients/TrueBrain/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_4_grad/Shape0TrueBrain/gradients/TrueBrain/mul_4_grad/Shape_1*
T0

,TrueBrain/gradients/TrueBrain/mul_4_grad/mulMul2TrueBrain/gradients/TrueBrain/Sqrt_1_grad/SqrtGradTrueBrain/mul_4/y*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_4_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_4_grad/mul>TrueBrain/gradients/TrueBrain/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_4_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_4_grad/Sum.TrueBrain/gradients/TrueBrain/mul_4_grad/Shape*
T0*
Tshape0

.TrueBrain/gradients/TrueBrain/mul_4_grad/mul_1MulTrueBrain/mul_32TrueBrain/gradients/TrueBrain/Sqrt_1_grad/SqrtGrad*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_4_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_4_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_4_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_4_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_4_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_4_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_4_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_4_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_4_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_4_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_4_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_4_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_4_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_4_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_4_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_4_grad/Reshape_1
±
8TrueBrain/gradients/TrueBrain/dense_3/Tanh_grad/TanhGradTanhGradTrueBrain/dense_3/TanhJTrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/tuple/control_dependency*
T0
]
,TrueBrain/gradients/TrueBrain/Pow_grad/ShapeShapeTrueBrain/sub*
T0*
out_type0
W
.TrueBrain/gradients/TrueBrain/Pow_grad/Shape_1Const*
valueB *
dtype0
¼
<TrueBrain/gradients/TrueBrain/Pow_grad/BroadcastGradientArgsBroadcastGradientArgs,TrueBrain/gradients/TrueBrain/Pow_grad/Shape.TrueBrain/gradients/TrueBrain/Pow_grad/Shape_1*
T0

*TrueBrain/gradients/TrueBrain/Pow_grad/mulMulCTrueBrain/gradients/TrueBrain/mul_1_grad/tuple/control_dependency_1TrueBrain/Pow/y*
T0
Y
,TrueBrain/gradients/TrueBrain/Pow_grad/sub/yConst*
valueB
 *  ?*
dtype0
y
*TrueBrain/gradients/TrueBrain/Pow_grad/subSubTrueBrain/Pow/y,TrueBrain/gradients/TrueBrain/Pow_grad/sub/y*
T0
u
*TrueBrain/gradients/TrueBrain/Pow_grad/PowPowTrueBrain/sub*TrueBrain/gradients/TrueBrain/Pow_grad/sub*
T0

,TrueBrain/gradients/TrueBrain/Pow_grad/mul_1Mul*TrueBrain/gradients/TrueBrain/Pow_grad/mul*TrueBrain/gradients/TrueBrain/Pow_grad/Pow*
T0
Ã
*TrueBrain/gradients/TrueBrain/Pow_grad/SumSum,TrueBrain/gradients/TrueBrain/Pow_grad/mul_1<TrueBrain/gradients/TrueBrain/Pow_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
ª
.TrueBrain/gradients/TrueBrain/Pow_grad/ReshapeReshape*TrueBrain/gradients/TrueBrain/Pow_grad/Sum,TrueBrain/gradients/TrueBrain/Pow_grad/Shape*
T0*
Tshape0
]
0TrueBrain/gradients/TrueBrain/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0

.TrueBrain/gradients/TrueBrain/Pow_grad/GreaterGreaterTrueBrain/sub0TrueBrain/gradients/TrueBrain/Pow_grad/Greater/y*
T0
I
*TrueBrain/gradients/TrueBrain/Pow_grad/LogLogTrueBrain/sub*
T0
V
1TrueBrain/gradients/TrueBrain/Pow_grad/zeros_like	ZerosLikeTrueBrain/sub*
T0
Ï
-TrueBrain/gradients/TrueBrain/Pow_grad/SelectSelect.TrueBrain/gradients/TrueBrain/Pow_grad/Greater*TrueBrain/gradients/TrueBrain/Pow_grad/Log1TrueBrain/gradients/TrueBrain/Pow_grad/zeros_like*
T0

,TrueBrain/gradients/TrueBrain/Pow_grad/mul_2MulCTrueBrain/gradients/TrueBrain/mul_1_grad/tuple/control_dependency_1TrueBrain/Pow*
T0

,TrueBrain/gradients/TrueBrain/Pow_grad/mul_3Mul,TrueBrain/gradients/TrueBrain/Pow_grad/mul_2-TrueBrain/gradients/TrueBrain/Pow_grad/Select*
T0
Ç
,TrueBrain/gradients/TrueBrain/Pow_grad/Sum_1Sum,TrueBrain/gradients/TrueBrain/Pow_grad/mul_3>TrueBrain/gradients/TrueBrain/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/Pow_grad/Reshape_1Reshape,TrueBrain/gradients/TrueBrain/Pow_grad/Sum_1.TrueBrain/gradients/TrueBrain/Pow_grad/Shape_1*
T0*
Tshape0
£
7TrueBrain/gradients/TrueBrain/Pow_grad/tuple/group_depsNoOp/^TrueBrain/gradients/TrueBrain/Pow_grad/Reshape1^TrueBrain/gradients/TrueBrain/Pow_grad/Reshape_1

?TrueBrain/gradients/TrueBrain/Pow_grad/tuple/control_dependencyIdentity.TrueBrain/gradients/TrueBrain/Pow_grad/Reshape8^TrueBrain/gradients/TrueBrain/Pow_grad/tuple/group_deps*
T0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/Pow_grad/Reshape

ATrueBrain/gradients/TrueBrain/Pow_grad/tuple/control_dependency_1Identity0TrueBrain/gradients/TrueBrain/Pow_grad/Reshape_18^TrueBrain/gradients/TrueBrain/Pow_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/Pow_grad/Reshape_1
W
.TrueBrain/gradients/TrueBrain/mul_3_grad/ShapeConst*
valueB *
dtype0
^
0TrueBrain/gradients/TrueBrain/mul_3_grad/Shape_1Const*
valueB:*
dtype0
Â
>TrueBrain/gradients/TrueBrain/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs.TrueBrain/gradients/TrueBrain/mul_3_grad/Shape0TrueBrain/gradients/TrueBrain/mul_3_grad/Shape_1*
T0

,TrueBrain/gradients/TrueBrain/mul_3_grad/mulMulATrueBrain/gradients/TrueBrain/mul_4_grad/tuple/control_dependencyTrueBrain/Exp*
T0
Ç
,TrueBrain/gradients/TrueBrain/mul_3_grad/SumSum,TrueBrain/gradients/TrueBrain/mul_3_grad/mul>TrueBrain/gradients/TrueBrain/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
°
0TrueBrain/gradients/TrueBrain/mul_3_grad/ReshapeReshape,TrueBrain/gradients/TrueBrain/mul_3_grad/Sum.TrueBrain/gradients/TrueBrain/mul_3_grad/Shape*
T0*
Tshape0

.TrueBrain/gradients/TrueBrain/mul_3_grad/mul_1MulTrueBrain/mul_3/xATrueBrain/gradients/TrueBrain/mul_4_grad/tuple/control_dependency*
T0
Í
.TrueBrain/gradients/TrueBrain/mul_3_grad/Sum_1Sum.TrueBrain/gradients/TrueBrain/mul_3_grad/mul_1@TrueBrain/gradients/TrueBrain/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
¶
2TrueBrain/gradients/TrueBrain/mul_3_grad/Reshape_1Reshape.TrueBrain/gradients/TrueBrain/mul_3_grad/Sum_10TrueBrain/gradients/TrueBrain/mul_3_grad/Shape_1*
T0*
Tshape0
©
9TrueBrain/gradients/TrueBrain/mul_3_grad/tuple/group_depsNoOp1^TrueBrain/gradients/TrueBrain/mul_3_grad/Reshape3^TrueBrain/gradients/TrueBrain/mul_3_grad/Reshape_1

ATrueBrain/gradients/TrueBrain/mul_3_grad/tuple/control_dependencyIdentity0TrueBrain/gradients/TrueBrain/mul_3_grad/Reshape:^TrueBrain/gradients/TrueBrain/mul_3_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/mul_3_grad/Reshape

CTrueBrain/gradients/TrueBrain/mul_3_grad/tuple/control_dependency_1Identity2TrueBrain/gradients/TrueBrain/mul_3_grad/Reshape_1:^TrueBrain/gradients/TrueBrain/mul_3_grad/tuple/group_deps*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_3_grad/Reshape_1
§
>TrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad8TrueBrain/gradients/TrueBrain/dense_3/Tanh_grad/TanhGrad*
T0*
data_formatNHWC
Ç
CTrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/dense_3/Tanh_grad/TanhGrad?^TrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/BiasAddGrad
­
KTrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/dense_3/Tanh_grad/TanhGradD^TrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense_3/Tanh_grad/TanhGrad
»
MTrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity>TrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/BiasAddGradD^TrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@TrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/BiasAddGrad
f
,TrueBrain/gradients/TrueBrain/sub_grad/ShapeShapeTrueBrain/StopGradient*
T0*
out_type0
j
.TrueBrain/gradients/TrueBrain/sub_grad/Shape_1ShapeTrueBrain/dense_5/MatMul*
T0*
out_type0
¼
<TrueBrain/gradients/TrueBrain/sub_grad/BroadcastGradientArgsBroadcastGradientArgs,TrueBrain/gradients/TrueBrain/sub_grad/Shape.TrueBrain/gradients/TrueBrain/sub_grad/Shape_1*
T0
Ö
*TrueBrain/gradients/TrueBrain/sub_grad/SumSum?TrueBrain/gradients/TrueBrain/Pow_grad/tuple/control_dependency<TrueBrain/gradients/TrueBrain/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
ª
.TrueBrain/gradients/TrueBrain/sub_grad/ReshapeReshape*TrueBrain/gradients/TrueBrain/sub_grad/Sum,TrueBrain/gradients/TrueBrain/sub_grad/Shape*
T0*
Tshape0
Ú
,TrueBrain/gradients/TrueBrain/sub_grad/Sum_1Sum?TrueBrain/gradients/TrueBrain/Pow_grad/tuple/control_dependency>TrueBrain/gradients/TrueBrain/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
h
*TrueBrain/gradients/TrueBrain/sub_grad/NegNeg,TrueBrain/gradients/TrueBrain/sub_grad/Sum_1*
T0
®
0TrueBrain/gradients/TrueBrain/sub_grad/Reshape_1Reshape*TrueBrain/gradients/TrueBrain/sub_grad/Neg.TrueBrain/gradients/TrueBrain/sub_grad/Shape_1*
T0*
Tshape0
£
7TrueBrain/gradients/TrueBrain/sub_grad/tuple/group_depsNoOp/^TrueBrain/gradients/TrueBrain/sub_grad/Reshape1^TrueBrain/gradients/TrueBrain/sub_grad/Reshape_1

?TrueBrain/gradients/TrueBrain/sub_grad/tuple/control_dependencyIdentity.TrueBrain/gradients/TrueBrain/sub_grad/Reshape8^TrueBrain/gradients/TrueBrain/sub_grad/tuple/group_deps*
T0*A
_class7
53loc:@TrueBrain/gradients/TrueBrain/sub_grad/Reshape

ATrueBrain/gradients/TrueBrain/sub_grad/tuple/control_dependency_1Identity0TrueBrain/gradients/TrueBrain/sub_grad/Reshape_18^TrueBrain/gradients/TrueBrain/sub_grad/tuple/group_deps*
T0*C
_class9
75loc:@TrueBrain/gradients/TrueBrain/sub_grad/Reshape_1
Ý
8TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/MatMulMatMulKTrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/tuple/control_dependencyTrueBrain/dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0
Ñ
:TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/MatMul_1MatMulTrueBrain/stateKTrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
Â
BTrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/MatMul;^TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/MatMul_1
«
JTrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/MatMulC^TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/MatMul
±
LTrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/tuple/control_dependency_1Identity:TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/MatMul_1C^TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@TrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/MatMul_1
Ó
8TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/MatMulMatMulATrueBrain/gradients/TrueBrain/sub_grad/tuple/control_dependency_1TrueBrain/dense_4/kernel/read*
transpose_a( *
transpose_b(*
T0
Î
:TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/MatMul_1MatMulTrueBrain/dense_2/TanhATrueBrain/gradients/TrueBrain/sub_grad/tuple/control_dependency_1*
transpose_a(*
transpose_b( *
T0
Â
BTrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/MatMul;^TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/MatMul_1
«
JTrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/MatMulC^TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/MatMul
±
LTrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/tuple/control_dependency_1Identity:TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/MatMul_1C^TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@TrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/MatMul_1
±
8TrueBrain/gradients/TrueBrain/dense_2/Tanh_grad/TanhGradTanhGradTrueBrain/dense_2/TanhJTrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/tuple/control_dependency*
T0
§
>TrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad8TrueBrain/gradients/TrueBrain/dense_2/Tanh_grad/TanhGrad*
T0*
data_formatNHWC
Ç
CTrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/dense_2/Tanh_grad/TanhGrad?^TrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/BiasAddGrad
­
KTrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/dense_2/Tanh_grad/TanhGradD^TrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense_2/Tanh_grad/TanhGrad
»
MTrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity>TrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/BiasAddGradD^TrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@TrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/BiasAddGrad
Ê
TrueBrain/gradients/AddN_1AddNCTrueBrain/gradients/TrueBrain/mul_5_grad/tuple/control_dependency_1CTrueBrain/gradients/TrueBrain/mul_2_grad/tuple/control_dependency_1CTrueBrain/gradients/TrueBrain/mul_3_grad/tuple/control_dependency_1*
N*
T0*E
_class;
97loc:@TrueBrain/gradients/TrueBrain/mul_5_grad/Reshape_1
e
*TrueBrain/gradients/TrueBrain/Exp_grad/mulMulTrueBrain/gradients/AddN_1TrueBrain/Exp*
T0
Ý
8TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/MatMulMatMulKTrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/tuple/control_dependencyTrueBrain/dense_1/kernel/read*
transpose_a( *
transpose_b(*
T0
Ö
:TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/MatMul_1MatMulTrueBrain/dense/TanhKTrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
Â
BTrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/tuple/group_depsNoOp9^TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/MatMul;^TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/MatMul_1
«
JTrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/tuple/control_dependencyIdentity8TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/MatMulC^TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/MatMul
±
LTrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/tuple/control_dependency_1Identity:TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/MatMul_1C^TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@TrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/MatMul_1
­
6TrueBrain/gradients/TrueBrain/dense/Tanh_grad/TanhGradTanhGradTrueBrain/dense/TanhJTrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/tuple/control_dependency*
T0
£
<TrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/BiasAddGradBiasAddGrad6TrueBrain/gradients/TrueBrain/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC
Á
ATrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/tuple/group_depsNoOp7^TrueBrain/gradients/TrueBrain/dense/Tanh_grad/TanhGrad=^TrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/BiasAddGrad
¥
ITrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/tuple/control_dependencyIdentity6TrueBrain/gradients/TrueBrain/dense/Tanh_grad/TanhGradB^TrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@TrueBrain/gradients/TrueBrain/dense/Tanh_grad/TanhGrad
³
KTrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/tuple/control_dependency_1Identity<TrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/BiasAddGradB^TrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/tuple/group_deps*
T0*O
_classE
CAloc:@TrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/BiasAddGrad
×
6TrueBrain/gradients/TrueBrain/dense/MatMul_grad/MatMulMatMulITrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/tuple/control_dependencyTrueBrain/dense/kernel/read*
transpose_a( *
transpose_b(*
T0
Í
8TrueBrain/gradients/TrueBrain/dense/MatMul_grad/MatMul_1MatMulTrueBrain/stateITrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
¼
@TrueBrain/gradients/TrueBrain/dense/MatMul_grad/tuple/group_depsNoOp7^TrueBrain/gradients/TrueBrain/dense/MatMul_grad/MatMul9^TrueBrain/gradients/TrueBrain/dense/MatMul_grad/MatMul_1
£
HTrueBrain/gradients/TrueBrain/dense/MatMul_grad/tuple/control_dependencyIdentity6TrueBrain/gradients/TrueBrain/dense/MatMul_grad/MatMulA^TrueBrain/gradients/TrueBrain/dense/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@TrueBrain/gradients/TrueBrain/dense/MatMul_grad/MatMul
©
JTrueBrain/gradients/TrueBrain/dense/MatMul_grad/tuple/control_dependency_1Identity8TrueBrain/gradients/TrueBrain/dense/MatMul_grad/MatMul_1A^TrueBrain/gradients/TrueBrain/dense/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@TrueBrain/gradients/TrueBrain/dense/MatMul_grad/MatMul_1
y
#TrueBrain/beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*'
_class
loc:@TrueBrain/dense/bias

TrueBrain/beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *'
_class
loc:@TrueBrain/dense/bias
½
TrueBrain/beta1_power/AssignAssignTrueBrain/beta1_power#TrueBrain/beta1_power/initial_value*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias
o
TrueBrain/beta1_power/readIdentityTrueBrain/beta1_power*
T0*'
_class
loc:@TrueBrain/dense/bias
y
#TrueBrain/beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*'
_class
loc:@TrueBrain/dense/bias

TrueBrain/beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *'
_class
loc:@TrueBrain/dense/bias
½
TrueBrain/beta2_power/AssignAssignTrueBrain/beta2_power#TrueBrain/beta2_power/initial_value*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias
o
TrueBrain/beta2_power/readIdentityTrueBrain/beta2_power*
T0*'
_class
loc:@TrueBrain/dense/bias

7TrueBrain/TrueBrain/dense/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense/kernel
¤
%TrueBrain/TrueBrain/dense/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense/kernel
ó
,TrueBrain/TrueBrain/dense/kernel/Adam/AssignAssign%TrueBrain/TrueBrain/dense/kernel/Adam7TrueBrain/TrueBrain/dense/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense/kernel

*TrueBrain/TrueBrain/dense/kernel/Adam/readIdentity%TrueBrain/TrueBrain/dense/kernel/Adam*
T0*)
_class
loc:@TrueBrain/dense/kernel

9TrueBrain/TrueBrain/dense/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense/kernel
¦
'TrueBrain/TrueBrain/dense/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense/kernel
ù
.TrueBrain/TrueBrain/dense/kernel/Adam_1/AssignAssign'TrueBrain/TrueBrain/dense/kernel/Adam_19TrueBrain/TrueBrain/dense/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense/kernel

,TrueBrain/TrueBrain/dense/kernel/Adam_1/readIdentity'TrueBrain/TrueBrain/dense/kernel/Adam_1*
T0*)
_class
loc:@TrueBrain/dense/kernel

5TrueBrain/TrueBrain/dense/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@TrueBrain/dense/bias

#TrueBrain/TrueBrain/dense/bias/Adam
VariableV2*
shape:@*
dtype0*
	container *
shared_name *'
_class
loc:@TrueBrain/dense/bias
ë
*TrueBrain/TrueBrain/dense/bias/Adam/AssignAssign#TrueBrain/TrueBrain/dense/bias/Adam5TrueBrain/TrueBrain/dense/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias

(TrueBrain/TrueBrain/dense/bias/Adam/readIdentity#TrueBrain/TrueBrain/dense/bias/Adam*
T0*'
_class
loc:@TrueBrain/dense/bias

7TrueBrain/TrueBrain/dense/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*'
_class
loc:@TrueBrain/dense/bias

%TrueBrain/TrueBrain/dense/bias/Adam_1
VariableV2*
shape:@*
dtype0*
	container *
shared_name *'
_class
loc:@TrueBrain/dense/bias
ñ
,TrueBrain/TrueBrain/dense/bias/Adam_1/AssignAssign%TrueBrain/TrueBrain/dense/bias/Adam_17TrueBrain/TrueBrain/dense/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias

*TrueBrain/TrueBrain/dense/bias/Adam_1/readIdentity%TrueBrain/TrueBrain/dense/bias/Adam_1*
T0*'
_class
loc:@TrueBrain/dense/bias

9TrueBrain/TrueBrain/dense_1/kernel/Adam/Initializer/zerosConst*
valueB@@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_1/kernel
¨
'TrueBrain/TrueBrain/dense_1/kernel/Adam
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_1/kernel
û
.TrueBrain/TrueBrain/dense_1/kernel/Adam/AssignAssign'TrueBrain/TrueBrain/dense_1/kernel/Adam9TrueBrain/TrueBrain/dense_1/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_1/kernel

,TrueBrain/TrueBrain/dense_1/kernel/Adam/readIdentity'TrueBrain/TrueBrain/dense_1/kernel/Adam*
T0*+
_class!
loc:@TrueBrain/dense_1/kernel

;TrueBrain/TrueBrain/dense_1/kernel/Adam_1/Initializer/zerosConst*
valueB@@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_1/kernel
ª
)TrueBrain/TrueBrain/dense_1/kernel/Adam_1
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_1/kernel

0TrueBrain/TrueBrain/dense_1/kernel/Adam_1/AssignAssign)TrueBrain/TrueBrain/dense_1/kernel/Adam_1;TrueBrain/TrueBrain/dense_1/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_1/kernel

.TrueBrain/TrueBrain/dense_1/kernel/Adam_1/readIdentity)TrueBrain/TrueBrain/dense_1/kernel/Adam_1*
T0*+
_class!
loc:@TrueBrain/dense_1/kernel

7TrueBrain/TrueBrain/dense_1/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_1/bias
 
%TrueBrain/TrueBrain/dense_1/bias/Adam
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_1/bias
ó
,TrueBrain/TrueBrain/dense_1/bias/Adam/AssignAssign%TrueBrain/TrueBrain/dense_1/bias/Adam7TrueBrain/TrueBrain/dense_1/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_1/bias

*TrueBrain/TrueBrain/dense_1/bias/Adam/readIdentity%TrueBrain/TrueBrain/dense_1/bias/Adam*
T0*)
_class
loc:@TrueBrain/dense_1/bias

9TrueBrain/TrueBrain/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_1/bias
¢
'TrueBrain/TrueBrain/dense_1/bias/Adam_1
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_1/bias
ù
.TrueBrain/TrueBrain/dense_1/bias/Adam_1/AssignAssign'TrueBrain/TrueBrain/dense_1/bias/Adam_19TrueBrain/TrueBrain/dense_1/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_1/bias

,TrueBrain/TrueBrain/dense_1/bias/Adam_1/readIdentity'TrueBrain/TrueBrain/dense_1/bias/Adam_1*
T0*)
_class
loc:@TrueBrain/dense_1/bias

9TrueBrain/TrueBrain/dense_2/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_2/kernel
¨
'TrueBrain/TrueBrain/dense_2/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_2/kernel
û
.TrueBrain/TrueBrain/dense_2/kernel/Adam/AssignAssign'TrueBrain/TrueBrain/dense_2/kernel/Adam9TrueBrain/TrueBrain/dense_2/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_2/kernel

,TrueBrain/TrueBrain/dense_2/kernel/Adam/readIdentity'TrueBrain/TrueBrain/dense_2/kernel/Adam*
T0*+
_class!
loc:@TrueBrain/dense_2/kernel

;TrueBrain/TrueBrain/dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_2/kernel
ª
)TrueBrain/TrueBrain/dense_2/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_2/kernel

0TrueBrain/TrueBrain/dense_2/kernel/Adam_1/AssignAssign)TrueBrain/TrueBrain/dense_2/kernel/Adam_1;TrueBrain/TrueBrain/dense_2/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_2/kernel

.TrueBrain/TrueBrain/dense_2/kernel/Adam_1/readIdentity)TrueBrain/TrueBrain/dense_2/kernel/Adam_1*
T0*+
_class!
loc:@TrueBrain/dense_2/kernel

7TrueBrain/TrueBrain/dense_2/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_2/bias
 
%TrueBrain/TrueBrain/dense_2/bias/Adam
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_2/bias
ó
,TrueBrain/TrueBrain/dense_2/bias/Adam/AssignAssign%TrueBrain/TrueBrain/dense_2/bias/Adam7TrueBrain/TrueBrain/dense_2/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_2/bias

*TrueBrain/TrueBrain/dense_2/bias/Adam/readIdentity%TrueBrain/TrueBrain/dense_2/bias/Adam*
T0*)
_class
loc:@TrueBrain/dense_2/bias

9TrueBrain/TrueBrain/dense_2/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_2/bias
¢
'TrueBrain/TrueBrain/dense_2/bias/Adam_1
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_2/bias
ù
.TrueBrain/TrueBrain/dense_2/bias/Adam_1/AssignAssign'TrueBrain/TrueBrain/dense_2/bias/Adam_19TrueBrain/TrueBrain/dense_2/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_2/bias

,TrueBrain/TrueBrain/dense_2/bias/Adam_1/readIdentity'TrueBrain/TrueBrain/dense_2/bias/Adam_1*
T0*)
_class
loc:@TrueBrain/dense_2/bias

9TrueBrain/TrueBrain/dense_3/kernel/Adam/Initializer/zerosConst*
valueB@@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_3/kernel
¨
'TrueBrain/TrueBrain/dense_3/kernel/Adam
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_3/kernel
û
.TrueBrain/TrueBrain/dense_3/kernel/Adam/AssignAssign'TrueBrain/TrueBrain/dense_3/kernel/Adam9TrueBrain/TrueBrain/dense_3/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_3/kernel

,TrueBrain/TrueBrain/dense_3/kernel/Adam/readIdentity'TrueBrain/TrueBrain/dense_3/kernel/Adam*
T0*+
_class!
loc:@TrueBrain/dense_3/kernel

;TrueBrain/TrueBrain/dense_3/kernel/Adam_1/Initializer/zerosConst*
valueB@@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_3/kernel
ª
)TrueBrain/TrueBrain/dense_3/kernel/Adam_1
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_3/kernel

0TrueBrain/TrueBrain/dense_3/kernel/Adam_1/AssignAssign)TrueBrain/TrueBrain/dense_3/kernel/Adam_1;TrueBrain/TrueBrain/dense_3/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_3/kernel

.TrueBrain/TrueBrain/dense_3/kernel/Adam_1/readIdentity)TrueBrain/TrueBrain/dense_3/kernel/Adam_1*
T0*+
_class!
loc:@TrueBrain/dense_3/kernel

7TrueBrain/TrueBrain/dense_3/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_3/bias
 
%TrueBrain/TrueBrain/dense_3/bias/Adam
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_3/bias
ó
,TrueBrain/TrueBrain/dense_3/bias/Adam/AssignAssign%TrueBrain/TrueBrain/dense_3/bias/Adam7TrueBrain/TrueBrain/dense_3/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_3/bias

*TrueBrain/TrueBrain/dense_3/bias/Adam/readIdentity%TrueBrain/TrueBrain/dense_3/bias/Adam*
T0*)
_class
loc:@TrueBrain/dense_3/bias

9TrueBrain/TrueBrain/dense_3/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*)
_class
loc:@TrueBrain/dense_3/bias
¢
'TrueBrain/TrueBrain/dense_3/bias/Adam_1
VariableV2*
shape:@*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_3/bias
ù
.TrueBrain/TrueBrain/dense_3/bias/Adam_1/AssignAssign'TrueBrain/TrueBrain/dense_3/bias/Adam_19TrueBrain/TrueBrain/dense_3/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_3/bias

,TrueBrain/TrueBrain/dense_3/bias/Adam_1/readIdentity'TrueBrain/TrueBrain/dense_3/bias/Adam_1*
T0*)
_class
loc:@TrueBrain/dense_3/bias

9TrueBrain/TrueBrain/dense_4/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_4/kernel
¨
'TrueBrain/TrueBrain/dense_4/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_4/kernel
û
.TrueBrain/TrueBrain/dense_4/kernel/Adam/AssignAssign'TrueBrain/TrueBrain/dense_4/kernel/Adam9TrueBrain/TrueBrain/dense_4/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_4/kernel

,TrueBrain/TrueBrain/dense_4/kernel/Adam/readIdentity'TrueBrain/TrueBrain/dense_4/kernel/Adam*
T0*+
_class!
loc:@TrueBrain/dense_4/kernel

;TrueBrain/TrueBrain/dense_4/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_4/kernel
ª
)TrueBrain/TrueBrain/dense_4/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_4/kernel

0TrueBrain/TrueBrain/dense_4/kernel/Adam_1/AssignAssign)TrueBrain/TrueBrain/dense_4/kernel/Adam_1;TrueBrain/TrueBrain/dense_4/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_4/kernel

.TrueBrain/TrueBrain/dense_4/kernel/Adam_1/readIdentity)TrueBrain/TrueBrain/dense_4/kernel/Adam_1*
T0*+
_class!
loc:@TrueBrain/dense_4/kernel

<TrueBrain/TrueBrain/log_sigma_squared/Adam/Initializer/zerosConst*
valueB*    *
dtype0*.
_class$
" loc:@TrueBrain/log_sigma_squared
ª
*TrueBrain/TrueBrain/log_sigma_squared/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *.
_class$
" loc:@TrueBrain/log_sigma_squared

1TrueBrain/TrueBrain/log_sigma_squared/Adam/AssignAssign*TrueBrain/TrueBrain/log_sigma_squared/Adam<TrueBrain/TrueBrain/log_sigma_squared/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@TrueBrain/log_sigma_squared
 
/TrueBrain/TrueBrain/log_sigma_squared/Adam/readIdentity*TrueBrain/TrueBrain/log_sigma_squared/Adam*
T0*.
_class$
" loc:@TrueBrain/log_sigma_squared

>TrueBrain/TrueBrain/log_sigma_squared/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*.
_class$
" loc:@TrueBrain/log_sigma_squared
¬
,TrueBrain/TrueBrain/log_sigma_squared/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *.
_class$
" loc:@TrueBrain/log_sigma_squared

3TrueBrain/TrueBrain/log_sigma_squared/Adam_1/AssignAssign,TrueBrain/TrueBrain/log_sigma_squared/Adam_1>TrueBrain/TrueBrain/log_sigma_squared/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@TrueBrain/log_sigma_squared
¤
1TrueBrain/TrueBrain/log_sigma_squared/Adam_1/readIdentity,TrueBrain/TrueBrain/log_sigma_squared/Adam_1*
T0*.
_class$
" loc:@TrueBrain/log_sigma_squared

9TrueBrain/TrueBrain/dense_5/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_5/kernel
¨
'TrueBrain/TrueBrain/dense_5/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_5/kernel
û
.TrueBrain/TrueBrain/dense_5/kernel/Adam/AssignAssign'TrueBrain/TrueBrain/dense_5/kernel/Adam9TrueBrain/TrueBrain/dense_5/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_5/kernel

,TrueBrain/TrueBrain/dense_5/kernel/Adam/readIdentity'TrueBrain/TrueBrain/dense_5/kernel/Adam*
T0*+
_class!
loc:@TrueBrain/dense_5/kernel

;TrueBrain/TrueBrain/dense_5/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*+
_class!
loc:@TrueBrain/dense_5/kernel
ª
)TrueBrain/TrueBrain/dense_5/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *+
_class!
loc:@TrueBrain/dense_5/kernel

0TrueBrain/TrueBrain/dense_5/kernel/Adam_1/AssignAssign)TrueBrain/TrueBrain/dense_5/kernel/Adam_1;TrueBrain/TrueBrain/dense_5/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_5/kernel

.TrueBrain/TrueBrain/dense_5/kernel/Adam_1/readIdentity)TrueBrain/TrueBrain/dense_5/kernel/Adam_1*
T0*+
_class!
loc:@TrueBrain/dense_5/kernel

7TrueBrain/TrueBrain/dense_5/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*)
_class
loc:@TrueBrain/dense_5/bias
 
%TrueBrain/TrueBrain/dense_5/bias/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_5/bias
ó
,TrueBrain/TrueBrain/dense_5/bias/Adam/AssignAssign%TrueBrain/TrueBrain/dense_5/bias/Adam7TrueBrain/TrueBrain/dense_5/bias/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_5/bias

*TrueBrain/TrueBrain/dense_5/bias/Adam/readIdentity%TrueBrain/TrueBrain/dense_5/bias/Adam*
T0*)
_class
loc:@TrueBrain/dense_5/bias

9TrueBrain/TrueBrain/dense_5/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*)
_class
loc:@TrueBrain/dense_5/bias
¢
'TrueBrain/TrueBrain/dense_5/bias/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *)
_class
loc:@TrueBrain/dense_5/bias
ù
.TrueBrain/TrueBrain/dense_5/bias/Adam_1/AssignAssign'TrueBrain/TrueBrain/dense_5/bias/Adam_19TrueBrain/TrueBrain/dense_5/bias/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_5/bias

,TrueBrain/TrueBrain/dense_5/bias/Adam_1/readIdentity'TrueBrain/TrueBrain/dense_5/bias/Adam_1*
T0*)
_class
loc:@TrueBrain/dense_5/bias
A
TrueBrain/Adam/beta1Const*
valueB
 *fff?*
dtype0
A
TrueBrain/Adam/beta2Const*
valueB
 *w¾?*
dtype0
C
TrueBrain/Adam/epsilonConst*
valueB
 *wÌ+2*
dtype0
ë
6TrueBrain/Adam/update_TrueBrain/dense/kernel/ApplyAdam	ApplyAdamTrueBrain/dense/kernel%TrueBrain/TrueBrain/dense/kernel/Adam'TrueBrain/TrueBrain/dense/kernel/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonJTrueBrain/gradients/TrueBrain/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@TrueBrain/dense/kernel
â
4TrueBrain/Adam/update_TrueBrain/dense/bias/ApplyAdam	ApplyAdamTrueBrain/dense/bias#TrueBrain/TrueBrain/dense/bias/Adam%TrueBrain/TrueBrain/dense/bias/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonKTrueBrain/gradients/TrueBrain/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *'
_class
loc:@TrueBrain/dense/bias
÷
8TrueBrain/Adam/update_TrueBrain/dense_1/kernel/ApplyAdam	ApplyAdamTrueBrain/dense_1/kernel'TrueBrain/TrueBrain/dense_1/kernel/Adam)TrueBrain/TrueBrain/dense_1/kernel/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonLTrueBrain/gradients/TrueBrain/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@TrueBrain/dense_1/kernel
î
6TrueBrain/Adam/update_TrueBrain/dense_1/bias/ApplyAdam	ApplyAdamTrueBrain/dense_1/bias%TrueBrain/TrueBrain/dense_1/bias/Adam'TrueBrain/TrueBrain/dense_1/bias/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonMTrueBrain/gradients/TrueBrain/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@TrueBrain/dense_1/bias
÷
8TrueBrain/Adam/update_TrueBrain/dense_2/kernel/ApplyAdam	ApplyAdamTrueBrain/dense_2/kernel'TrueBrain/TrueBrain/dense_2/kernel/Adam)TrueBrain/TrueBrain/dense_2/kernel/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonLTrueBrain/gradients/TrueBrain/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@TrueBrain/dense_2/kernel
î
6TrueBrain/Adam/update_TrueBrain/dense_2/bias/ApplyAdam	ApplyAdamTrueBrain/dense_2/bias%TrueBrain/TrueBrain/dense_2/bias/Adam'TrueBrain/TrueBrain/dense_2/bias/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonMTrueBrain/gradients/TrueBrain/dense_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@TrueBrain/dense_2/bias
÷
8TrueBrain/Adam/update_TrueBrain/dense_3/kernel/ApplyAdam	ApplyAdamTrueBrain/dense_3/kernel'TrueBrain/TrueBrain/dense_3/kernel/Adam)TrueBrain/TrueBrain/dense_3/kernel/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonLTrueBrain/gradients/TrueBrain/dense_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@TrueBrain/dense_3/kernel
î
6TrueBrain/Adam/update_TrueBrain/dense_3/bias/ApplyAdam	ApplyAdamTrueBrain/dense_3/bias%TrueBrain/TrueBrain/dense_3/bias/Adam'TrueBrain/TrueBrain/dense_3/bias/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonMTrueBrain/gradients/TrueBrain/dense_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@TrueBrain/dense_3/bias
÷
8TrueBrain/Adam/update_TrueBrain/dense_4/kernel/ApplyAdam	ApplyAdamTrueBrain/dense_4/kernel'TrueBrain/TrueBrain/dense_4/kernel/Adam)TrueBrain/TrueBrain/dense_4/kernel/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonLTrueBrain/gradients/TrueBrain/dense_5/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@TrueBrain/dense_4/kernel
ä
;TrueBrain/Adam/update_TrueBrain/log_sigma_squared/ApplyAdam	ApplyAdamTrueBrain/log_sigma_squared*TrueBrain/TrueBrain/log_sigma_squared/Adam,TrueBrain/TrueBrain/log_sigma_squared/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilon*TrueBrain/gradients/TrueBrain/Exp_grad/mul*
T0*
use_locking( *
use_nesterov( *.
_class$
" loc:@TrueBrain/log_sigma_squared
÷
8TrueBrain/Adam/update_TrueBrain/dense_5/kernel/ApplyAdam	ApplyAdamTrueBrain/dense_5/kernel'TrueBrain/TrueBrain/dense_5/kernel/Adam)TrueBrain/TrueBrain/dense_5/kernel/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonLTrueBrain/gradients/TrueBrain/dense_6/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *+
_class!
loc:@TrueBrain/dense_5/kernel
î
6TrueBrain/Adam/update_TrueBrain/dense_5/bias/ApplyAdam	ApplyAdamTrueBrain/dense_5/bias%TrueBrain/TrueBrain/dense_5/bias/Adam'TrueBrain/TrueBrain/dense_5/bias/Adam_1TrueBrain/beta1_power/readTrueBrain/beta2_power/readTrueBrain/PolynomialDecay_2TrueBrain/Adam/beta1TrueBrain/Adam/beta2TrueBrain/Adam/epsilonMTrueBrain/gradients/TrueBrain/dense_6/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *)
_class
loc:@TrueBrain/dense_5/bias
¶
TrueBrain/Adam/mulMulTrueBrain/beta1_power/readTrueBrain/Adam/beta17^TrueBrain/Adam/update_TrueBrain/dense/kernel/ApplyAdam5^TrueBrain/Adam/update_TrueBrain/dense/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_1/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_1/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_2/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_2/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_3/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_3/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_4/kernel/ApplyAdam<^TrueBrain/Adam/update_TrueBrain/log_sigma_squared/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_5/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_5/bias/ApplyAdam*
T0*'
_class
loc:@TrueBrain/dense/bias
¥
TrueBrain/Adam/AssignAssignTrueBrain/beta1_powerTrueBrain/Adam/mul*
T0*
validate_shape(*
use_locking( *'
_class
loc:@TrueBrain/dense/bias
¸
TrueBrain/Adam/mul_1MulTrueBrain/beta2_power/readTrueBrain/Adam/beta27^TrueBrain/Adam/update_TrueBrain/dense/kernel/ApplyAdam5^TrueBrain/Adam/update_TrueBrain/dense/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_1/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_1/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_2/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_2/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_3/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_3/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_4/kernel/ApplyAdam<^TrueBrain/Adam/update_TrueBrain/log_sigma_squared/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_5/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_5/bias/ApplyAdam*
T0*'
_class
loc:@TrueBrain/dense/bias
©
TrueBrain/Adam/Assign_1AssignTrueBrain/beta2_powerTrueBrain/Adam/mul_1*
T0*
validate_shape(*
use_locking( *'
_class
loc:@TrueBrain/dense/bias

TrueBrain/AdamNoOp7^TrueBrain/Adam/update_TrueBrain/dense/kernel/ApplyAdam5^TrueBrain/Adam/update_TrueBrain/dense/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_1/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_1/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_2/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_2/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_3/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_3/bias/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_4/kernel/ApplyAdam<^TrueBrain/Adam/update_TrueBrain/log_sigma_squared/ApplyAdam9^TrueBrain/Adam/update_TrueBrain/dense_5/kernel/ApplyAdam7^TrueBrain/Adam/update_TrueBrain/dense_5/bias/ApplyAdam^TrueBrain/Adam/Assign^TrueBrain/Adam/Assign_1
Ò
initNoOp^Brain/global_step/Assign^Brain/last_reward/Assign^Brain/dense/kernel/Assign^Brain/dense/bias/Assign^Brain/dense_1/kernel/Assign^Brain/dense_1/bias/Assign^Brain/dense_2/kernel/Assign^Brain/dense_2/bias/Assign^Brain/dense_3/kernel/Assign^Brain/dense_3/bias/Assign^Brain/dense_4/kernel/Assign^Brain/log_sigma_squared/Assign^Brain/dense_5/kernel/Assign^Brain/dense_5/bias/Assign^Brain/beta1_power/Assign^Brain/beta2_power/Assign%^Brain/Brain/dense/kernel/Adam/Assign'^Brain/Brain/dense/kernel/Adam_1/Assign#^Brain/Brain/dense/bias/Adam/Assign%^Brain/Brain/dense/bias/Adam_1/Assign'^Brain/Brain/dense_1/kernel/Adam/Assign)^Brain/Brain/dense_1/kernel/Adam_1/Assign%^Brain/Brain/dense_1/bias/Adam/Assign'^Brain/Brain/dense_1/bias/Adam_1/Assign'^Brain/Brain/dense_2/kernel/Adam/Assign)^Brain/Brain/dense_2/kernel/Adam_1/Assign%^Brain/Brain/dense_2/bias/Adam/Assign'^Brain/Brain/dense_2/bias/Adam_1/Assign'^Brain/Brain/dense_3/kernel/Adam/Assign)^Brain/Brain/dense_3/kernel/Adam_1/Assign%^Brain/Brain/dense_3/bias/Adam/Assign'^Brain/Brain/dense_3/bias/Adam_1/Assign'^Brain/Brain/dense_4/kernel/Adam/Assign)^Brain/Brain/dense_4/kernel/Adam_1/Assign*^Brain/Brain/log_sigma_squared/Adam/Assign,^Brain/Brain/log_sigma_squared/Adam_1/Assign'^Brain/Brain/dense_5/kernel/Adam/Assign)^Brain/Brain/dense_5/kernel/Adam_1/Assign%^Brain/Brain/dense_5/bias/Adam/Assign'^Brain/Brain/dense_5/bias/Adam_1/Assign^TrueBrain/global_step/Assign^TrueBrain/last_reward/Assign^TrueBrain/dense/kernel/Assign^TrueBrain/dense/bias/Assign ^TrueBrain/dense_1/kernel/Assign^TrueBrain/dense_1/bias/Assign ^TrueBrain/dense_2/kernel/Assign^TrueBrain/dense_2/bias/Assign ^TrueBrain/dense_3/kernel/Assign^TrueBrain/dense_3/bias/Assign ^TrueBrain/dense_4/kernel/Assign#^TrueBrain/log_sigma_squared/Assign ^TrueBrain/dense_5/kernel/Assign^TrueBrain/dense_5/bias/Assign^TrueBrain/beta1_power/Assign^TrueBrain/beta2_power/Assign-^TrueBrain/TrueBrain/dense/kernel/Adam/Assign/^TrueBrain/TrueBrain/dense/kernel/Adam_1/Assign+^TrueBrain/TrueBrain/dense/bias/Adam/Assign-^TrueBrain/TrueBrain/dense/bias/Adam_1/Assign/^TrueBrain/TrueBrain/dense_1/kernel/Adam/Assign1^TrueBrain/TrueBrain/dense_1/kernel/Adam_1/Assign-^TrueBrain/TrueBrain/dense_1/bias/Adam/Assign/^TrueBrain/TrueBrain/dense_1/bias/Adam_1/Assign/^TrueBrain/TrueBrain/dense_2/kernel/Adam/Assign1^TrueBrain/TrueBrain/dense_2/kernel/Adam_1/Assign-^TrueBrain/TrueBrain/dense_2/bias/Adam/Assign/^TrueBrain/TrueBrain/dense_2/bias/Adam_1/Assign/^TrueBrain/TrueBrain/dense_3/kernel/Adam/Assign1^TrueBrain/TrueBrain/dense_3/kernel/Adam_1/Assign-^TrueBrain/TrueBrain/dense_3/bias/Adam/Assign/^TrueBrain/TrueBrain/dense_3/bias/Adam_1/Assign/^TrueBrain/TrueBrain/dense_4/kernel/Adam/Assign1^TrueBrain/TrueBrain/dense_4/kernel/Adam_1/Assign2^TrueBrain/TrueBrain/log_sigma_squared/Adam/Assign4^TrueBrain/TrueBrain/log_sigma_squared/Adam_1/Assign/^TrueBrain/TrueBrain/dense_5/kernel/Adam/Assign1^TrueBrain/TrueBrain/dense_5/kernel/Adam_1/Assign-^TrueBrain/TrueBrain/dense_5/bias/Adam/Assign/^TrueBrain/TrueBrain/dense_5/bias/Adam_1/Assign
8

save/ConstConst*
valueB Bmodel*
dtype0

save/SaveV2/tensor_namesConst*Û
valueÑBÎPBBrain/Brain/dense/bias/AdamBBrain/Brain/dense/bias/Adam_1BBrain/Brain/dense/kernel/AdamBBrain/Brain/dense/kernel/Adam_1BBrain/Brain/dense_1/bias/AdamBBrain/Brain/dense_1/bias/Adam_1BBrain/Brain/dense_1/kernel/AdamB!Brain/Brain/dense_1/kernel/Adam_1BBrain/Brain/dense_2/bias/AdamBBrain/Brain/dense_2/bias/Adam_1BBrain/Brain/dense_2/kernel/AdamB!Brain/Brain/dense_2/kernel/Adam_1BBrain/Brain/dense_3/bias/AdamBBrain/Brain/dense_3/bias/Adam_1BBrain/Brain/dense_3/kernel/AdamB!Brain/Brain/dense_3/kernel/Adam_1BBrain/Brain/dense_4/kernel/AdamB!Brain/Brain/dense_4/kernel/Adam_1BBrain/Brain/dense_5/bias/AdamBBrain/Brain/dense_5/bias/Adam_1BBrain/Brain/dense_5/kernel/AdamB!Brain/Brain/dense_5/kernel/Adam_1B"Brain/Brain/log_sigma_squared/AdamB$Brain/Brain/log_sigma_squared/Adam_1BBrain/beta1_powerBBrain/beta2_powerBBrain/dense/biasBBrain/dense/kernelBBrain/dense_1/biasBBrain/dense_1/kernelBBrain/dense_2/biasBBrain/dense_2/kernelBBrain/dense_3/biasBBrain/dense_3/kernelBBrain/dense_4/kernelBBrain/dense_5/biasBBrain/dense_5/kernelBBrain/global_stepBBrain/last_rewardBBrain/log_sigma_squaredB#TrueBrain/TrueBrain/dense/bias/AdamB%TrueBrain/TrueBrain/dense/bias/Adam_1B%TrueBrain/TrueBrain/dense/kernel/AdamB'TrueBrain/TrueBrain/dense/kernel/Adam_1B%TrueBrain/TrueBrain/dense_1/bias/AdamB'TrueBrain/TrueBrain/dense_1/bias/Adam_1B'TrueBrain/TrueBrain/dense_1/kernel/AdamB)TrueBrain/TrueBrain/dense_1/kernel/Adam_1B%TrueBrain/TrueBrain/dense_2/bias/AdamB'TrueBrain/TrueBrain/dense_2/bias/Adam_1B'TrueBrain/TrueBrain/dense_2/kernel/AdamB)TrueBrain/TrueBrain/dense_2/kernel/Adam_1B%TrueBrain/TrueBrain/dense_3/bias/AdamB'TrueBrain/TrueBrain/dense_3/bias/Adam_1B'TrueBrain/TrueBrain/dense_3/kernel/AdamB)TrueBrain/TrueBrain/dense_3/kernel/Adam_1B'TrueBrain/TrueBrain/dense_4/kernel/AdamB)TrueBrain/TrueBrain/dense_4/kernel/Adam_1B%TrueBrain/TrueBrain/dense_5/bias/AdamB'TrueBrain/TrueBrain/dense_5/bias/Adam_1B'TrueBrain/TrueBrain/dense_5/kernel/AdamB)TrueBrain/TrueBrain/dense_5/kernel/Adam_1B*TrueBrain/TrueBrain/log_sigma_squared/AdamB,TrueBrain/TrueBrain/log_sigma_squared/Adam_1BTrueBrain/beta1_powerBTrueBrain/beta2_powerBTrueBrain/dense/biasBTrueBrain/dense/kernelBTrueBrain/dense_1/biasBTrueBrain/dense_1/kernelBTrueBrain/dense_2/biasBTrueBrain/dense_2/kernelBTrueBrain/dense_3/biasBTrueBrain/dense_3/kernelBTrueBrain/dense_4/kernelBTrueBrain/dense_5/biasBTrueBrain/dense_5/kernelBTrueBrain/global_stepBTrueBrain/last_rewardBTrueBrain/log_sigma_squared*
dtype0
ê
save/SaveV2/shape_and_slicesConst*µ
value«B¨PB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ÿ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesBrain/Brain/dense/bias/AdamBrain/Brain/dense/bias/Adam_1Brain/Brain/dense/kernel/AdamBrain/Brain/dense/kernel/Adam_1Brain/Brain/dense_1/bias/AdamBrain/Brain/dense_1/bias/Adam_1Brain/Brain/dense_1/kernel/Adam!Brain/Brain/dense_1/kernel/Adam_1Brain/Brain/dense_2/bias/AdamBrain/Brain/dense_2/bias/Adam_1Brain/Brain/dense_2/kernel/Adam!Brain/Brain/dense_2/kernel/Adam_1Brain/Brain/dense_3/bias/AdamBrain/Brain/dense_3/bias/Adam_1Brain/Brain/dense_3/kernel/Adam!Brain/Brain/dense_3/kernel/Adam_1Brain/Brain/dense_4/kernel/Adam!Brain/Brain/dense_4/kernel/Adam_1Brain/Brain/dense_5/bias/AdamBrain/Brain/dense_5/bias/Adam_1Brain/Brain/dense_5/kernel/Adam!Brain/Brain/dense_5/kernel/Adam_1"Brain/Brain/log_sigma_squared/Adam$Brain/Brain/log_sigma_squared/Adam_1Brain/beta1_powerBrain/beta2_powerBrain/dense/biasBrain/dense/kernelBrain/dense_1/biasBrain/dense_1/kernelBrain/dense_2/biasBrain/dense_2/kernelBrain/dense_3/biasBrain/dense_3/kernelBrain/dense_4/kernelBrain/dense_5/biasBrain/dense_5/kernelBrain/global_stepBrain/last_rewardBrain/log_sigma_squared#TrueBrain/TrueBrain/dense/bias/Adam%TrueBrain/TrueBrain/dense/bias/Adam_1%TrueBrain/TrueBrain/dense/kernel/Adam'TrueBrain/TrueBrain/dense/kernel/Adam_1%TrueBrain/TrueBrain/dense_1/bias/Adam'TrueBrain/TrueBrain/dense_1/bias/Adam_1'TrueBrain/TrueBrain/dense_1/kernel/Adam)TrueBrain/TrueBrain/dense_1/kernel/Adam_1%TrueBrain/TrueBrain/dense_2/bias/Adam'TrueBrain/TrueBrain/dense_2/bias/Adam_1'TrueBrain/TrueBrain/dense_2/kernel/Adam)TrueBrain/TrueBrain/dense_2/kernel/Adam_1%TrueBrain/TrueBrain/dense_3/bias/Adam'TrueBrain/TrueBrain/dense_3/bias/Adam_1'TrueBrain/TrueBrain/dense_3/kernel/Adam)TrueBrain/TrueBrain/dense_3/kernel/Adam_1'TrueBrain/TrueBrain/dense_4/kernel/Adam)TrueBrain/TrueBrain/dense_4/kernel/Adam_1%TrueBrain/TrueBrain/dense_5/bias/Adam'TrueBrain/TrueBrain/dense_5/bias/Adam_1'TrueBrain/TrueBrain/dense_5/kernel/Adam)TrueBrain/TrueBrain/dense_5/kernel/Adam_1*TrueBrain/TrueBrain/log_sigma_squared/Adam,TrueBrain/TrueBrain/log_sigma_squared/Adam_1TrueBrain/beta1_powerTrueBrain/beta2_powerTrueBrain/dense/biasTrueBrain/dense/kernelTrueBrain/dense_1/biasTrueBrain/dense_1/kernelTrueBrain/dense_2/biasTrueBrain/dense_2/kernelTrueBrain/dense_3/biasTrueBrain/dense_3/kernelTrueBrain/dense_4/kernelTrueBrain/dense_5/biasTrueBrain/dense_5/kernelTrueBrain/global_stepTrueBrain/last_rewardTrueBrain/log_sigma_squared*^
dtypesT
R2P
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
c
save/RestoreV2/tensor_namesConst*0
value'B%BBrain/Brain/dense/bias/Adam*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2

save/AssignAssignBrain/Brain/dense/bias/Adamsave/RestoreV2*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
g
save/RestoreV2_1/tensor_namesConst*2
value)B'BBrain/Brain/dense/bias/Adam_1*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2

save/Assign_1AssignBrain/Brain/dense/bias/Adam_1save/RestoreV2_1*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
g
save/RestoreV2_2/tensor_namesConst*2
value)B'BBrain/Brain/dense/kernel/Adam*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2
¡
save/Assign_2AssignBrain/Brain/dense/kernel/Adamsave/RestoreV2_2*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense/kernel
i
save/RestoreV2_3/tensor_namesConst*4
value+B)BBrain/Brain/dense/kernel/Adam_1*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2
£
save/Assign_3AssignBrain/Brain/dense/kernel/Adam_1save/RestoreV2_3*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense/kernel
g
save/RestoreV2_4/tensor_namesConst*2
value)B'BBrain/Brain/dense_1/bias/Adam*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2
¡
save/Assign_4AssignBrain/Brain/dense_1/bias/Adamsave/RestoreV2_4*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_1/bias
i
save/RestoreV2_5/tensor_namesConst*4
value+B)BBrain/Brain/dense_1/bias/Adam_1*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2
£
save/Assign_5AssignBrain/Brain/dense_1/bias/Adam_1save/RestoreV2_5*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_1/bias
i
save/RestoreV2_6/tensor_namesConst*4
value+B)BBrain/Brain/dense_1/kernel/Adam*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2
¥
save/Assign_6AssignBrain/Brain/dense_1/kernel/Adamsave/RestoreV2_6*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_1/kernel
k
save/RestoreV2_7/tensor_namesConst*6
value-B+B!Brain/Brain/dense_1/kernel/Adam_1*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2
§
save/Assign_7Assign!Brain/Brain/dense_1/kernel/Adam_1save/RestoreV2_7*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_1/kernel
g
save/RestoreV2_8/tensor_namesConst*2
value)B'BBrain/Brain/dense_2/bias/Adam*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2
¡
save/Assign_8AssignBrain/Brain/dense_2/bias/Adamsave/RestoreV2_8*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_2/bias
i
save/RestoreV2_9/tensor_namesConst*4
value+B)BBrain/Brain/dense_2/bias/Adam_1*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2
£
save/Assign_9AssignBrain/Brain/dense_2/bias/Adam_1save/RestoreV2_9*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_2/bias
j
save/RestoreV2_10/tensor_namesConst*4
value+B)BBrain/Brain/dense_2/kernel/Adam*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2
§
save/Assign_10AssignBrain/Brain/dense_2/kernel/Adamsave/RestoreV2_10*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_2/kernel
l
save/RestoreV2_11/tensor_namesConst*6
value-B+B!Brain/Brain/dense_2/kernel/Adam_1*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2
©
save/Assign_11Assign!Brain/Brain/dense_2/kernel/Adam_1save/RestoreV2_11*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_2/kernel
h
save/RestoreV2_12/tensor_namesConst*2
value)B'BBrain/Brain/dense_3/bias/Adam*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2
£
save/Assign_12AssignBrain/Brain/dense_3/bias/Adamsave/RestoreV2_12*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_3/bias
j
save/RestoreV2_13/tensor_namesConst*4
value+B)BBrain/Brain/dense_3/bias/Adam_1*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2
¥
save/Assign_13AssignBrain/Brain/dense_3/bias/Adam_1save/RestoreV2_13*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_3/bias
j
save/RestoreV2_14/tensor_namesConst*4
value+B)BBrain/Brain/dense_3/kernel/Adam*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2
§
save/Assign_14AssignBrain/Brain/dense_3/kernel/Adamsave/RestoreV2_14*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_3/kernel
l
save/RestoreV2_15/tensor_namesConst*6
value-B+B!Brain/Brain/dense_3/kernel/Adam_1*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2
©
save/Assign_15Assign!Brain/Brain/dense_3/kernel/Adam_1save/RestoreV2_15*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_3/kernel
j
save/RestoreV2_16/tensor_namesConst*4
value+B)BBrain/Brain/dense_4/kernel/Adam*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2
§
save/Assign_16AssignBrain/Brain/dense_4/kernel/Adamsave/RestoreV2_16*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_4/kernel
l
save/RestoreV2_17/tensor_namesConst*6
value-B+B!Brain/Brain/dense_4/kernel/Adam_1*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2
©
save/Assign_17Assign!Brain/Brain/dense_4/kernel/Adam_1save/RestoreV2_17*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_4/kernel
h
save/RestoreV2_18/tensor_namesConst*2
value)B'BBrain/Brain/dense_5/bias/Adam*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2
£
save/Assign_18AssignBrain/Brain/dense_5/bias/Adamsave/RestoreV2_18*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_5/bias
j
save/RestoreV2_19/tensor_namesConst*4
value+B)BBrain/Brain/dense_5/bias/Adam_1*
dtype0
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2
¥
save/Assign_19AssignBrain/Brain/dense_5/bias/Adam_1save/RestoreV2_19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_5/bias
j
save/RestoreV2_20/tensor_namesConst*4
value+B)BBrain/Brain/dense_5/kernel/Adam*
dtype0
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2
§
save/Assign_20AssignBrain/Brain/dense_5/kernel/Adamsave/RestoreV2_20*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_5/kernel
l
save/RestoreV2_21/tensor_namesConst*6
value-B+B!Brain/Brain/dense_5/kernel/Adam_1*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2
©
save/Assign_21Assign!Brain/Brain/dense_5/kernel/Adam_1save/RestoreV2_21*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_5/kernel
m
save/RestoreV2_22/tensor_namesConst*7
value.B,B"Brain/Brain/log_sigma_squared/Adam*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2
­
save/Assign_22Assign"Brain/Brain/log_sigma_squared/Adamsave/RestoreV2_22*
T0*
validate_shape(*
use_locking(**
_class 
loc:@Brain/log_sigma_squared
o
save/RestoreV2_23/tensor_namesConst*9
value0B.B$Brain/Brain/log_sigma_squared/Adam_1*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2
¯
save/Assign_23Assign$Brain/Brain/log_sigma_squared/Adam_1save/RestoreV2_23*
T0*
validate_shape(*
use_locking(**
_class 
loc:@Brain/log_sigma_squared
\
save/RestoreV2_24/tensor_namesConst*&
valueBBBrain/beta1_power*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2

save/Assign_24AssignBrain/beta1_powersave/RestoreV2_24*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
\
save/RestoreV2_25/tensor_namesConst*&
valueBBBrain/beta2_power*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2

save/Assign_25AssignBrain/beta2_powersave/RestoreV2_25*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
[
save/RestoreV2_26/tensor_namesConst*%
valueBBBrain/dense/bias*
dtype0
O
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2

save/Assign_26AssignBrain/dense/biassave/RestoreV2_26*
T0*
validate_shape(*
use_locking(*#
_class
loc:@Brain/dense/bias
]
save/RestoreV2_27/tensor_namesConst*'
valueBBBrain/dense/kernel*
dtype0
O
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2

save/Assign_27AssignBrain/dense/kernelsave/RestoreV2_27*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense/kernel
]
save/RestoreV2_28/tensor_namesConst*'
valueBBBrain/dense_1/bias*
dtype0
O
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2

save/Assign_28AssignBrain/dense_1/biassave/RestoreV2_28*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_1/bias
_
save/RestoreV2_29/tensor_namesConst*)
value BBBrain/dense_1/kernel*
dtype0
O
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2

save/Assign_29AssignBrain/dense_1/kernelsave/RestoreV2_29*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_1/kernel
]
save/RestoreV2_30/tensor_namesConst*'
valueBBBrain/dense_2/bias*
dtype0
O
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2

save/Assign_30AssignBrain/dense_2/biassave/RestoreV2_30*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_2/bias
_
save/RestoreV2_31/tensor_namesConst*)
value BBBrain/dense_2/kernel*
dtype0
O
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2

save/Assign_31AssignBrain/dense_2/kernelsave/RestoreV2_31*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_2/kernel
]
save/RestoreV2_32/tensor_namesConst*'
valueBBBrain/dense_3/bias*
dtype0
O
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2

save/Assign_32AssignBrain/dense_3/biassave/RestoreV2_32*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_3/bias
_
save/RestoreV2_33/tensor_namesConst*)
value BBBrain/dense_3/kernel*
dtype0
O
"save/RestoreV2_33/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2

save/Assign_33AssignBrain/dense_3/kernelsave/RestoreV2_33*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_3/kernel
_
save/RestoreV2_34/tensor_namesConst*)
value BBBrain/dense_4/kernel*
dtype0
O
"save/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2

save/Assign_34AssignBrain/dense_4/kernelsave/RestoreV2_34*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_4/kernel
]
save/RestoreV2_35/tensor_namesConst*'
valueBBBrain/dense_5/bias*
dtype0
O
"save/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2

save/Assign_35AssignBrain/dense_5/biassave/RestoreV2_35*
T0*
validate_shape(*
use_locking(*%
_class
loc:@Brain/dense_5/bias
_
save/RestoreV2_36/tensor_namesConst*)
value BBBrain/dense_5/kernel*
dtype0
O
"save/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2

save/Assign_36AssignBrain/dense_5/kernelsave/RestoreV2_36*
T0*
validate_shape(*
use_locking(*'
_class
loc:@Brain/dense_5/kernel
\
save/RestoreV2_37/tensor_namesConst*&
valueBBBrain/global_step*
dtype0
O
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2

save/Assign_37AssignBrain/global_stepsave/RestoreV2_37*
T0*
validate_shape(*
use_locking(*$
_class
loc:@Brain/global_step
\
save/RestoreV2_38/tensor_namesConst*&
valueBBBrain/last_reward*
dtype0
O
"save/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2

save/Assign_38AssignBrain/last_rewardsave/RestoreV2_38*
T0*
validate_shape(*
use_locking(*$
_class
loc:@Brain/last_reward
b
save/RestoreV2_39/tensor_namesConst*,
value#B!BBrain/log_sigma_squared*
dtype0
O
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
dtypes
2
¢
save/Assign_39AssignBrain/log_sigma_squaredsave/RestoreV2_39*
T0*
validate_shape(*
use_locking(**
_class 
loc:@Brain/log_sigma_squared
n
save/RestoreV2_40/tensor_namesConst*8
value/B-B#TrueBrain/TrueBrain/dense/bias/Adam*
dtype0
O
"save/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
dtypes
2
«
save/Assign_40Assign#TrueBrain/TrueBrain/dense/bias/Adamsave/RestoreV2_40*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias
p
save/RestoreV2_41/tensor_namesConst*:
value1B/B%TrueBrain/TrueBrain/dense/bias/Adam_1*
dtype0
O
"save/RestoreV2_41/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_41	RestoreV2
save/Constsave/RestoreV2_41/tensor_names"save/RestoreV2_41/shape_and_slices*
dtypes
2
­
save/Assign_41Assign%TrueBrain/TrueBrain/dense/bias/Adam_1save/RestoreV2_41*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias
p
save/RestoreV2_42/tensor_namesConst*:
value1B/B%TrueBrain/TrueBrain/dense/kernel/Adam*
dtype0
O
"save/RestoreV2_42/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_42	RestoreV2
save/Constsave/RestoreV2_42/tensor_names"save/RestoreV2_42/shape_and_slices*
dtypes
2
¯
save/Assign_42Assign%TrueBrain/TrueBrain/dense/kernel/Adamsave/RestoreV2_42*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense/kernel
r
save/RestoreV2_43/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense/kernel/Adam_1*
dtype0
O
"save/RestoreV2_43/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_43	RestoreV2
save/Constsave/RestoreV2_43/tensor_names"save/RestoreV2_43/shape_and_slices*
dtypes
2
±
save/Assign_43Assign'TrueBrain/TrueBrain/dense/kernel/Adam_1save/RestoreV2_43*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense/kernel
p
save/RestoreV2_44/tensor_namesConst*:
value1B/B%TrueBrain/TrueBrain/dense_1/bias/Adam*
dtype0
O
"save/RestoreV2_44/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_44	RestoreV2
save/Constsave/RestoreV2_44/tensor_names"save/RestoreV2_44/shape_and_slices*
dtypes
2
¯
save/Assign_44Assign%TrueBrain/TrueBrain/dense_1/bias/Adamsave/RestoreV2_44*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_1/bias
r
save/RestoreV2_45/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_1/bias/Adam_1*
dtype0
O
"save/RestoreV2_45/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_45	RestoreV2
save/Constsave/RestoreV2_45/tensor_names"save/RestoreV2_45/shape_and_slices*
dtypes
2
±
save/Assign_45Assign'TrueBrain/TrueBrain/dense_1/bias/Adam_1save/RestoreV2_45*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_1/bias
r
save/RestoreV2_46/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_1/kernel/Adam*
dtype0
O
"save/RestoreV2_46/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_46	RestoreV2
save/Constsave/RestoreV2_46/tensor_names"save/RestoreV2_46/shape_and_slices*
dtypes
2
³
save/Assign_46Assign'TrueBrain/TrueBrain/dense_1/kernel/Adamsave/RestoreV2_46*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_1/kernel
t
save/RestoreV2_47/tensor_namesConst*>
value5B3B)TrueBrain/TrueBrain/dense_1/kernel/Adam_1*
dtype0
O
"save/RestoreV2_47/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_47	RestoreV2
save/Constsave/RestoreV2_47/tensor_names"save/RestoreV2_47/shape_and_slices*
dtypes
2
µ
save/Assign_47Assign)TrueBrain/TrueBrain/dense_1/kernel/Adam_1save/RestoreV2_47*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_1/kernel
p
save/RestoreV2_48/tensor_namesConst*:
value1B/B%TrueBrain/TrueBrain/dense_2/bias/Adam*
dtype0
O
"save/RestoreV2_48/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_48	RestoreV2
save/Constsave/RestoreV2_48/tensor_names"save/RestoreV2_48/shape_and_slices*
dtypes
2
¯
save/Assign_48Assign%TrueBrain/TrueBrain/dense_2/bias/Adamsave/RestoreV2_48*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_2/bias
r
save/RestoreV2_49/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_2/bias/Adam_1*
dtype0
O
"save/RestoreV2_49/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_49	RestoreV2
save/Constsave/RestoreV2_49/tensor_names"save/RestoreV2_49/shape_and_slices*
dtypes
2
±
save/Assign_49Assign'TrueBrain/TrueBrain/dense_2/bias/Adam_1save/RestoreV2_49*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_2/bias
r
save/RestoreV2_50/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_2/kernel/Adam*
dtype0
O
"save/RestoreV2_50/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_50	RestoreV2
save/Constsave/RestoreV2_50/tensor_names"save/RestoreV2_50/shape_and_slices*
dtypes
2
³
save/Assign_50Assign'TrueBrain/TrueBrain/dense_2/kernel/Adamsave/RestoreV2_50*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_2/kernel
t
save/RestoreV2_51/tensor_namesConst*>
value5B3B)TrueBrain/TrueBrain/dense_2/kernel/Adam_1*
dtype0
O
"save/RestoreV2_51/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_51	RestoreV2
save/Constsave/RestoreV2_51/tensor_names"save/RestoreV2_51/shape_and_slices*
dtypes
2
µ
save/Assign_51Assign)TrueBrain/TrueBrain/dense_2/kernel/Adam_1save/RestoreV2_51*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_2/kernel
p
save/RestoreV2_52/tensor_namesConst*:
value1B/B%TrueBrain/TrueBrain/dense_3/bias/Adam*
dtype0
O
"save/RestoreV2_52/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_52	RestoreV2
save/Constsave/RestoreV2_52/tensor_names"save/RestoreV2_52/shape_and_slices*
dtypes
2
¯
save/Assign_52Assign%TrueBrain/TrueBrain/dense_3/bias/Adamsave/RestoreV2_52*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_3/bias
r
save/RestoreV2_53/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_3/bias/Adam_1*
dtype0
O
"save/RestoreV2_53/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_53	RestoreV2
save/Constsave/RestoreV2_53/tensor_names"save/RestoreV2_53/shape_and_slices*
dtypes
2
±
save/Assign_53Assign'TrueBrain/TrueBrain/dense_3/bias/Adam_1save/RestoreV2_53*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_3/bias
r
save/RestoreV2_54/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_3/kernel/Adam*
dtype0
O
"save/RestoreV2_54/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_54	RestoreV2
save/Constsave/RestoreV2_54/tensor_names"save/RestoreV2_54/shape_and_slices*
dtypes
2
³
save/Assign_54Assign'TrueBrain/TrueBrain/dense_3/kernel/Adamsave/RestoreV2_54*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_3/kernel
t
save/RestoreV2_55/tensor_namesConst*>
value5B3B)TrueBrain/TrueBrain/dense_3/kernel/Adam_1*
dtype0
O
"save/RestoreV2_55/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_55	RestoreV2
save/Constsave/RestoreV2_55/tensor_names"save/RestoreV2_55/shape_and_slices*
dtypes
2
µ
save/Assign_55Assign)TrueBrain/TrueBrain/dense_3/kernel/Adam_1save/RestoreV2_55*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_3/kernel
r
save/RestoreV2_56/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_4/kernel/Adam*
dtype0
O
"save/RestoreV2_56/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_56	RestoreV2
save/Constsave/RestoreV2_56/tensor_names"save/RestoreV2_56/shape_and_slices*
dtypes
2
³
save/Assign_56Assign'TrueBrain/TrueBrain/dense_4/kernel/Adamsave/RestoreV2_56*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_4/kernel
t
save/RestoreV2_57/tensor_namesConst*>
value5B3B)TrueBrain/TrueBrain/dense_4/kernel/Adam_1*
dtype0
O
"save/RestoreV2_57/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_57	RestoreV2
save/Constsave/RestoreV2_57/tensor_names"save/RestoreV2_57/shape_and_slices*
dtypes
2
µ
save/Assign_57Assign)TrueBrain/TrueBrain/dense_4/kernel/Adam_1save/RestoreV2_57*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_4/kernel
p
save/RestoreV2_58/tensor_namesConst*:
value1B/B%TrueBrain/TrueBrain/dense_5/bias/Adam*
dtype0
O
"save/RestoreV2_58/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_58	RestoreV2
save/Constsave/RestoreV2_58/tensor_names"save/RestoreV2_58/shape_and_slices*
dtypes
2
¯
save/Assign_58Assign%TrueBrain/TrueBrain/dense_5/bias/Adamsave/RestoreV2_58*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_5/bias
r
save/RestoreV2_59/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_5/bias/Adam_1*
dtype0
O
"save/RestoreV2_59/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_59	RestoreV2
save/Constsave/RestoreV2_59/tensor_names"save/RestoreV2_59/shape_and_slices*
dtypes
2
±
save/Assign_59Assign'TrueBrain/TrueBrain/dense_5/bias/Adam_1save/RestoreV2_59*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_5/bias
r
save/RestoreV2_60/tensor_namesConst*<
value3B1B'TrueBrain/TrueBrain/dense_5/kernel/Adam*
dtype0
O
"save/RestoreV2_60/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_60	RestoreV2
save/Constsave/RestoreV2_60/tensor_names"save/RestoreV2_60/shape_and_slices*
dtypes
2
³
save/Assign_60Assign'TrueBrain/TrueBrain/dense_5/kernel/Adamsave/RestoreV2_60*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_5/kernel
t
save/RestoreV2_61/tensor_namesConst*>
value5B3B)TrueBrain/TrueBrain/dense_5/kernel/Adam_1*
dtype0
O
"save/RestoreV2_61/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_61	RestoreV2
save/Constsave/RestoreV2_61/tensor_names"save/RestoreV2_61/shape_and_slices*
dtypes
2
µ
save/Assign_61Assign)TrueBrain/TrueBrain/dense_5/kernel/Adam_1save/RestoreV2_61*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_5/kernel
u
save/RestoreV2_62/tensor_namesConst*?
value6B4B*TrueBrain/TrueBrain/log_sigma_squared/Adam*
dtype0
O
"save/RestoreV2_62/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_62	RestoreV2
save/Constsave/RestoreV2_62/tensor_names"save/RestoreV2_62/shape_and_slices*
dtypes
2
¹
save/Assign_62Assign*TrueBrain/TrueBrain/log_sigma_squared/Adamsave/RestoreV2_62*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@TrueBrain/log_sigma_squared
w
save/RestoreV2_63/tensor_namesConst*A
value8B6B,TrueBrain/TrueBrain/log_sigma_squared/Adam_1*
dtype0
O
"save/RestoreV2_63/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_63	RestoreV2
save/Constsave/RestoreV2_63/tensor_names"save/RestoreV2_63/shape_and_slices*
dtypes
2
»
save/Assign_63Assign,TrueBrain/TrueBrain/log_sigma_squared/Adam_1save/RestoreV2_63*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@TrueBrain/log_sigma_squared
`
save/RestoreV2_64/tensor_namesConst**
value!BBTrueBrain/beta1_power*
dtype0
O
"save/RestoreV2_64/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_64	RestoreV2
save/Constsave/RestoreV2_64/tensor_names"save/RestoreV2_64/shape_and_slices*
dtypes
2

save/Assign_64AssignTrueBrain/beta1_powersave/RestoreV2_64*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias
`
save/RestoreV2_65/tensor_namesConst**
value!BBTrueBrain/beta2_power*
dtype0
O
"save/RestoreV2_65/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_65	RestoreV2
save/Constsave/RestoreV2_65/tensor_names"save/RestoreV2_65/shape_and_slices*
dtypes
2

save/Assign_65AssignTrueBrain/beta2_powersave/RestoreV2_65*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias
_
save/RestoreV2_66/tensor_namesConst*)
value BBTrueBrain/dense/bias*
dtype0
O
"save/RestoreV2_66/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_66	RestoreV2
save/Constsave/RestoreV2_66/tensor_names"save/RestoreV2_66/shape_and_slices*
dtypes
2

save/Assign_66AssignTrueBrain/dense/biassave/RestoreV2_66*
T0*
validate_shape(*
use_locking(*'
_class
loc:@TrueBrain/dense/bias
a
save/RestoreV2_67/tensor_namesConst*+
value"B BTrueBrain/dense/kernel*
dtype0
O
"save/RestoreV2_67/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_67	RestoreV2
save/Constsave/RestoreV2_67/tensor_names"save/RestoreV2_67/shape_and_slices*
dtypes
2
 
save/Assign_67AssignTrueBrain/dense/kernelsave/RestoreV2_67*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense/kernel
a
save/RestoreV2_68/tensor_namesConst*+
value"B BTrueBrain/dense_1/bias*
dtype0
O
"save/RestoreV2_68/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_68	RestoreV2
save/Constsave/RestoreV2_68/tensor_names"save/RestoreV2_68/shape_and_slices*
dtypes
2
 
save/Assign_68AssignTrueBrain/dense_1/biassave/RestoreV2_68*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_1/bias
c
save/RestoreV2_69/tensor_namesConst*-
value$B"BTrueBrain/dense_1/kernel*
dtype0
O
"save/RestoreV2_69/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_69	RestoreV2
save/Constsave/RestoreV2_69/tensor_names"save/RestoreV2_69/shape_and_slices*
dtypes
2
¤
save/Assign_69AssignTrueBrain/dense_1/kernelsave/RestoreV2_69*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_1/kernel
a
save/RestoreV2_70/tensor_namesConst*+
value"B BTrueBrain/dense_2/bias*
dtype0
O
"save/RestoreV2_70/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_70	RestoreV2
save/Constsave/RestoreV2_70/tensor_names"save/RestoreV2_70/shape_and_slices*
dtypes
2
 
save/Assign_70AssignTrueBrain/dense_2/biassave/RestoreV2_70*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_2/bias
c
save/RestoreV2_71/tensor_namesConst*-
value$B"BTrueBrain/dense_2/kernel*
dtype0
O
"save/RestoreV2_71/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_71	RestoreV2
save/Constsave/RestoreV2_71/tensor_names"save/RestoreV2_71/shape_and_slices*
dtypes
2
¤
save/Assign_71AssignTrueBrain/dense_2/kernelsave/RestoreV2_71*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_2/kernel
a
save/RestoreV2_72/tensor_namesConst*+
value"B BTrueBrain/dense_3/bias*
dtype0
O
"save/RestoreV2_72/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_72	RestoreV2
save/Constsave/RestoreV2_72/tensor_names"save/RestoreV2_72/shape_and_slices*
dtypes
2
 
save/Assign_72AssignTrueBrain/dense_3/biassave/RestoreV2_72*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_3/bias
c
save/RestoreV2_73/tensor_namesConst*-
value$B"BTrueBrain/dense_3/kernel*
dtype0
O
"save/RestoreV2_73/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_73	RestoreV2
save/Constsave/RestoreV2_73/tensor_names"save/RestoreV2_73/shape_and_slices*
dtypes
2
¤
save/Assign_73AssignTrueBrain/dense_3/kernelsave/RestoreV2_73*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_3/kernel
c
save/RestoreV2_74/tensor_namesConst*-
value$B"BTrueBrain/dense_4/kernel*
dtype0
O
"save/RestoreV2_74/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_74	RestoreV2
save/Constsave/RestoreV2_74/tensor_names"save/RestoreV2_74/shape_and_slices*
dtypes
2
¤
save/Assign_74AssignTrueBrain/dense_4/kernelsave/RestoreV2_74*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_4/kernel
a
save/RestoreV2_75/tensor_namesConst*+
value"B BTrueBrain/dense_5/bias*
dtype0
O
"save/RestoreV2_75/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_75	RestoreV2
save/Constsave/RestoreV2_75/tensor_names"save/RestoreV2_75/shape_and_slices*
dtypes
2
 
save/Assign_75AssignTrueBrain/dense_5/biassave/RestoreV2_75*
T0*
validate_shape(*
use_locking(*)
_class
loc:@TrueBrain/dense_5/bias
c
save/RestoreV2_76/tensor_namesConst*-
value$B"BTrueBrain/dense_5/kernel*
dtype0
O
"save/RestoreV2_76/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_76	RestoreV2
save/Constsave/RestoreV2_76/tensor_names"save/RestoreV2_76/shape_and_slices*
dtypes
2
¤
save/Assign_76AssignTrueBrain/dense_5/kernelsave/RestoreV2_76*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@TrueBrain/dense_5/kernel
`
save/RestoreV2_77/tensor_namesConst**
value!BBTrueBrain/global_step*
dtype0
O
"save/RestoreV2_77/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_77	RestoreV2
save/Constsave/RestoreV2_77/tensor_names"save/RestoreV2_77/shape_and_slices*
dtypes
2

save/Assign_77AssignTrueBrain/global_stepsave/RestoreV2_77*
T0*
validate_shape(*
use_locking(*(
_class
loc:@TrueBrain/global_step
`
save/RestoreV2_78/tensor_namesConst**
value!BBTrueBrain/last_reward*
dtype0
O
"save/RestoreV2_78/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_78	RestoreV2
save/Constsave/RestoreV2_78/tensor_names"save/RestoreV2_78/shape_and_slices*
dtypes
2

save/Assign_78AssignTrueBrain/last_rewardsave/RestoreV2_78*
T0*
validate_shape(*
use_locking(*(
_class
loc:@TrueBrain/last_reward
f
save/RestoreV2_79/tensor_namesConst*0
value'B%BTrueBrain/log_sigma_squared*
dtype0
O
"save/RestoreV2_79/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_79	RestoreV2
save/Constsave/RestoreV2_79/tensor_names"save/RestoreV2_79/shape_and_slices*
dtypes
2
ª
save/Assign_79AssignTrueBrain/log_sigma_squaredsave/RestoreV2_79*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@TrueBrain/log_sigma_squared
Ü

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79
±
ConstConst*
valueBB
batch_sizeB2048BbetaB0.0025Bbuffer_sizeB5000BepsilonB0.2BgammaB0.99Bhidden_unitsB64BlambdB0.95Blearning_rateB0.0003B	max_stepsB1.0e6B	normalizeBFalseB	num_epochB5B
num_layersB2Btime_horizonB2048Bsequence_lengthB32Bsummary_freqB10000Buse_recurrentBFalseBgraph_scopeBBrainBsummary_pathB./summaries/mice9_BrainBis_ghostBFalseBis_imitationBFalse*
dtype0
K
Hyperparameters/tagConst* 
valueB BHyperparameters*
dtype0
\
+Hyperparameters/serialized_summary_metadataConst*
valueB B

text*
dtype0
t
HyperparametersTensorSummaryV2Hyperparameters/tagConst+Hyperparameters/serialized_summary_metadata*
T0
»
Const_1Const*
valueBB
batch_sizeB2048BbetaB0.0025Bbuffer_sizeB5000BepsilonB0.2BgammaB0.99Bhidden_unitsB64BlambdB0.95Blearning_rateB0.0003B	max_stepsB1.0e6B	normalizeBFalseB	num_epochB5B
num_layersB2Btime_horizonB2048Bsequence_lengthB32Bsummary_freqB10000Buse_recurrentBFalseBgraph_scopeB	TrueBrainBsummary_pathB./summaries/mice9_TrueBrainBis_ghostBFalseBis_imitationBFalse*
dtype0
O
Hyperparameters_1/tagConst*"
valueB BHyperparameters_1*
dtype0
^
-Hyperparameters_1/serialized_summary_metadataConst*
valueB B

text*
dtype0
|
Hyperparameters_1TensorSummaryV2Hyperparameters_1/tagConst_1-Hyperparameters_1/serialized_summary_metadata*
T0"