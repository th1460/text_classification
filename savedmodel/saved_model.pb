¼
ū"Ź"
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
0
Round
x"T
y"T"
Ttype:

2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.02b'v1.10.0-rc1-19-g656e7a2b34'ŚĀ
r
dense_1_inputPlaceholder*
dtype0*
shape:’’’’’’’’’N*(
_output_shapes
:’’’’’’’’’N
m
dense_1/random_uniform/shapeConst*
valueB"'  
   *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
valueB
 *ÜČ¼*
dtype0*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
valueB
 *ÜČ<*
dtype0*
_output_shapes
: 
Ø
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
T0*
dtype0*
seed2ä~*
seed±’å)*
_output_shapes
:	N

z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes
:	N


dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes
:	N


dense_1/kernel
VariableV2*
dtype0*
shared_name *
shape:	N
*
	container *
_output_shapes
:	N

½
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel*
_output_shapes
:	N

|
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	N

Z
dense_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

x
dense_1/bias
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_output_shapes
:

©
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes
:

q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:


dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’


dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’

m
dense_2/random_uniform/shapeConst*
valueB"
   
   *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *7æ*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *7?*
dtype0*
_output_shapes
: 
Ø
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0*
seed2¼Ū*
seed±’å)*
_output_shapes

:


z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes

:


~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

:



dense_2/kernel
VariableV2*
dtype0*
shared_name *
shape
:

*
	container *
_output_shapes

:


¼
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel*
_output_shapes

:


{
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:


Z
dense_2/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

x
dense_2/bias
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_output_shapes
:

©
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes
:

q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:


dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’


dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

W
dense_2/ReluReludense_2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’

m
dense_3/random_uniform/shapeConst*
valueB"
      *
dtype0*
_output_shapes
:
_
dense_3/random_uniform/minConst*
valueB
 *=æ*
dtype0*
_output_shapes
: 
_
dense_3/random_uniform/maxConst*
valueB
 *=?*
dtype0*
_output_shapes
: 
Ø
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
T0*
dtype0*
seed2×ĻÆ*
seed±’å)*
_output_shapes

:

z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
T0*
_output_shapes
: 

dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub*
T0*
_output_shapes

:

~
dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
T0*
_output_shapes

:


dense_3/kernel
VariableV2*
dtype0*
shared_name *
shape
:
*
	container *
_output_shapes

:

¼
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel*
_output_shapes

:

{
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:

Z
dense_3/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_3/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_output_shapes
:
©
dense_3/bias/AssignAssigndense_3/biasdense_3/Const*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes
:
q
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes
:

dense_3/MatMulMatMuldense_2/Reludense_3/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’

dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
]
dense_3/SigmoidSigmoiddense_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
]
RMSprop/lr/initial_valueConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
n

RMSprop/lr
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 
Ŗ
RMSprop/lr/AssignAssign
RMSprop/lrRMSprop/lr/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@RMSprop/lr*
_output_shapes
: 
g
RMSprop/lr/readIdentity
RMSprop/lr*
T0*
_class
loc:@RMSprop/lr*
_output_shapes
: 
^
RMSprop/rho/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
RMSprop/rho
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 
®
RMSprop/rho/AssignAssignRMSprop/rhoRMSprop/rho/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@RMSprop/rho*
_output_shapes
: 
j
RMSprop/rho/readIdentityRMSprop/rho*
T0*
_class
loc:@RMSprop/rho*
_output_shapes
: 
`
RMSprop/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
q
RMSprop/decay
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_output_shapes
: 
¶
RMSprop/decay/AssignAssignRMSprop/decayRMSprop/decay/initial_value*
T0*
use_locking(*
validate_shape(* 
_class
loc:@RMSprop/decay*
_output_shapes
: 
p
RMSprop/decay/readIdentityRMSprop/decay*
T0* 
_class
loc:@RMSprop/decay*
_output_shapes
: 
b
 RMSprop/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
v
RMSprop/iterations
VariableV2*
dtype0	*
shared_name *
shape: *
	container *
_output_shapes
: 
Ź
RMSprop/iterations/AssignAssignRMSprop/iterations RMSprop/iterations/initial_value*
T0	*
use_locking(*
validate_shape(*%
_class
loc:@RMSprop/iterations*
_output_shapes
: 

RMSprop/iterations/readIdentityRMSprop/iterations*
T0	*%
_class
loc:@RMSprop/iterations*
_output_shapes
: 

dense_3_targetPlaceholder*
dtype0*%
shape:’’’’’’’’’’’’’’’’’’*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
q
dense_3_sample_weightsPlaceholder*
dtype0*
shape:’’’’’’’’’*#
_output_shapes
:’’’’’’’’’
\
loss/dense_3_loss/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
\
loss/dense_3_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/dense_3_loss/subSubloss/dense_3_loss/sub/xloss/dense_3_loss/Const*
T0*
_output_shapes
: 

'loss/dense_3_loss/clip_by_value/MinimumMinimumdense_3/Sigmoidloss/dense_3_loss/sub*
T0*'
_output_shapes
:’’’’’’’’’

loss/dense_3_loss/clip_by_valueMaximum'loss/dense_3_loss/clip_by_value/Minimumloss/dense_3_loss/Const*
T0*'
_output_shapes
:’’’’’’’’’
^
loss/dense_3_loss/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

loss/dense_3_loss/sub_1Subloss/dense_3_loss/sub_1/xloss/dense_3_loss/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’

loss/dense_3_loss/truedivRealDivloss/dense_3_loss/clip_by_valueloss/dense_3_loss/sub_1*
T0*'
_output_shapes
:’’’’’’’’’
i
loss/dense_3_loss/LogLogloss/dense_3_loss/truediv*
T0*'
_output_shapes
:’’’’’’’’’

*loss/dense_3_loss/logistic_loss/zeros_like	ZerosLikeloss/dense_3_loss/Log*
T0*'
_output_shapes
:’’’’’’’’’
±
,loss/dense_3_loss/logistic_loss/GreaterEqualGreaterEqualloss/dense_3_loss/Log*loss/dense_3_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:’’’’’’’’’
Ó
&loss/dense_3_loss/logistic_loss/SelectSelect,loss/dense_3_loss/logistic_loss/GreaterEqualloss/dense_3_loss/Log*loss/dense_3_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:’’’’’’’’’
s
#loss/dense_3_loss/logistic_loss/NegNegloss/dense_3_loss/Log*
T0*'
_output_shapes
:’’’’’’’’’
Ī
(loss/dense_3_loss/logistic_loss/Select_1Select,loss/dense_3_loss/logistic_loss/GreaterEqual#loss/dense_3_loss/logistic_loss/Negloss/dense_3_loss/Log*
T0*'
_output_shapes
:’’’’’’’’’

#loss/dense_3_loss/logistic_loss/mulMulloss/dense_3_loss/Logdense_3_target*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
²
#loss/dense_3_loss/logistic_loss/subSub&loss/dense_3_loss/logistic_loss/Select#loss/dense_3_loss/logistic_loss/mul*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

#loss/dense_3_loss/logistic_loss/ExpExp(loss/dense_3_loss/logistic_loss/Select_1*
T0*'
_output_shapes
:’’’’’’’’’

%loss/dense_3_loss/logistic_loss/Log1pLog1p#loss/dense_3_loss/logistic_loss/Exp*
T0*'
_output_shapes
:’’’’’’’’’
­
loss/dense_3_loss/logistic_lossAdd#loss/dense_3_loss/logistic_loss/sub%loss/dense_3_loss/logistic_loss/Log1p*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
s
(loss/dense_3_loss/Mean/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
“
loss/dense_3_loss/MeanMeanloss/dense_3_loss/logistic_loss(loss/dense_3_loss/Mean/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:’’’’’’’’’
m
*loss/dense_3_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Æ
loss/dense_3_loss/Mean_1Meanloss/dense_3_loss/Mean*loss/dense_3_loss/Mean_1/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:’’’’’’’’’
|
loss/dense_3_loss/mulMulloss/dense_3_loss/Mean_1dense_3_sample_weights*
T0*#
_output_shapes
:’’’’’’’’’
a
loss/dense_3_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_3_loss/NotEqualNotEqualdense_3_sample_weightsloss/dense_3_loss/NotEqual/y*
T0*#
_output_shapes
:’’’’’’’’’
w
loss/dense_3_loss/CastCastloss/dense_3_loss/NotEqual*

DstT0*

SrcT0
*#
_output_shapes
:’’’’’’’’’
c
loss/dense_3_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_3_loss/Mean_2Meanloss/dense_3_loss/Castloss/dense_3_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

loss/dense_3_loss/truediv_1RealDivloss/dense_3_loss/mulloss/dense_3_loss/Mean_2*
T0*#
_output_shapes
:’’’’’’’’’
c
loss/dense_3_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_3_loss/Mean_3Meanloss/dense_3_loss/truediv_1loss/dense_3_loss/Const_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_3_loss/Mean_3*
T0*
_output_shapes
: 
]
metrics/acc/RoundRounddense_3/Sigmoid*
T0*'
_output_shapes
:’’’’’’’’’
x
metrics/acc/EqualEqualdense_3_targetmetrics/acc/Round*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
u
metrics/acc/CastCastmetrics/acc/Equal*

DstT0*

SrcT0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:’’’’’’’’’
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

 training/RMSprop/gradients/ShapeConst*
valueB *
dtype0*
_class
loc:@loss/mul*
_output_shapes
: 

$training/RMSprop/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_class
loc:@loss/mul*
_output_shapes
: 
æ
training/RMSprop/gradients/FillFill training/RMSprop/gradients/Shape$training/RMSprop/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
¬
,training/RMSprop/gradients/loss/mul_grad/MulMultraining/RMSprop/gradients/Fillloss/dense_3_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
 
.training/RMSprop/gradients/loss/mul_grad/Mul_1Multraining/RMSprop/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
½
Ftraining/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
:
£
@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/ReshapeReshape.training/RMSprop/gradients/loss/mul_grad/Mul_1Ftraining/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
:
Ę
>training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/ShapeShapeloss/dense_3_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
:
“
=training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/TileTile@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Reshape>training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Shape*
T0*

Tmultiples0*+
_class!
loc:@loss/dense_3_loss/Mean_3*#
_output_shapes
:’’’’’’’’’
Č
@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Shape_1Shapeloss/dense_3_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
:
°
@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Shape_2Const*
valueB *
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
: 
µ
>training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/ConstConst*
valueB: *
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
:
²
=training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/ProdProd@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Shape_1>training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Const*
	keep_dims( *
T0*

Tidx0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
: 
·
@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Const_1Const*
valueB: *
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
:
¶
?training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Prod_1Prod@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Shape_2@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Const_1*
	keep_dims( *
T0*

Tidx0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
: 
±
Btraining/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
: 

@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/MaximumMaximum?training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Prod_1Btraining/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
: 

Atraining/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/floordivFloorDiv=training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Prod@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Maximum*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
: 
å
=training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/CastCastAtraining/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/floordiv*

DstT0*

SrcT0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
_output_shapes
: 
¤
@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/truedivRealDiv=training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Tile=training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/Cast*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_3*#
_output_shapes
:’’’’’’’’’
Ę
Atraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/ShapeShapeloss/dense_3_loss/mul*
T0*
out_type0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*
_output_shapes
:
¶
Ctraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Shape_1Const*
valueB *
dtype0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*
_output_shapes
: 
ß
Qtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsAtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/ShapeCtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

Ctraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/RealDivRealDiv@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/truedivloss/dense_3_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*#
_output_shapes
:’’’’’’’’’
Ī
?training/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/SumSumCtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/RealDivQtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*
_output_shapes
:
¾
Ctraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/ReshapeReshape?training/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/SumAtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Shape*
T0*
Tshape0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*#
_output_shapes
:’’’’’’’’’
»
?training/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/NegNegloss/dense_3_loss/mul*
T0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*#
_output_shapes
:’’’’’’’’’

Etraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/RealDiv_1RealDiv?training/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Negloss/dense_3_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*#
_output_shapes
:’’’’’’’’’

Etraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/RealDiv_2RealDivEtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/RealDiv_1loss/dense_3_loss/Mean_2*
T0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*#
_output_shapes
:’’’’’’’’’
­
?training/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/mulMul@training/RMSprop/gradients/loss/dense_3_loss/Mean_3_grad/truedivEtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*#
_output_shapes
:’’’’’’’’’
Ī
Atraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Sum_1Sum?training/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/mulStraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*
_output_shapes
:
·
Etraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Reshape_1ReshapeAtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Sum_1Ctraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/dense_3_loss/truediv_1*
_output_shapes
: 
½
;training/RMSprop/gradients/loss/dense_3_loss/mul_grad/ShapeShapeloss/dense_3_loss/Mean_1*
T0*
out_type0*(
_class
loc:@loss/dense_3_loss/mul*
_output_shapes
:
½
=training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Shape_1Shapedense_3_sample_weights*
T0*
out_type0*(
_class
loc:@loss/dense_3_loss/mul*
_output_shapes
:
Ē
Ktraining/RMSprop/gradients/loss/dense_3_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs;training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Shape=training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_3_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
õ
9training/RMSprop/gradients/loss/dense_3_loss/mul_grad/MulMulCtraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Reshapedense_3_sample_weights*
T0*(
_class
loc:@loss/dense_3_loss/mul*#
_output_shapes
:’’’’’’’’’
²
9training/RMSprop/gradients/loss/dense_3_loss/mul_grad/SumSum9training/RMSprop/gradients/loss/dense_3_loss/mul_grad/MulKtraining/RMSprop/gradients/loss/dense_3_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*(
_class
loc:@loss/dense_3_loss/mul*
_output_shapes
:
¦
=training/RMSprop/gradients/loss/dense_3_loss/mul_grad/ReshapeReshape9training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Sum;training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Shape*
T0*
Tshape0*(
_class
loc:@loss/dense_3_loss/mul*#
_output_shapes
:’’’’’’’’’
ł
;training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Mul_1Mulloss/dense_3_loss/Mean_1Ctraining/RMSprop/gradients/loss/dense_3_loss/truediv_1_grad/Reshape*
T0*(
_class
loc:@loss/dense_3_loss/mul*#
_output_shapes
:’’’’’’’’’
ø
;training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Sum_1Sum;training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Mul_1Mtraining/RMSprop/gradients/loss/dense_3_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*(
_class
loc:@loss/dense_3_loss/mul*
_output_shapes
:
¬
?training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Reshape_1Reshape;training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Sum_1=training/RMSprop/gradients/loss/dense_3_loss/mul_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@loss/dense_3_loss/mul*#
_output_shapes
:’’’’’’’’’
Į
>training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/ShapeShapeloss/dense_3_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
¬
=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/SizeConst*
value	B :*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
ž
<training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/addAdd*loss/dense_3_loss/Mean_1/reduction_indices=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 

<training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/modFloorMod<training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/add=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
·
@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Shape_1Const*
valueB: *
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
³
Dtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/range/startConst*
value	B : *
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
³
Dtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/range/deltaConst*
value	B :*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
ē
>training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/rangeRangeDtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/range/start=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/SizeDtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/range/delta*

Tidx0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
²
Ctraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Fill/valueConst*
value	B :*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
®
=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/FillFill@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Shape_1Ctraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
Æ
Ftraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/DynamicStitchDynamicStitch>training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/range<training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/mod>training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Shape=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Fill*
T0*
N*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
±
Btraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
©
@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/MaximumMaximumFtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/DynamicStitchBtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
”
Atraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/floordivFloorDiv>training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Shape@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Maximum*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
»
@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/ReshapeReshape=training/RMSprop/gradients/loss/dense_3_loss/mul_grad/ReshapeFtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss/dense_3_loss/Mean_1*#
_output_shapes
:’’’’’’’’’
·
=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/TileTile@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/ReshapeAtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/floordiv*
T0*

Tmultiples0*+
_class!
loc:@loss/dense_3_loss/Mean_1*#
_output_shapes
:’’’’’’’’’
Ć
@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Shape_2Shapeloss/dense_3_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
Å
@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Shape_3Shapeloss/dense_3_loss/Mean_1*
T0*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
µ
>training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/ConstConst*
valueB: *
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
²
=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/ProdProd@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Shape_2>training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
·
@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Const_1Const*
valueB: *
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
:
¶
?training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Prod_1Prod@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Shape_3@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
³
Dtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
¢
Btraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Maximum_1Maximum?training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Prod_1Dtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Maximum_1/y*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
 
Ctraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/floordiv_1FloorDiv=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/ProdBtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Maximum_1*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
ē
=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/CastCastCtraining/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/floordiv_1*

DstT0*

SrcT0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
_output_shapes
: 
¤
@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/truedivRealDiv=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Tile=training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/Cast*
T0*+
_class!
loc:@loss/dense_3_loss/Mean_1*#
_output_shapes
:’’’’’’’’’
Ę
<training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/ShapeShapeloss/dense_3_loss/logistic_loss*
T0*
out_type0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:
Ø
;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/SizeConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
ō
:training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/addAdd(loss/dense_3_loss/Mean/reduction_indices;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 

:training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/modFloorMod:training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/add;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
¬
>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Shape_1Const*
valueB *
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
Æ
Btraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/range/startConst*
value	B : *
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
Æ
Btraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/range/deltaConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
Ż
<training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/rangeRangeBtraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/range/start;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/SizeBtraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/range/delta*

Tidx0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:
®
Atraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Fill/valueConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
¤
;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/FillFill>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Shape_1Atraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Fill/value*
T0*

index_type0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
£
Dtraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/DynamicStitchDynamicStitch<training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/range:training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/mod<training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Shape;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Fill*
T0*
N*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:
­
@training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
”
>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/MaximumMaximumDtraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/DynamicStitch@training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:

?training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/floordivFloorDiv<training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Shape>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:
Å
>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/ReshapeReshape@training/RMSprop/gradients/loss/dense_3_loss/Mean_1_grad/truedivDtraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*)
_class
loc:@loss/dense_3_loss/Mean*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
¼
;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/TileTile>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Reshape?training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/floordiv*
T0*

Tmultiples0*)
_class
loc:@loss/dense_3_loss/Mean*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Č
>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Shape_2Shapeloss/dense_3_loss/logistic_loss*
T0*
out_type0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:
æ
>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Shape_3Shapeloss/dense_3_loss/Mean*
T0*
out_type0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:
±
<training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/ConstConst*
valueB: *
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:
Ŗ
;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/ProdProd>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Shape_2<training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
³
>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Const_1Const*
valueB: *
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
:
®
=training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Prod_1Prod>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Shape_3>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
Æ
Btraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 

@training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Maximum_1Maximum=training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Prod_1Btraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 

Atraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/floordiv_1FloorDiv;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Prod@training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
į
;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/CastCastAtraining/RMSprop/gradients/loss/dense_3_loss/Mean_grad/floordiv_1*

DstT0*

SrcT0*)
_class
loc:@loss/dense_3_loss/Mean*
_output_shapes
: 
©
>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/truedivRealDiv;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Tile;training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/dense_3_loss/Mean*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ü
Etraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/ShapeShape#loss/dense_3_loss/logistic_loss/sub*
T0*
out_type0*2
_class(
&$loc:@loss/dense_3_loss/logistic_loss*
_output_shapes
:
ą
Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Shape_1Shape%loss/dense_3_loss/logistic_loss/Log1p*
T0*
out_type0*2
_class(
&$loc:@loss/dense_3_loss/logistic_loss*
_output_shapes
:
ļ
Utraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/ShapeGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_3_loss/logistic_loss*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Õ
Ctraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/SumSum>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/truedivUtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*2
_class(
&$loc:@loss/dense_3_loss/logistic_loss*
_output_shapes
:
Ū
Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/ReshapeReshapeCtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/SumEtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_3_loss/logistic_loss*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ł
Etraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Sum_1Sum>training/RMSprop/gradients/loss/dense_3_loss/Mean_grad/truedivWtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*2
_class(
&$loc:@loss/dense_3_loss/logistic_loss*
_output_shapes
:
Ų
Itraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Reshape_1ReshapeEtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Sum_1Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_3_loss/logistic_loss*'
_output_shapes
:’’’’’’’’’
ē
Itraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/ShapeShape&loss/dense_3_loss/logistic_loss/Select*
T0*
out_type0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/sub*
_output_shapes
:
ę
Ktraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Shape_1Shape#loss/dense_3_loss/logistic_loss/mul*
T0*
out_type0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/sub*
_output_shapes
:
’
Ytraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/ShapeKtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/sub*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ź
Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/SumSumGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/ReshapeYtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/sub*
_output_shapes
:
ā
Ktraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/ReshapeReshapeGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/SumItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Shape*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/sub*'
_output_shapes
:’’’’’’’’’
ī
Itraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Sum_1SumGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Reshape[training/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/sub*
_output_shapes
:
ō
Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/NegNegItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Sum_1*
T0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/sub*
_output_shapes
:
ļ
Mtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Reshape_1ReshapeGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/NegKtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/sub*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Ktraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Log1p_grad/add/xConstJ^training/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Reshape_1*
valueB
 *  ?*
dtype0*8
_class.
,*loc:@loss/dense_3_loss/logistic_loss/Log1p*
_output_shapes
: 
®
Itraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Log1p_grad/addAddKtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Log1p_grad/add/x#loss/dense_3_loss/logistic_loss/Exp*
T0*8
_class.
,*loc:@loss/dense_3_loss/logistic_loss/Log1p*'
_output_shapes
:’’’’’’’’’

Ptraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Log1p_grad/add*
T0*8
_class.
,*loc:@loss/dense_3_loss/logistic_loss/Log1p*'
_output_shapes
:’’’’’’’’’
Ł
Itraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Log1p_grad/mulMulItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss_grad/Reshape_1Ptraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Log1p_grad/Reciprocal*
T0*8
_class.
,*loc:@loss/dense_3_loss/logistic_loss/Log1p*'
_output_shapes
:’’’’’’’’’
ā
Qtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/dense_3_loss/Log*
T0*9
_class/
-+loc:@loss/dense_3_loss/logistic_loss/Select*'
_output_shapes
:’’’’’’’’’

Mtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_grad/SelectSelect,loss/dense_3_loss/logistic_loss/GreaterEqualKtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/ReshapeQtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_grad/zeros_like*
T0*9
_class/
-+loc:@loss/dense_3_loss/logistic_loss/Select*'
_output_shapes
:’’’’’’’’’

Otraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_grad/Select_1Select,loss/dense_3_loss/logistic_loss/GreaterEqualQtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_grad/zeros_likeKtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Reshape*
T0*9
_class/
-+loc:@loss/dense_3_loss/logistic_loss/Select*'
_output_shapes
:’’’’’’’’’
Ö
Itraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/ShapeShapeloss/dense_3_loss/Log*
T0*
out_type0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*
_output_shapes
:
Ń
Ktraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Shape_1Shapedense_3_target*
T0*
out_type0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*
_output_shapes
:
’
Ytraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/ShapeKtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Shape_1*
T0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
 
Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/MulMulMtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Reshape_1dense_3_target*
T0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
ź
Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/SumSumGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/MulYtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*
_output_shapes
:
ā
Ktraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/ReshapeReshapeGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/SumItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Shape*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*'
_output_shapes
:’’’’’’’’’
©
Itraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Mul_1Mulloss/dense_3_loss/LogMtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/sub_grad/Reshape_1*
T0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
š
Itraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Sum_1SumItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Mul_1[training/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*
_output_shapes
:
ń
Mtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Reshape_1ReshapeItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Sum_1Ktraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/Shape_1*
T0*
Tshape0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/mul*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ø
Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Exp_grad/mulMulItraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Log1p_grad/mul#loss/dense_3_loss/logistic_loss/Exp*
T0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/Exp*'
_output_shapes
:’’’’’’’’’
ō
Straining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/dense_3_loss/logistic_loss/Neg*
T0*;
_class1
/-loc:@loss/dense_3_loss/logistic_loss/Select_1*'
_output_shapes
:’’’’’’’’’

Otraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_1_grad/SelectSelect,loss/dense_3_loss/logistic_loss/GreaterEqualGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Exp_grad/mulStraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_1_grad/zeros_like*
T0*;
_class1
/-loc:@loss/dense_3_loss/logistic_loss/Select_1*'
_output_shapes
:’’’’’’’’’

Qtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_1_grad/Select_1Select,loss/dense_3_loss/logistic_loss/GreaterEqualStraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_1_grad/zeros_likeGtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Exp_grad/mul*
T0*;
_class1
/-loc:@loss/dense_3_loss/logistic_loss/Select_1*'
_output_shapes
:’’’’’’’’’

Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Neg_grad/NegNegOtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_1_grad/Select*
T0*6
_class,
*(loc:@loss/dense_3_loss/logistic_loss/Neg*'
_output_shapes
:’’’’’’’’’
Õ
training/RMSprop/gradients/AddNAddNMtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_grad/SelectKtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/mul_grad/ReshapeQtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Select_1_grad/Select_1Gtraining/RMSprop/gradients/loss/dense_3_loss/logistic_loss/Neg_grad/Neg*
T0*
N*9
_class/
-+loc:@loss/dense_3_loss/logistic_loss/Select*'
_output_shapes
:’’’’’’’’’
ē
@training/RMSprop/gradients/loss/dense_3_loss/Log_grad/Reciprocal
Reciprocalloss/dense_3_loss/truediv ^training/RMSprop/gradients/AddN*
T0*(
_class
loc:@loss/dense_3_loss/Log*'
_output_shapes
:’’’’’’’’’
’
9training/RMSprop/gradients/loss/dense_3_loss/Log_grad/mulMultraining/RMSprop/gradients/AddN@training/RMSprop/gradients/loss/dense_3_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_3_loss/Log*'
_output_shapes
:’’’’’’’’’
Ģ
?training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/ShapeShapeloss/dense_3_loss/clip_by_value*
T0*
out_type0*,
_class"
 loc:@loss/dense_3_loss/truediv*
_output_shapes
:
Ę
Atraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Shape_1Shapeloss/dense_3_loss/sub_1*
T0*
out_type0*,
_class"
 loc:@loss/dense_3_loss/truediv*
_output_shapes
:
×
Otraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs?training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/ShapeAtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_3_loss/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

Atraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/RealDivRealDiv9training/RMSprop/gradients/loss/dense_3_loss/Log_grad/mulloss/dense_3_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_3_loss/truediv*'
_output_shapes
:’’’’’’’’’
Ę
=training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/SumSumAtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/RealDivOtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*,
_class"
 loc:@loss/dense_3_loss/truediv*
_output_shapes
:
ŗ
Atraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/ReshapeReshape=training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Sum?training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss/dense_3_loss/truediv*'
_output_shapes
:’’’’’’’’’
Å
=training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/NegNegloss/dense_3_loss/clip_by_value*
T0*,
_class"
 loc:@loss/dense_3_loss/truediv*'
_output_shapes
:’’’’’’’’’

Ctraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/RealDiv_1RealDiv=training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Negloss/dense_3_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_3_loss/truediv*'
_output_shapes
:’’’’’’’’’

Ctraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/RealDiv_2RealDivCtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/RealDiv_1loss/dense_3_loss/sub_1*
T0*,
_class"
 loc:@loss/dense_3_loss/truediv*'
_output_shapes
:’’’’’’’’’
¤
=training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/mulMul9training/RMSprop/gradients/loss/dense_3_loss/Log_grad/mulCtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_3_loss/truediv*'
_output_shapes
:’’’’’’’’’
Ę
?training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Sum_1Sum=training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/mulQtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*,
_class"
 loc:@loss/dense_3_loss/truediv*
_output_shapes
:
Ą
Ctraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Reshape_1Reshape?training/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Sum_1Atraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss/dense_3_loss/truediv*'
_output_shapes
:’’’’’’’’’
¬
=training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/ShapeConst*
valueB *
dtype0**
_class 
loc:@loss/dense_3_loss/sub_1*
_output_shapes
: 
Ź
?training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Shape_1Shapeloss/dense_3_loss/clip_by_value*
T0*
out_type0**
_class 
loc:@loss/dense_3_loss/sub_1*
_output_shapes
:
Ļ
Mtraining/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs=training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Shape?training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_3_loss/sub_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ā
;training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/SumSumCtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Reshape_1Mtraining/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0**
_class 
loc:@loss/dense_3_loss/sub_1*
_output_shapes
:
”
?training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/ReshapeReshape;training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Sum=training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/dense_3_loss/sub_1*
_output_shapes
: 
Ę
=training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Sum_1SumCtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/Reshape_1Otraining/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0**
_class 
loc:@loss/dense_3_loss/sub_1*
_output_shapes
:
Š
;training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/NegNeg=training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Sum_1*
T0**
_class 
loc:@loss/dense_3_loss/sub_1*
_output_shapes
:
¶
Atraining/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Reshape_1Reshape;training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Neg?training/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/dense_3_loss/sub_1*'
_output_shapes
:’’’’’’’’’

!training/RMSprop/gradients/AddN_1AddNAtraining/RMSprop/gradients/loss/dense_3_loss/truediv_grad/ReshapeAtraining/RMSprop/gradients/loss/dense_3_loss/sub_1_grad/Reshape_1*
T0*
N*,
_class"
 loc:@loss/dense_3_loss/truediv*'
_output_shapes
:’’’’’’’’’
ą
Etraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/ShapeShape'loss/dense_3_loss/clip_by_value/Minimum*
T0*
out_type0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*
_output_shapes
:
¾
Gtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*
_output_shapes
: 
Ü
Gtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Shape_2Shape!training/RMSprop/gradients/AddN_1*
T0*
out_type0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*
_output_shapes
:
Ä
Ktraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*
_output_shapes
: 
Ū
Etraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/zerosFillGtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Shape_2Ktraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’

Ltraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/dense_3_loss/clip_by_value/Minimumloss/dense_3_loss/Const*
T0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’
ļ
Utraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/ShapeGtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ī
Ftraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/SelectSelectLtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/GreaterEqual!training/RMSprop/gradients/AddN_1Etraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’
š
Htraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Select_1SelectLtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/GreaterEqualEtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/zeros!training/RMSprop/gradients/AddN_1*
T0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’
Ż
Ctraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/SumSumFtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/SelectUtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*
_output_shapes
:
Ņ
Gtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/ReshapeReshapeCtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/SumEtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’
ć
Etraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Sum_1SumHtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Select_1Wtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*
_output_shapes
:
Ē
Itraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Reshape_1ReshapeEtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Sum_1Gtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/dense_3_loss/clip_by_value*
_output_shapes
: 
Ų
Mtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/ShapeShapedense_3/Sigmoid*
T0*
out_type0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*
_output_shapes
:
Ī
Otraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*
_output_shapes
: 

Otraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Shape_2ShapeGtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Reshape*
T0*
out_type0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*
_output_shapes
:
Ō
Straining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*
_output_shapes
: 
ū
Mtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/zerosFillOtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Shape_2Straining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
ō
Qtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_3/Sigmoidloss/dense_3_loss/sub*
T0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

]training/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsMtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/ShapeOtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
±
Ntraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/SelectSelectQtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/LessEqualGtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/ReshapeMtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
³
Ptraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Select_1SelectQtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/LessEqualMtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/zerosGtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
ż
Ktraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/SumSumNtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Select]training/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*
_output_shapes
:
ņ
Otraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/ReshapeReshapeKtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/SumMtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

Mtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Sum_1SumPtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Select_1_training/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*
_output_shapes
:
ē
Qtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeMtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Sum_1Otraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*:
_class0
.,loc:@loss/dense_3_loss/clip_by_value/Minimum*
_output_shapes
: 

;training/RMSprop/gradients/dense_3/Sigmoid_grad/SigmoidGradSigmoidGraddense_3/SigmoidOtraining/RMSprop/gradients/loss/dense_3_loss/clip_by_value/Minimum_grad/Reshape*
T0*"
_class
loc:@dense_3/Sigmoid*'
_output_shapes
:’’’’’’’’’
ē
;training/RMSprop/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad;training/RMSprop/gradients/dense_3/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*"
_class
loc:@dense_3/BiasAdd*
_output_shapes
:

5training/RMSprop/gradients/dense_3/MatMul_grad/MatMulMatMul;training/RMSprop/gradients/dense_3/Sigmoid_grad/SigmoidGraddense_3/kernel/read*
T0*
transpose_b(*
transpose_a( *!
_class
loc:@dense_3/MatMul*'
_output_shapes
:’’’’’’’’’

ž
7training/RMSprop/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Relu;training/RMSprop/gradients/dense_3/Sigmoid_grad/SigmoidGrad*
T0*
transpose_b( *
transpose_a(*!
_class
loc:@dense_3/MatMul*
_output_shapes

:

Ł
5training/RMSprop/gradients/dense_2/Relu_grad/ReluGradReluGrad5training/RMSprop/gradients/dense_3/MatMul_grad/MatMuldense_2/Relu*
T0*
_class
loc:@dense_2/Relu*'
_output_shapes
:’’’’’’’’’

į
;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/RMSprop/gradients/dense_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*"
_class
loc:@dense_2/BiasAdd*
_output_shapes
:


5training/RMSprop/gradients/dense_2/MatMul_grad/MatMulMatMul5training/RMSprop/gradients/dense_2/Relu_grad/ReluGraddense_2/kernel/read*
T0*
transpose_b(*
transpose_a( *!
_class
loc:@dense_2/MatMul*'
_output_shapes
:’’’’’’’’’

ų
7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu5training/RMSprop/gradients/dense_2/Relu_grad/ReluGrad*
T0*
transpose_b( *
transpose_a(*!
_class
loc:@dense_2/MatMul*
_output_shapes

:


Ł
5training/RMSprop/gradients/dense_1/Relu_grad/ReluGradReluGrad5training/RMSprop/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*
T0*
_class
loc:@dense_1/Relu*'
_output_shapes
:’’’’’’’’’

į
;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*"
_class
loc:@dense_1/BiasAdd*
_output_shapes
:


5training/RMSprop/gradients/dense_1/MatMul_grad/MatMulMatMul5training/RMSprop/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
T0*
transpose_b(*
transpose_a( *!
_class
loc:@dense_1/MatMul*(
_output_shapes
:’’’’’’’’’N
ś
7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*
T0*
transpose_b( *
transpose_a(*!
_class
loc:@dense_1/MatMul*
_output_shapes
:	N

w
&training/RMSprop/zeros/shape_as_tensorConst*
valueB"'  
   *
dtype0*
_output_shapes
:
a
training/RMSprop/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
training/RMSprop/zerosFill&training/RMSprop/zeros/shape_as_tensortraining/RMSprop/zeros/Const*
T0*

index_type0*
_output_shapes
:	N


training/RMSprop/Variable
VariableV2*
dtype0*
shared_name *
shape:	N
*
	container *
_output_shapes
:	N

Ž
 training/RMSprop/Variable/AssignAssigntraining/RMSprop/Variabletraining/RMSprop/zeros*
T0*
use_locking(*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes
:	N


training/RMSprop/Variable/readIdentitytraining/RMSprop/Variable*
T0*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes
:	N

e
training/RMSprop/zeros_1Const*
valueB
*    *
dtype0*
_output_shapes
:


training/RMSprop/Variable_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_output_shapes
:

į
"training/RMSprop/Variable_1/AssignAssigntraining/RMSprop/Variable_1training/RMSprop/zeros_1*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
:


 training/RMSprop/Variable_1/readIdentitytraining/RMSprop/Variable_1*
T0*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
:

m
training/RMSprop/zeros_2Const*
valueB

*    *
dtype0*
_output_shapes

:



training/RMSprop/Variable_2
VariableV2*
dtype0*
shared_name *
shape
:

*
	container *
_output_shapes

:


å
"training/RMSprop/Variable_2/AssignAssigntraining/RMSprop/Variable_2training/RMSprop/zeros_2*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes

:


¢
 training/RMSprop/Variable_2/readIdentitytraining/RMSprop/Variable_2*
T0*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes

:


e
training/RMSprop/zeros_3Const*
valueB
*    *
dtype0*
_output_shapes
:


training/RMSprop/Variable_3
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_output_shapes
:

į
"training/RMSprop/Variable_3/AssignAssigntraining/RMSprop/Variable_3training/RMSprop/zeros_3*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
:


 training/RMSprop/Variable_3/readIdentitytraining/RMSprop/Variable_3*
T0*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
:

m
training/RMSprop/zeros_4Const*
valueB
*    *
dtype0*
_output_shapes

:


training/RMSprop/Variable_4
VariableV2*
dtype0*
shared_name *
shape
:
*
	container *
_output_shapes

:

å
"training/RMSprop/Variable_4/AssignAssigntraining/RMSprop/Variable_4training/RMSprop/zeros_4*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes

:

¢
 training/RMSprop/Variable_4/readIdentitytraining/RMSprop/Variable_4*
T0*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes

:

e
training/RMSprop/zeros_5Const*
valueB*    *
dtype0*
_output_shapes
:

training/RMSprop/Variable_5
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_output_shapes
:
į
"training/RMSprop/Variable_5/AssignAssigntraining/RMSprop/Variable_5training/RMSprop/zeros_5*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
:

 training/RMSprop/Variable_5/readIdentitytraining/RMSprop/Variable_5*
T0*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
:
b
 training/RMSprop/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ø
training/RMSprop/AssignAdd	AssignAddRMSprop/iterations training/RMSprop/AssignAdd/value*
T0	*
use_locking( *%
_class
loc:@RMSprop/iterations*
_output_shapes
: 
w
training/RMSprop/mulMulRMSprop/rho/readtraining/RMSprop/Variable/read*
T0*
_output_shapes
:	N

[
training/RMSprop/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/RMSprop/subSubtraining/RMSprop/sub/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/SquareSquare7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	N

v
training/RMSprop/mul_1Multraining/RMSprop/subtraining/RMSprop/Square*
T0*
_output_shapes
:	N

s
training/RMSprop/addAddtraining/RMSprop/multraining/RMSprop/mul_1*
T0*
_output_shapes
:	N

Ó
training/RMSprop/AssignAssigntraining/RMSprop/Variabletraining/RMSprop/add*
T0*
use_locking(*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes
:	N


training/RMSprop/mul_2MulRMSprop/lr/read7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	N

[
training/RMSprop/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/RMSprop/clip_by_value/MinimumMinimumtraining/RMSprop/addtraining/RMSprop/Const_1*
T0*
_output_shapes
:	N


training/RMSprop/clip_by_valueMaximum&training/RMSprop/clip_by_value/Minimumtraining/RMSprop/Const*
T0*
_output_shapes
:	N

g
training/RMSprop/SqrtSqrttraining/RMSprop/clip_by_value*
T0*
_output_shapes
:	N

]
training/RMSprop/add_1/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
x
training/RMSprop/add_1Addtraining/RMSprop/Sqrttraining/RMSprop/add_1/y*
T0*
_output_shapes
:	N

}
training/RMSprop/truedivRealDivtraining/RMSprop/mul_2training/RMSprop/add_1*
T0*
_output_shapes
:	N

v
training/RMSprop/sub_1Subdense_1/kernel/readtraining/RMSprop/truediv*
T0*
_output_shapes
:	N

Į
training/RMSprop/Assign_1Assigndense_1/kerneltraining/RMSprop/sub_1*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel*
_output_shapes
:	N

v
training/RMSprop/mul_3MulRMSprop/rho/read training/RMSprop/Variable_1/read*
T0*
_output_shapes
:

]
training/RMSprop/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
j
training/RMSprop/sub_2Subtraining/RMSprop/sub_2/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_1Square;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

u
training/RMSprop/mul_4Multraining/RMSprop/sub_2training/RMSprop/Square_1*
T0*
_output_shapes
:

r
training/RMSprop/add_2Addtraining/RMSprop/mul_3training/RMSprop/mul_4*
T0*
_output_shapes
:

Ö
training/RMSprop/Assign_2Assigntraining/RMSprop/Variable_1training/RMSprop/add_2*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
:


training/RMSprop/mul_5MulRMSprop/lr/read;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

]
training/RMSprop/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_1/MinimumMinimumtraining/RMSprop/add_2training/RMSprop/Const_3*
T0*
_output_shapes
:


 training/RMSprop/clip_by_value_1Maximum(training/RMSprop/clip_by_value_1/Minimumtraining/RMSprop/Const_2*
T0*
_output_shapes
:

f
training/RMSprop/Sqrt_1Sqrt training/RMSprop/clip_by_value_1*
T0*
_output_shapes
:

]
training/RMSprop/add_3/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
u
training/RMSprop/add_3Addtraining/RMSprop/Sqrt_1training/RMSprop/add_3/y*
T0*
_output_shapes
:

z
training/RMSprop/truediv_1RealDivtraining/RMSprop/mul_5training/RMSprop/add_3*
T0*
_output_shapes
:

q
training/RMSprop/sub_3Subdense_1/bias/readtraining/RMSprop/truediv_1*
T0*
_output_shapes
:

ø
training/RMSprop/Assign_3Assigndense_1/biastraining/RMSprop/sub_3*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes
:

z
training/RMSprop/mul_6MulRMSprop/rho/read training/RMSprop/Variable_2/read*
T0*
_output_shapes

:


]
training/RMSprop/sub_4/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
j
training/RMSprop/sub_4Subtraining/RMSprop/sub_4/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_2Square7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:


y
training/RMSprop/mul_7Multraining/RMSprop/sub_4training/RMSprop/Square_2*
T0*
_output_shapes

:


v
training/RMSprop/add_4Addtraining/RMSprop/mul_6training/RMSprop/mul_7*
T0*
_output_shapes

:


Ś
training/RMSprop/Assign_4Assigntraining/RMSprop/Variable_2training/RMSprop/add_4*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes

:



training/RMSprop/mul_8MulRMSprop/lr/read7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:


]
training/RMSprop/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_5Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_2/MinimumMinimumtraining/RMSprop/add_4training/RMSprop/Const_5*
T0*
_output_shapes

:



 training/RMSprop/clip_by_value_2Maximum(training/RMSprop/clip_by_value_2/Minimumtraining/RMSprop/Const_4*
T0*
_output_shapes

:


j
training/RMSprop/Sqrt_2Sqrt training/RMSprop/clip_by_value_2*
T0*
_output_shapes

:


]
training/RMSprop/add_5/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
y
training/RMSprop/add_5Addtraining/RMSprop/Sqrt_2training/RMSprop/add_5/y*
T0*
_output_shapes

:


~
training/RMSprop/truediv_2RealDivtraining/RMSprop/mul_8training/RMSprop/add_5*
T0*
_output_shapes

:


w
training/RMSprop/sub_5Subdense_2/kernel/readtraining/RMSprop/truediv_2*
T0*
_output_shapes

:


Ą
training/RMSprop/Assign_5Assigndense_2/kerneltraining/RMSprop/sub_5*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel*
_output_shapes

:


v
training/RMSprop/mul_9MulRMSprop/rho/read training/RMSprop/Variable_3/read*
T0*
_output_shapes
:

]
training/RMSprop/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
j
training/RMSprop/sub_6Subtraining/RMSprop/sub_6/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_3Square;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

v
training/RMSprop/mul_10Multraining/RMSprop/sub_6training/RMSprop/Square_3*
T0*
_output_shapes
:

s
training/RMSprop/add_6Addtraining/RMSprop/mul_9training/RMSprop/mul_10*
T0*
_output_shapes
:

Ö
training/RMSprop/Assign_6Assigntraining/RMSprop/Variable_3training/RMSprop/add_6*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
:


training/RMSprop/mul_11MulRMSprop/lr/read;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

]
training/RMSprop/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_7Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_3/MinimumMinimumtraining/RMSprop/add_6training/RMSprop/Const_7*
T0*
_output_shapes
:


 training/RMSprop/clip_by_value_3Maximum(training/RMSprop/clip_by_value_3/Minimumtraining/RMSprop/Const_6*
T0*
_output_shapes
:

f
training/RMSprop/Sqrt_3Sqrt training/RMSprop/clip_by_value_3*
T0*
_output_shapes
:

]
training/RMSprop/add_7/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
u
training/RMSprop/add_7Addtraining/RMSprop/Sqrt_3training/RMSprop/add_7/y*
T0*
_output_shapes
:

{
training/RMSprop/truediv_3RealDivtraining/RMSprop/mul_11training/RMSprop/add_7*
T0*
_output_shapes
:

q
training/RMSprop/sub_7Subdense_2/bias/readtraining/RMSprop/truediv_3*
T0*
_output_shapes
:

ø
training/RMSprop/Assign_7Assigndense_2/biastraining/RMSprop/sub_7*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes
:

{
training/RMSprop/mul_12MulRMSprop/rho/read training/RMSprop/Variable_4/read*
T0*
_output_shapes

:

]
training/RMSprop/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
j
training/RMSprop/sub_8Subtraining/RMSprop/sub_8/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_4Square7training/RMSprop/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

z
training/RMSprop/mul_13Multraining/RMSprop/sub_8training/RMSprop/Square_4*
T0*
_output_shapes

:

x
training/RMSprop/add_8Addtraining/RMSprop/mul_12training/RMSprop/mul_13*
T0*
_output_shapes

:

Ś
training/RMSprop/Assign_8Assigntraining/RMSprop/Variable_4training/RMSprop/add_8*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes

:


training/RMSprop/mul_14MulRMSprop/lr/read7training/RMSprop/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

]
training/RMSprop/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training/RMSprop/Const_9Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_4/MinimumMinimumtraining/RMSprop/add_8training/RMSprop/Const_9*
T0*
_output_shapes

:


 training/RMSprop/clip_by_value_4Maximum(training/RMSprop/clip_by_value_4/Minimumtraining/RMSprop/Const_8*
T0*
_output_shapes

:

j
training/RMSprop/Sqrt_4Sqrt training/RMSprop/clip_by_value_4*
T0*
_output_shapes

:

]
training/RMSprop/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
y
training/RMSprop/add_9Addtraining/RMSprop/Sqrt_4training/RMSprop/add_9/y*
T0*
_output_shapes

:


training/RMSprop/truediv_4RealDivtraining/RMSprop/mul_14training/RMSprop/add_9*
T0*
_output_shapes

:

w
training/RMSprop/sub_9Subdense_3/kernel/readtraining/RMSprop/truediv_4*
T0*
_output_shapes

:

Ą
training/RMSprop/Assign_9Assigndense_3/kerneltraining/RMSprop/sub_9*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel*
_output_shapes

:

w
training/RMSprop/mul_15MulRMSprop/rho/read training/RMSprop/Variable_5/read*
T0*
_output_shapes
:
^
training/RMSprop/sub_10/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
l
training/RMSprop/sub_10Subtraining/RMSprop/sub_10/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_5Square;training/RMSprop/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
w
training/RMSprop/mul_16Multraining/RMSprop/sub_10training/RMSprop/Square_5*
T0*
_output_shapes
:
u
training/RMSprop/add_10Addtraining/RMSprop/mul_15training/RMSprop/mul_16*
T0*
_output_shapes
:
Ų
training/RMSprop/Assign_10Assigntraining/RMSprop/Variable_5training/RMSprop/add_10*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
:

training/RMSprop/mul_17MulRMSprop/lr/read;training/RMSprop/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
^
training/RMSprop/Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 
^
training/RMSprop/Const_11Const*
valueB
 *  *
dtype0*
_output_shapes
: 

(training/RMSprop/clip_by_value_5/MinimumMinimumtraining/RMSprop/add_10training/RMSprop/Const_11*
T0*
_output_shapes
:

 training/RMSprop/clip_by_value_5Maximum(training/RMSprop/clip_by_value_5/Minimumtraining/RMSprop/Const_10*
T0*
_output_shapes
:
f
training/RMSprop/Sqrt_5Sqrt training/RMSprop/clip_by_value_5*
T0*
_output_shapes
:
^
training/RMSprop/add_11/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
w
training/RMSprop/add_11Addtraining/RMSprop/Sqrt_5training/RMSprop/add_11/y*
T0*
_output_shapes
:
|
training/RMSprop/truediv_5RealDivtraining/RMSprop/mul_17training/RMSprop/add_11*
T0*
_output_shapes
:
r
training/RMSprop/sub_11Subdense_3/bias/readtraining/RMSprop/truediv_5*
T0*
_output_shapes
:
ŗ
training/RMSprop/Assign_11Assigndense_3/biastraining/RMSprop/sub_11*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes
:
Ø
training/group_depsNoOp	^loss/mul^metrics/acc/Mean_1^training/RMSprop/Assign^training/RMSprop/AssignAdd^training/RMSprop/Assign_1^training/RMSprop/Assign_10^training/RMSprop/Assign_11^training/RMSprop/Assign_2^training/RMSprop/Assign_3^training/RMSprop/Assign_4^training/RMSprop/Assign_5^training/RMSprop/Assign_6^training/RMSprop/Assign_7^training/RMSprop/Assign_8^training/RMSprop/Assign_9

IsVariableInitializedIsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitialized
RMSprop/lr*
dtype0*
_class
loc:@RMSprop/lr*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedRMSprop/rho*
dtype0*
_class
loc:@RMSprop/rho*
_output_shapes
: 

IsVariableInitialized_8IsVariableInitializedRMSprop/decay*
dtype0* 
_class
loc:@RMSprop/decay*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedRMSprop/iterations*
dtype0	*%
_class
loc:@RMSprop/iterations*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedtraining/RMSprop/Variable*
dtype0*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes
: 
£
IsVariableInitialized_11IsVariableInitializedtraining/RMSprop/Variable_1*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
: 
£
IsVariableInitialized_12IsVariableInitializedtraining/RMSprop/Variable_2*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes
: 
£
IsVariableInitialized_13IsVariableInitializedtraining/RMSprop/Variable_3*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
: 
£
IsVariableInitialized_14IsVariableInitializedtraining/RMSprop/Variable_4*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes
: 
£
IsVariableInitialized_15IsVariableInitializedtraining/RMSprop/Variable_5*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
: 
Ī
initNoOp^RMSprop/decay/Assign^RMSprop/iterations/Assign^RMSprop/lr/Assign^RMSprop/rho/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign!^training/RMSprop/Variable/Assign#^training/RMSprop/Variable_1/Assign#^training/RMSprop/Variable_2/Assign#^training/RMSprop/Variable_3/Assign#^training/RMSprop/Variable_4/Assign#^training/RMSprop/Variable_5/Assign
2

group_depsNoOp	^loss/mul^metrics/acc/Mean_1
t
dense_1_input_1Placeholder*
dtype0*
shape:’’’’’’’’’N*(
_output_shapes
:’’’’’’’’’N
o
dense_1_1/random_uniform/shapeConst*
valueB"'  
   *
dtype0*
_output_shapes
:
a
dense_1_1/random_uniform/minConst*
valueB
 *ÜČ¼*
dtype0*
_output_shapes
: 
a
dense_1_1/random_uniform/maxConst*
valueB
 *ÜČ<*
dtype0*
_output_shapes
: 
­
&dense_1_1/random_uniform/RandomUniformRandomUniformdense_1_1/random_uniform/shape*
T0*
dtype0*
seed2ŻØ*
seed±’å)*
_output_shapes
:	N


dense_1_1/random_uniform/subSubdense_1_1/random_uniform/maxdense_1_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1_1/random_uniform/mulMul&dense_1_1/random_uniform/RandomUniformdense_1_1/random_uniform/sub*
T0*
_output_shapes
:	N


dense_1_1/random_uniformAdddense_1_1/random_uniform/muldense_1_1/random_uniform/min*
T0*
_output_shapes
:	N


dense_1_1/kernel
VariableV2*
dtype0*
shared_name *
shape:	N
*
	container *
_output_shapes
:	N

Å
dense_1_1/kernel/AssignAssigndense_1_1/kerneldense_1_1/random_uniform*
T0*
use_locking(*
validate_shape(*#
_class
loc:@dense_1_1/kernel*
_output_shapes
:	N


dense_1_1/kernel/readIdentitydense_1_1/kernel*
T0*#
_class
loc:@dense_1_1/kernel*
_output_shapes
:	N

\
dense_1_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

z
dense_1_1/bias
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_output_shapes
:

±
dense_1_1/bias/AssignAssigndense_1_1/biasdense_1_1/Const*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1_1/bias*
_output_shapes
:

w
dense_1_1/bias/readIdentitydense_1_1/bias*
T0*!
_class
loc:@dense_1_1/bias*
_output_shapes
:


dense_1_1/MatMulMatMuldense_1_input_1dense_1_1/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’


dense_1_1/BiasAddBiasAdddense_1_1/MatMuldense_1_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

[
dense_1_1/ReluReludense_1_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’

o
dense_2_1/random_uniform/shapeConst*
valueB"
   
   *
dtype0*
_output_shapes
:
a
dense_2_1/random_uniform/minConst*
valueB
 *7æ*
dtype0*
_output_shapes
: 
a
dense_2_1/random_uniform/maxConst*
valueB
 *7?*
dtype0*
_output_shapes
: 
¬
&dense_2_1/random_uniform/RandomUniformRandomUniformdense_2_1/random_uniform/shape*
T0*
dtype0*
seed2Äö*
seed±’å)*
_output_shapes

:



dense_2_1/random_uniform/subSubdense_2_1/random_uniform/maxdense_2_1/random_uniform/min*
T0*
_output_shapes
: 

dense_2_1/random_uniform/mulMul&dense_2_1/random_uniform/RandomUniformdense_2_1/random_uniform/sub*
T0*
_output_shapes

:



dense_2_1/random_uniformAdddense_2_1/random_uniform/muldense_2_1/random_uniform/min*
T0*
_output_shapes

:



dense_2_1/kernel
VariableV2*
dtype0*
shared_name *
shape
:

*
	container *
_output_shapes

:


Ä
dense_2_1/kernel/AssignAssigndense_2_1/kerneldense_2_1/random_uniform*
T0*
use_locking(*
validate_shape(*#
_class
loc:@dense_2_1/kernel*
_output_shapes

:



dense_2_1/kernel/readIdentitydense_2_1/kernel*
T0*#
_class
loc:@dense_2_1/kernel*
_output_shapes

:


\
dense_2_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

z
dense_2_1/bias
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_output_shapes
:

±
dense_2_1/bias/AssignAssigndense_2_1/biasdense_2_1/Const*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2_1/bias*
_output_shapes
:

w
dense_2_1/bias/readIdentitydense_2_1/bias*
T0*!
_class
loc:@dense_2_1/bias*
_output_shapes
:


dense_2_1/MatMulMatMuldense_1_1/Reludense_2_1/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’


dense_2_1/BiasAddBiasAdddense_2_1/MatMuldense_2_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

[
dense_2_1/ReluReludense_2_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’

o
dense_3_1/random_uniform/shapeConst*
valueB"
      *
dtype0*
_output_shapes
:
a
dense_3_1/random_uniform/minConst*
valueB
 *=æ*
dtype0*
_output_shapes
: 
a
dense_3_1/random_uniform/maxConst*
valueB
 *=?*
dtype0*
_output_shapes
: 
¬
&dense_3_1/random_uniform/RandomUniformRandomUniformdense_3_1/random_uniform/shape*
T0*
dtype0*
seed2ŃĻ*
seed±’å)*
_output_shapes

:


dense_3_1/random_uniform/subSubdense_3_1/random_uniform/maxdense_3_1/random_uniform/min*
T0*
_output_shapes
: 

dense_3_1/random_uniform/mulMul&dense_3_1/random_uniform/RandomUniformdense_3_1/random_uniform/sub*
T0*
_output_shapes

:


dense_3_1/random_uniformAdddense_3_1/random_uniform/muldense_3_1/random_uniform/min*
T0*
_output_shapes

:


dense_3_1/kernel
VariableV2*
dtype0*
shared_name *
shape
:
*
	container *
_output_shapes

:

Ä
dense_3_1/kernel/AssignAssigndense_3_1/kerneldense_3_1/random_uniform*
T0*
use_locking(*
validate_shape(*#
_class
loc:@dense_3_1/kernel*
_output_shapes

:


dense_3_1/kernel/readIdentitydense_3_1/kernel*
T0*#
_class
loc:@dense_3_1/kernel*
_output_shapes

:

\
dense_3_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
z
dense_3_1/bias
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_output_shapes
:
±
dense_3_1/bias/AssignAssigndense_3_1/biasdense_3_1/Const*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3_1/bias*
_output_shapes
:
w
dense_3_1/bias/readIdentitydense_3_1/bias*
T0*!
_class
loc:@dense_3_1/bias*
_output_shapes
:

dense_3_1/MatMulMatMuldense_2_1/Reludense_3_1/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’

dense_3_1/BiasAddBiasAdddense_3_1/MatMuldense_3_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
dense_3_1/SigmoidSigmoiddense_3_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
^
PlaceholderPlaceholder*
dtype0*
shape:	N
*
_output_shapes
:	N

§
AssignAssigndense_1_1/kernelPlaceholder*
T0*
use_locking( *
validate_shape(*#
_class
loc:@dense_1_1/kernel*
_output_shapes
:	N

V
Placeholder_1Placeholder*
dtype0*
shape:
*
_output_shapes
:

¢
Assign_1Assigndense_1_1/biasPlaceholder_1*
T0*
use_locking( *
validate_shape(*!
_class
loc:@dense_1_1/bias*
_output_shapes
:

^
Placeholder_2Placeholder*
dtype0*
shape
:

*
_output_shapes

:


Ŗ
Assign_2Assigndense_2_1/kernelPlaceholder_2*
T0*
use_locking( *
validate_shape(*#
_class
loc:@dense_2_1/kernel*
_output_shapes

:


V
Placeholder_3Placeholder*
dtype0*
shape:
*
_output_shapes
:

¢
Assign_3Assigndense_2_1/biasPlaceholder_3*
T0*
use_locking( *
validate_shape(*!
_class
loc:@dense_2_1/bias*
_output_shapes
:

^
Placeholder_4Placeholder*
dtype0*
shape
:
*
_output_shapes

:

Ŗ
Assign_4Assigndense_3_1/kernelPlaceholder_4*
T0*
use_locking( *
validate_shape(*#
_class
loc:@dense_3_1/kernel*
_output_shapes

:

V
Placeholder_5Placeholder*
dtype0*
shape:*
_output_shapes
:
¢
Assign_5Assigndense_3_1/biasPlaceholder_5*
T0*
use_locking( *
validate_shape(*!
_class
loc:@dense_3_1/bias*
_output_shapes
:

IsVariableInitialized_16IsVariableInitializeddense_1_1/kernel*
dtype0*#
_class
loc:@dense_1_1/kernel*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializeddense_1_1/bias*
dtype0*!
_class
loc:@dense_1_1/bias*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializeddense_2_1/kernel*
dtype0*#
_class
loc:@dense_2_1/kernel*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializeddense_2_1/bias*
dtype0*!
_class
loc:@dense_2_1/bias*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializeddense_3_1/kernel*
dtype0*#
_class
loc:@dense_3_1/kernel*
_output_shapes
: 

IsVariableInitialized_21IsVariableInitializeddense_3_1/bias*
dtype0*!
_class
loc:@dense_3_1/bias*
_output_shapes
: 
¤
init_1NoOp^dense_1_1/bias/Assign^dense_1_1/kernel/Assign^dense_2_1/bias/Assign^dense_2_1/kernel/Assign^dense_3_1/bias/Assign^dense_3_1/kernel/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_69383ac0f1fc4fba97fe7282b366ba31/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*½
value³B°BRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBdense_2/biasBdense_2/kernelBdense_2_1/biasBdense_2_1/kernelBdense_3/biasBdense_3/kernelBdense_3_1/biasBdense_3_1/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ą
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesRMSprop/decayRMSprop/iterations
RMSprop/lrRMSprop/rhodense_1/biasdense_1/kerneldense_1_1/biasdense_1_1/kerneldense_2/biasdense_2/kerneldense_2_1/biasdense_2_1/kerneldense_3/biasdense_3/kerneldense_3_1/biasdense_3_1/kerneltraining/RMSprop/Variabletraining/RMSprop/Variable_1training/RMSprop/Variable_2training/RMSprop/Variable_3training/RMSprop/Variable_4training/RMSprop/Variable_5"/device:CPU:0*$
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*½
value³B°BRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBdense_2/biasBdense_2/kernelBdense_2_1/biasBdense_2_1/kernelBdense_3/biasBdense_3/kernelBdense_3_1/biasBdense_3_1/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5*
dtype0*
_output_shapes
:
”
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*$
dtypes
2	*l
_output_shapesZ
X::::::::::::::::::::::
 
save/AssignAssignRMSprop/decaysave/RestoreV2*
T0*
use_locking(*
validate_shape(* 
_class
loc:@RMSprop/decay*
_output_shapes
: 
®
save/Assign_1AssignRMSprop/iterationssave/RestoreV2:1*
T0	*
use_locking(*
validate_shape(*%
_class
loc:@RMSprop/iterations*
_output_shapes
: 

save/Assign_2Assign
RMSprop/lrsave/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@RMSprop/lr*
_output_shapes
: 
 
save/Assign_3AssignRMSprop/rhosave/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@RMSprop/rho*
_output_shapes
: 
¦
save/Assign_4Assigndense_1/biassave/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes
:

Æ
save/Assign_5Assigndense_1/kernelsave/RestoreV2:5*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel*
_output_shapes
:	N

Ŗ
save/Assign_6Assigndense_1_1/biassave/RestoreV2:6*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1_1/bias*
_output_shapes
:

³
save/Assign_7Assigndense_1_1/kernelsave/RestoreV2:7*
T0*
use_locking(*
validate_shape(*#
_class
loc:@dense_1_1/kernel*
_output_shapes
:	N

¦
save/Assign_8Assigndense_2/biassave/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes
:

®
save/Assign_9Assigndense_2/kernelsave/RestoreV2:9*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel*
_output_shapes

:


¬
save/Assign_10Assigndense_2_1/biassave/RestoreV2:10*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2_1/bias*
_output_shapes
:

“
save/Assign_11Assigndense_2_1/kernelsave/RestoreV2:11*
T0*
use_locking(*
validate_shape(*#
_class
loc:@dense_2_1/kernel*
_output_shapes

:


Ø
save/Assign_12Assigndense_3/biassave/RestoreV2:12*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes
:
°
save/Assign_13Assigndense_3/kernelsave/RestoreV2:13*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel*
_output_shapes

:

¬
save/Assign_14Assigndense_3_1/biassave/RestoreV2:14*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3_1/bias*
_output_shapes
:
“
save/Assign_15Assigndense_3_1/kernelsave/RestoreV2:15*
T0*
use_locking(*
validate_shape(*#
_class
loc:@dense_3_1/kernel*
_output_shapes

:

Ē
save/Assign_16Assigntraining/RMSprop/Variablesave/RestoreV2:16*
T0*
use_locking(*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes
:	N

Ę
save/Assign_17Assigntraining/RMSprop/Variable_1save/RestoreV2:17*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
:

Ź
save/Assign_18Assigntraining/RMSprop/Variable_2save/RestoreV2:18*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes

:


Ę
save/Assign_19Assigntraining/RMSprop/Variable_3save/RestoreV2:19*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
:

Ź
save/Assign_20Assigntraining/RMSprop/Variable_4save/RestoreV2:20*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes

:

Ę
save/Assign_21Assigntraining/RMSprop/Variable_5save/RestoreV2:21*
T0*
use_locking(*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
:

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"ö
	variablesčå
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
\
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02dense_3/random_uniform:08
M
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02dense_3/Const:08
R
RMSprop/lr:0RMSprop/lr/AssignRMSprop/lr/read:02RMSprop/lr/initial_value:08
V
RMSprop/rho:0RMSprop/rho/AssignRMSprop/rho/read:02RMSprop/rho/initial_value:08
^
RMSprop/decay:0RMSprop/decay/AssignRMSprop/decay/read:02RMSprop/decay/initial_value:08
r
RMSprop/iterations:0RMSprop/iterations/AssignRMSprop/iterations/read:02"RMSprop/iterations/initial_value:08
}
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign training/RMSprop/Variable/read:02training/RMSprop/zeros:08

training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign"training/RMSprop/Variable_1/read:02training/RMSprop/zeros_1:08

training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign"training/RMSprop/Variable_2/read:02training/RMSprop/zeros_2:08

training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign"training/RMSprop/Variable_3/read:02training/RMSprop/zeros_3:08

training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign"training/RMSprop/Variable_4/read:02training/RMSprop/zeros_4:08

training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign"training/RMSprop/Variable_5/read:02training/RMSprop/zeros_5:08
d
dense_1_1/kernel:0dense_1_1/kernel/Assigndense_1_1/kernel/read:02dense_1_1/random_uniform:08
U
dense_1_1/bias:0dense_1_1/bias/Assigndense_1_1/bias/read:02dense_1_1/Const:08
d
dense_2_1/kernel:0dense_2_1/kernel/Assigndense_2_1/kernel/read:02dense_2_1/random_uniform:08
U
dense_2_1/bias:0dense_2_1/bias/Assigndense_2_1/bias/read:02dense_2_1/Const:08
d
dense_3_1/kernel:0dense_3_1/kernel/Assigndense_3_1/kernel/read:02dense_3_1/random_uniform:08
U
dense_3_1/bias:0dense_3_1/bias/Assigndense_3_1/bias/read:02dense_3_1/Const:08"
trainable_variablesčå
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08
\
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02dense_3/random_uniform:08
M
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02dense_3/Const:08
R
RMSprop/lr:0RMSprop/lr/AssignRMSprop/lr/read:02RMSprop/lr/initial_value:08
V
RMSprop/rho:0RMSprop/rho/AssignRMSprop/rho/read:02RMSprop/rho/initial_value:08
^
RMSprop/decay:0RMSprop/decay/AssignRMSprop/decay/read:02RMSprop/decay/initial_value:08
r
RMSprop/iterations:0RMSprop/iterations/AssignRMSprop/iterations/read:02"RMSprop/iterations/initial_value:08
}
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign training/RMSprop/Variable/read:02training/RMSprop/zeros:08

training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign"training/RMSprop/Variable_1/read:02training/RMSprop/zeros_1:08

training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign"training/RMSprop/Variable_2/read:02training/RMSprop/zeros_2:08

training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign"training/RMSprop/Variable_3/read:02training/RMSprop/zeros_3:08

training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign"training/RMSprop/Variable_4/read:02training/RMSprop/zeros_4:08

training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign"training/RMSprop/Variable_5/read:02training/RMSprop/zeros_5:08
d
dense_1_1/kernel:0dense_1_1/kernel/Assigndense_1_1/kernel/read:02dense_1_1/random_uniform:08
U
dense_1_1/bias:0dense_1_1/bias/Assigndense_1_1/bias/read:02dense_1_1/Const:08
d
dense_2_1/kernel:0dense_2_1/kernel/Assigndense_2_1/kernel/read:02dense_2_1/random_uniform:08
U
dense_2_1/bias:0dense_2_1/bias/Assigndense_2_1/bias/read:02dense_2_1/Const:08
d
dense_3_1/kernel:0dense_3_1/kernel/Assigndense_3_1/kernel/read:02dense_3_1/random_uniform:08
U
dense_3_1/bias:0dense_3_1/bias/Assigndense_3_1/bias/read:02dense_3_1/Const:08*£
serving_default
:
dense_1_input)
dense_1_input_1:0’’’’’’’’’N5
dense_3*
dense_3_1/Sigmoid:0’’’’’’’’’tensorflow/serving/predict