Û
»
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68¹Ó

conv2d_91/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_91/kernel
}
$conv2d_91/kernel/Read/ReadVariableOpReadVariableOpconv2d_91/kernel*&
_output_shapes
:*
dtype0
t
conv2d_91/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_91/bias
m
"conv2d_91/bias/Read/ReadVariableOpReadVariableOpconv2d_91/bias*
_output_shapes
:*
dtype0

conv2d_92/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_92/kernel
}
$conv2d_92/kernel/Read/ReadVariableOpReadVariableOpconv2d_92/kernel*&
_output_shapes
: *
dtype0
t
conv2d_92/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_92/bias
m
"conv2d_92/bias/Read/ReadVariableOpReadVariableOpconv2d_92/bias*
_output_shapes
: *
dtype0

conv2d_93/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_93/kernel
}
$conv2d_93/kernel/Read/ReadVariableOpReadVariableOpconv2d_93/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_93/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_93/bias
m
"conv2d_93/bias/Read/ReadVariableOpReadVariableOpconv2d_93/bias*
_output_shapes
:@*
dtype0
}
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ò* 
shared_namedense_62/kernel
v
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel*!
_output_shapes
:ò*
dtype0
s
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_62/bias
l
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes	
:*
dtype0
{
dense_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_63/kernel
t
#dense_63/kernel/Read/ReadVariableOpReadVariableOpdense_63/kernel*
_output_shapes
:	*
dtype0
r
dense_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_63/bias
k
!dense_63/bias/Read/ReadVariableOpReadVariableOpdense_63/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

random_rotation_2/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*+
shared_namerandom_rotation_2/StateVar

.random_rotation_2/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation_2/StateVar*
_output_shapes
:*
dtype0	

random_zoom_2/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_zoom_2/StateVar
}
*random_zoom_2/StateVar/Read/ReadVariableOpReadVariableOprandom_zoom_2/StateVar*
_output_shapes
:*
dtype0	

random_flip_2/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_flip_2/StateVar
}
*random_flip_2/StateVar/Read/ReadVariableOpReadVariableOprandom_flip_2/StateVar*
_output_shapes
:*
dtype0	

Adam/conv2d_91/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_91/kernel/m

+Adam/conv2d_91/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_91/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_91/bias/m
{
)Adam/conv2d_91/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_92/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_92/kernel/m

+Adam/conv2d_92/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_92/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_92/bias/m
{
)Adam/conv2d_92/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_93/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_93/kernel/m

+Adam/conv2d_93/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_93/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_93/bias/m
{
)Adam/conv2d_93/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ò*'
shared_nameAdam/dense_62/kernel/m

*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m*!
_output_shapes
:ò*
dtype0

Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/m
z
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_63/kernel/m

*Adam/dense_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/m
y
(Adam/dense_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_91/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_91/kernel/v

+Adam/conv2d_91/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_91/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_91/bias/v
{
)Adam/conv2d_91/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_92/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_92/kernel/v

+Adam/conv2d_92/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_92/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_92/bias/v
{
)Adam/conv2d_92/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_93/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_93/kernel/v

+Adam/conv2d_93/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_93/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_93/bias/v
{
)Adam/conv2d_93/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ò*'
shared_nameAdam/dense_62/kernel/v

*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v*!
_output_shapes
:ò*
dtype0

Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/v
z
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_63/kernel/v

*Adam/dense_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/v
y
(Adam/dense_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
òe
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*­e
value£eB e Be
Ð
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
·
layer-0
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*

%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
¦

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*

3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
¦

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses*

A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 

G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 
¦

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses*
¦

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses*

]iter

^beta_1

_beta_2
	`decay
alearning_ratemÏmÐ+mÑ,mÒ9mÓ:mÔMmÕNmÖUm×VmØvÙvÚ+vÛ,vÜ9vÝ:vÞMvßNvàUváVvâ*
J
0
1
+2
,3
94
:5
M6
N7
U8
V9*
J
0
1
+2
,3
94
:5
M6
N7
U8
V9*
* 
°
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

gserving_default* 
§
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l_random_generator
m__call__
*n&call_and_return_all_conditional_losses*
§
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s_random_generator
t__call__
*u&call_and_return_all_conditional_losses*
§
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z_random_generator
{__call__
*|&call_and_return_all_conditional_losses*
* 
* 
* 

}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_91/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_91/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_92/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_92/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*

+0
,1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_93/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_93/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_62/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_62/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

M0
N1*

M0
N1*
* 

¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_63/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_63/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

U0
V1*

U0
V1*
* 

ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
1
2
3
4
5
6
7
	8

9*

¯0
°1*
* 
* 
* 
* 
* 
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
h	variables
itrainable_variables
jregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 

¶
_generator*
* 
* 
* 
* 
* 

·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
o	variables
ptrainable_variables
qregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

¼
_generator*
* 
* 
* 
* 
* 

½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
v	variables
wtrainable_variables
xregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

Â
_generator*
* 
* 
* 

0
1
2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Ãtotal

Äcount
Å	variables
Æ	keras_api*
M

Çtotal

Ècount
É
_fn_kwargs
Ê	variables
Ë	keras_api*
* 
* 
* 
* 
* 

Ì
_state_var*
* 
* 
* 
* 
* 

Í
_state_var*
* 
* 
* 
* 
* 

Î
_state_var*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ã0
Ä1*

Å	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ç0
È1*

Ê	variables*

VARIABLE_VALUErandom_rotation_2/StateVarRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUErandom_zoom_2/StateVarRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUErandom_flip_2/StateVarRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_91/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_91/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_92/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_92/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_93/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_93/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_62/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_62/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_63/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_63/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_91/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_91/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_92/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_92/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv2d_93/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_93/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_62/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_62/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_63/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_63/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

#serving_default_sequential_32_inputPlaceholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ´´
÷
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_32_inputconv2d_91/kernelconv2d_91/biasconv2d_92/kernelconv2d_92/biasconv2d_93/kernelconv2d_93/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_87393
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
»
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_91/kernel/Read/ReadVariableOp"conv2d_91/bias/Read/ReadVariableOp$conv2d_92/kernel/Read/ReadVariableOp"conv2d_92/bias/Read/ReadVariableOp$conv2d_93/kernel/Read/ReadVariableOp"conv2d_93/bias/Read/ReadVariableOp#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOp#dense_63/kernel/Read/ReadVariableOp!dense_63/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp.random_rotation_2/StateVar/Read/ReadVariableOp*random_zoom_2/StateVar/Read/ReadVariableOp*random_flip_2/StateVar/Read/ReadVariableOp+Adam/conv2d_91/kernel/m/Read/ReadVariableOp)Adam/conv2d_91/bias/m/Read/ReadVariableOp+Adam/conv2d_92/kernel/m/Read/ReadVariableOp)Adam/conv2d_92/bias/m/Read/ReadVariableOp+Adam/conv2d_93/kernel/m/Read/ReadVariableOp)Adam/conv2d_93/bias/m/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp*Adam/dense_63/kernel/m/Read/ReadVariableOp(Adam/dense_63/bias/m/Read/ReadVariableOp+Adam/conv2d_91/kernel/v/Read/ReadVariableOp)Adam/conv2d_91/bias/v/Read/ReadVariableOp+Adam/conv2d_92/kernel/v/Read/ReadVariableOp)Adam/conv2d_92/bias/v/Read/ReadVariableOp+Adam/conv2d_93/kernel/v/Read/ReadVariableOp)Adam/conv2d_93/bias/v/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOp*Adam/dense_63/kernel/v/Read/ReadVariableOp(Adam/dense_63/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_88420
î
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_91/kernelconv2d_91/biasconv2d_92/kernelconv2d_92/biasconv2d_93/kernelconv2d_93/biasdense_62/kerneldense_62/biasdense_63/kerneldense_63/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1random_rotation_2/StateVarrandom_zoom_2/StateVarrandom_flip_2/StateVarAdam/conv2d_91/kernel/mAdam/conv2d_91/bias/mAdam/conv2d_92/kernel/mAdam/conv2d_92/bias/mAdam/conv2d_93/kernel/mAdam/conv2d_93/bias/mAdam/dense_62/kernel/mAdam/dense_62/bias/mAdam/dense_63/kernel/mAdam/dense_63/bias/mAdam/conv2d_91/kernel/vAdam/conv2d_91/bias/vAdam/conv2d_92/kernel/vAdam/conv2d_92/bias/vAdam/conv2d_93/kernel/vAdam/conv2d_93/bias/vAdam/dense_62/kernel/vAdam/dense_62/bias/vAdam/dense_63/kernel/vAdam/dense_63/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_88556Ãý

Z
-__inference_sequential_32_layer_call_fn_86046
random_rotation_2_input
identityÎ
PartitionedCallPartitionedCallrandom_rotation_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_32_layer_call_and_return_conditional_losses_86043j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:j f
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
1
_user_specified_namerandom_rotation_2_input
À


#__inference_signature_wrapper_87393
sequential_32_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ò
	unknown_6:	
	unknown_7:	
	unknown_8:
identity¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallsequential_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_86017o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
-
_user_specified_namesequential_32_input
ù*

H__inference_sequential_33_layer_call_and_return_conditional_losses_86857
sequential_32_input)
conv2d_91_86827:
conv2d_91_86829:)
conv2d_92_86833: 
conv2d_92_86835: )
conv2d_93_86839: @
conv2d_93_86841:@#
dense_62_86846:ò
dense_62_86848:	!
dense_63_86851:	
dense_63_86853:
identity¢!conv2d_91/StatefulPartitionedCall¢!conv2d_92/StatefulPartitionedCall¢!conv2d_93/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢ dense_63/StatefulPartitionedCallØ
sequential_32/PartitionedCallPartitionedCallsequential_32_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_32_layer_call_and_return_conditional_losses_86043
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall&sequential_32/PartitionedCall:output:0conv2d_91_86827conv2d_91_86829*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_91_layer_call_and_return_conditional_losses_86531ó
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_86485
!conv2d_92/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0conv2d_92_86833conv2d_92_86835*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_92_layer_call_and_return_conditional_losses_86549ó
 max_pooling2d_92/PartitionedCallPartitionedCall*conv2d_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_86497
!conv2d_93/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_92/PartitionedCall:output:0conv2d_93_86839conv2d_93_86841*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_93_layer_call_and_return_conditional_losses_86567ó
 max_pooling2d_93/PartitionedCallPartitionedCall*conv2d_93/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_86509à
flatten_28/PartitionedCallPartitionedCall)max_pooling2d_93/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_86580
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_62_86846dense_62_86848*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_86593
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_86851dense_63_86853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_86610x
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp"^conv2d_91/StatefulPartitionedCall"^conv2d_92/StatefulPartitionedCall"^conv2d_93/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!conv2d_92/StatefulPartitionedCall!conv2d_92/StatefulPartitionedCall2F
!conv2d_93/StatefulPartitionedCall!conv2d_93/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
-
_user_specified_namesequential_32_input
¸
L
0__inference_max_pooling2d_93_layer_call_fn_87821

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_86509
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â-

H__inference_sequential_33_layer_call_and_return_conditional_losses_86897
sequential_32_input!
sequential_32_86860:	!
sequential_32_86862:	!
sequential_32_86864:	)
conv2d_91_86867:
conv2d_91_86869:)
conv2d_92_86873: 
conv2d_92_86875: )
conv2d_93_86879: @
conv2d_93_86881:@#
dense_62_86886:ò
dense_62_86888:	!
dense_63_86891:	
dense_63_86893:
identity¢!conv2d_91/StatefulPartitionedCall¢!conv2d_92/StatefulPartitionedCall¢!conv2d_93/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢ dense_63/StatefulPartitionedCall¢%sequential_32/StatefulPartitionedCallª
%sequential_32/StatefulPartitionedCallStatefulPartitionedCallsequential_32_inputsequential_32_86860sequential_32_86862sequential_32_86864*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_32_layer_call_and_return_conditional_losses_86436£
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall.sequential_32/StatefulPartitionedCall:output:0conv2d_91_86867conv2d_91_86869*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_91_layer_call_and_return_conditional_losses_86531ó
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_86485
!conv2d_92/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0conv2d_92_86873conv2d_92_86875*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_92_layer_call_and_return_conditional_losses_86549ó
 max_pooling2d_92/PartitionedCallPartitionedCall*conv2d_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_86497
!conv2d_93/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_92/PartitionedCall:output:0conv2d_93_86879conv2d_93_86881*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_93_layer_call_and_return_conditional_losses_86567ó
 max_pooling2d_93/PartitionedCallPartitionedCall*conv2d_93/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_86509à
flatten_28/PartitionedCallPartitionedCall)max_pooling2d_93/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_86580
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_62_86886dense_62_86888*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_86593
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_86891dense_63_86893*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_86610x
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp"^conv2d_91/StatefulPartitionedCall"^conv2d_92/StatefulPartitionedCall"^conv2d_93/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall&^sequential_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : : : : 2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!conv2d_92/StatefulPartitionedCall!conv2d_92/StatefulPartitionedCall2F
!conv2d_93/StatefulPartitionedCall!conv2d_93/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2N
%sequential_32/StatefulPartitionedCall%sequential_32/StatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
-
_user_specified_namesequential_32_input

¯
-__inference_sequential_32_layer_call_fn_87409

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_32_layer_call_and_return_conditional_losses_86436y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ´´: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

ý
D__inference_conv2d_93_layer_call_and_return_conditional_losses_87816

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- 
 
_user_specified_nameinputs
ì
d
H__inference_sequential_32_layer_call_and_return_conditional_losses_86043

inputs
identityÓ
!random_rotation_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_86028ï
random_zoom_2/PartitionedCallPartitionedCall*random_rotation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_86034ë
random_flip_2/PartitionedCallPartitionedCall&random_zoom_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_86040x
IdentityIdentity&random_flip_2/PartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Ä5

H__inference_sequential_33_layer_call_and_return_conditional_losses_87003

inputsB
(conv2d_91_conv2d_readvariableop_resource:7
)conv2d_91_biasadd_readvariableop_resource:B
(conv2d_92_conv2d_readvariableop_resource: 7
)conv2d_92_biasadd_readvariableop_resource: B
(conv2d_93_conv2d_readvariableop_resource: @7
)conv2d_93_biasadd_readvariableop_resource:@<
'dense_62_matmul_readvariableop_resource:ò7
(dense_62_biasadd_readvariableop_resource:	:
'dense_63_matmul_readvariableop_resource:	6
(dense_63_biasadd_readvariableop_resource:
identity¢ conv2d_91/BiasAdd/ReadVariableOp¢conv2d_91/Conv2D/ReadVariableOp¢ conv2d_92/BiasAdd/ReadVariableOp¢conv2d_92/Conv2D/ReadVariableOp¢ conv2d_93/BiasAdd/ReadVariableOp¢conv2d_93/Conv2D/ReadVariableOp¢dense_62/BiasAdd/ReadVariableOp¢dense_62/MatMul/ReadVariableOp¢dense_63/BiasAdd/ReadVariableOp¢dense_63/MatMul/ReadVariableOp
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¯
conv2d_91/Conv2DConv2Dinputs'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
paddingSAME*
strides

 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´n
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´®
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ*
ksize
*
paddingVALID*
strides

conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0È
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
paddingSAME*
strides

 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ l
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ ®
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- *
ksize
*
paddingVALID*
strides

conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0È
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
paddingSAME*
strides

 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@l
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@®
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
a
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  
flatten_28/ReshapeReshape!max_pooling2d_93/MaxPool:output:0flatten_28/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0
dense_62/MatMulMatMulflatten_28/Reshape:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_62/TanhTanhdense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_63/MatMulMatMuldense_62/Tanh:y:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_63/SoftmaxSoftmaxdense_63/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_63/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
É
a
E__inference_flatten_28_layer_call_and_return_conditional_losses_86580

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ý
D__inference_conv2d_92_layer_call_and_return_conditional_losses_87786

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ
 
_user_specified_nameinputs
É
a
E__inference_flatten_28_layer_call_and_return_conditional_losses_87837

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

u
H__inference_sequential_32_layer_call_and_return_conditional_losses_86463
random_rotation_2_input
identityä
!random_rotation_2/PartitionedCallPartitionedCallrandom_rotation_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_86028ï
random_zoom_2/PartitionedCallPartitionedCall*random_rotation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_86034ë
random_flip_2/PartitionedCallPartitionedCall&random_zoom_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_86040x
IdentityIdentity&random_flip_2/PartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:j f
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
1
_user_specified_namerandom_rotation_2_input
Ê

(__inference_dense_62_layer_call_fn_87846

inputs
unknown:ò
	unknown_0:	
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_86593p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿò: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
Ò*
ü
H__inference_sequential_33_layer_call_and_return_conditional_losses_86617

inputs)
conv2d_91_86532:
conv2d_91_86534:)
conv2d_92_86550: 
conv2d_92_86552: )
conv2d_93_86568: @
conv2d_93_86570:@#
dense_62_86594:ò
dense_62_86596:	!
dense_63_86611:	
dense_63_86613:
identity¢!conv2d_91/StatefulPartitionedCall¢!conv2d_92/StatefulPartitionedCall¢!conv2d_93/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢ dense_63/StatefulPartitionedCallË
sequential_32/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_32_layer_call_and_return_conditional_losses_86043
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall&sequential_32/PartitionedCall:output:0conv2d_91_86532conv2d_91_86534*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_91_layer_call_and_return_conditional_losses_86531ó
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_86485
!conv2d_92/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0conv2d_92_86550conv2d_92_86552*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_92_layer_call_and_return_conditional_losses_86549ó
 max_pooling2d_92/PartitionedCallPartitionedCall*conv2d_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_86497
!conv2d_93/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_92/PartitionedCall:output:0conv2d_93_86568conv2d_93_86570*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_93_layer_call_and_return_conditional_losses_86567ó
 max_pooling2d_93/PartitionedCallPartitionedCall*conv2d_93/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_86509à
flatten_28/PartitionedCallPartitionedCall)max_pooling2d_93/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_86580
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_62_86594dense_62_86596*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_86593
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_86611dense_63_86613*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_86610x
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp"^conv2d_91/StatefulPartitionedCall"^conv2d_92/StatefulPartitionedCall"^conv2d_93/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!conv2d_92/StatefulPartitionedCall!conv2d_92/StatefulPartitionedCall2F
!conv2d_93/StatefulPartitionedCall!conv2d_93/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
¸
L
0__inference_max_pooling2d_92_layer_call_fn_87791

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_86497
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»-

H__inference_sequential_33_layer_call_and_return_conditional_losses_86763

inputs!
sequential_32_86726:	!
sequential_32_86728:	!
sequential_32_86730:	)
conv2d_91_86733:
conv2d_91_86735:)
conv2d_92_86739: 
conv2d_92_86741: )
conv2d_93_86745: @
conv2d_93_86747:@#
dense_62_86752:ò
dense_62_86754:	!
dense_63_86757:	
dense_63_86759:
identity¢!conv2d_91/StatefulPartitionedCall¢!conv2d_92/StatefulPartitionedCall¢!conv2d_93/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢ dense_63/StatefulPartitionedCall¢%sequential_32/StatefulPartitionedCall
%sequential_32/StatefulPartitionedCallStatefulPartitionedCallinputssequential_32_86726sequential_32_86728sequential_32_86730*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_32_layer_call_and_return_conditional_losses_86436£
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall.sequential_32/StatefulPartitionedCall:output:0conv2d_91_86733conv2d_91_86735*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_91_layer_call_and_return_conditional_losses_86531ó
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_86485
!conv2d_92/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0conv2d_92_86739conv2d_92_86741*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_92_layer_call_and_return_conditional_losses_86549ó
 max_pooling2d_92/PartitionedCallPartitionedCall*conv2d_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_86497
!conv2d_93/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_92/PartitionedCall:output:0conv2d_93_86745conv2d_93_86747*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_93_layer_call_and_return_conditional_losses_86567ó
 max_pooling2d_93/PartitionedCallPartitionedCall*conv2d_93/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_86509à
flatten_28/PartitionedCallPartitionedCall)max_pooling2d_93/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_86580
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#flatten_28/PartitionedCall:output:0dense_62_86752dense_62_86754*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_62_layer_call_and_return_conditional_losses_86593
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0dense_63_86757dense_63_86759*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_86610x
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
NoOpNoOp"^conv2d_91/StatefulPartitionedCall"^conv2d_92/StatefulPartitionedCall"^conv2d_93/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall&^sequential_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : : : : 2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!conv2d_92/StatefulPartitionedCall!conv2d_92/StatefulPartitionedCall2F
!conv2d_93/StatefulPartitionedCall!conv2d_93/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2N
%sequential_32/StatefulPartitionedCall%sequential_32/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Ë

1__inference_random_rotation_2_layer_call_fn_87889

inputs
unknown:	
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_86411y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Â
}
-__inference_random_zoom_2_layer_call_fn_88023

inputs
unknown:	
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_86280y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

ý
D__inference_conv2d_93_layer_call_and_return_conditional_losses_86567

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- 
 
_user_specified_nameinputs
Í
I
-__inference_sequential_32_layer_call_fn_87398

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_32_layer_call_and_return_conditional_losses_86043j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

Å
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_88011

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ø
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ¡
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Ä
Ü
-__inference_sequential_33_layer_call_fn_86959

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@
	unknown_8:ò
	unknown_9:	

unknown_10:	

unknown_11:
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_33_layer_call_and_return_conditional_losses_86763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
³
F
*__inference_flatten_28_layer_call_fn_87831

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_28_layer_call_and_return_conditional_losses_86580b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Í
I
-__inference_random_zoom_2_layer_call_fn_88016

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_86034j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_87766

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_88145

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs


H__inference_random_flip_2_layer_call_and_return_conditional_losses_88256

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity¢(stateful_uniform_full_int/RngReadAndSkip¢*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ú
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :þ
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Î
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:å
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ë
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´È
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Â
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´¿
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¡
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ã
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskÛ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¯
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ï
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :¿
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ü
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:â
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´¿
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¹
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´¶
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
 

ø
C__inference_dense_62_layer_call_and_return_conditional_losses_87857

inputs3
matmul_readvariableop_resource:ò.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿò: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
£

õ
C__inference_dense_63_layer_call_and_return_conditional_losses_86610

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_random_flip_2_layer_call_and_return_conditional_losses_86040

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
ë
é
-__inference_sequential_33_layer_call_fn_86823
sequential_32_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@
	unknown_8:ò
	unknown_9:	

unknown_10:	

unknown_11:
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallsequential_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_33_layer_call_and_return_conditional_losses_86763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
-
_user_specified_namesequential_32_input
¸
L
0__inference_max_pooling2d_91_layer_call_fn_87761

inputs
identityÙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_86485
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

)__inference_conv2d_92_layer_call_fn_87775

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_92_layer_call_and_return_conditional_losses_86549w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿZZ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ
 
_user_specified_nameinputs
Â
}
-__inference_random_flip_2_layer_call_fn_88141

inputs
unknown:	
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_86165y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
£

õ
C__inference_dense_63_layer_call_and_return_conditional_losses_87877

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_91_layer_call_and_return_conditional_losses_86531

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ´´: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
 

ø
C__inference_dense_62_layer_call_and_return_conditional_losses_86593

inputs3
matmul_readvariableop_resource:ò.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿò: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
Õ¨
þ
!__inference__traced_restore_88556
file_prefix;
!assignvariableop_conv2d_91_kernel:/
!assignvariableop_1_conv2d_91_bias:=
#assignvariableop_2_conv2d_92_kernel: /
!assignvariableop_3_conv2d_92_bias: =
#assignvariableop_4_conv2d_93_kernel: @/
!assignvariableop_5_conv2d_93_bias:@7
"assignvariableop_6_dense_62_kernel:ò/
 assignvariableop_7_dense_62_bias:	5
"assignvariableop_8_dense_63_kernel:	.
 assignvariableop_9_dense_63_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: <
.assignvariableop_19_random_rotation_2_statevar:	8
*assignvariableop_20_random_zoom_2_statevar:	8
*assignvariableop_21_random_flip_2_statevar:	E
+assignvariableop_22_adam_conv2d_91_kernel_m:7
)assignvariableop_23_adam_conv2d_91_bias_m:E
+assignvariableop_24_adam_conv2d_92_kernel_m: 7
)assignvariableop_25_adam_conv2d_92_bias_m: E
+assignvariableop_26_adam_conv2d_93_kernel_m: @7
)assignvariableop_27_adam_conv2d_93_bias_m:@?
*assignvariableop_28_adam_dense_62_kernel_m:ò7
(assignvariableop_29_adam_dense_62_bias_m:	=
*assignvariableop_30_adam_dense_63_kernel_m:	6
(assignvariableop_31_adam_dense_63_bias_m:E
+assignvariableop_32_adam_conv2d_91_kernel_v:7
)assignvariableop_33_adam_conv2d_91_bias_v:E
+assignvariableop_34_adam_conv2d_92_kernel_v: 7
)assignvariableop_35_adam_conv2d_92_bias_v: E
+assignvariableop_36_adam_conv2d_93_kernel_v: @7
)assignvariableop_37_adam_conv2d_93_bias_v:@?
*assignvariableop_38_adam_dense_62_kernel_v:ò7
(assignvariableop_39_adam_dense_62_bias_v:	=
*assignvariableop_40_adam_dense_63_kernel_v:	6
(assignvariableop_41_adam_dense_63_bias_v:
identity_43¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9è
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*
valueB+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ø
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Â
_output_shapes¯
¬:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_91_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_91_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_92_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_92_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_93_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_93_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_62_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_62_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_63_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_63_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_19AssignVariableOp.assignvariableop_19_random_rotation_2_statevarIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_random_zoom_2_statevarIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_21AssignVariableOp*assignvariableop_21_random_flip_2_statevarIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_91_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_conv2d_91_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_92_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_conv2d_92_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_93_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_conv2d_93_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_62_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense_62_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_63_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_dense_63_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_91_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_91_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_92_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_92_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_93_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_93_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_dense_62_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_dense_62_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_dense_63_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense_63_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ë
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: Ø
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

h
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_87893

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
ßÒ
·
H__inference_sequential_33_layer_call_and_return_conditional_losses_87366

inputsV
Hsequential_32_random_rotation_2_stateful_uniform_rngreadandskip_resource:	R
Dsequential_32_random_zoom_2_stateful_uniform_rngreadandskip_resource:	[
Msequential_32_random_flip_2_stateful_uniform_full_int_rngreadandskip_resource:	B
(conv2d_91_conv2d_readvariableop_resource:7
)conv2d_91_biasadd_readvariableop_resource:B
(conv2d_92_conv2d_readvariableop_resource: 7
)conv2d_92_biasadd_readvariableop_resource: B
(conv2d_93_conv2d_readvariableop_resource: @7
)conv2d_93_biasadd_readvariableop_resource:@<
'dense_62_matmul_readvariableop_resource:ò7
(dense_62_biasadd_readvariableop_resource:	:
'dense_63_matmul_readvariableop_resource:	6
(dense_63_biasadd_readvariableop_resource:
identity¢ conv2d_91/BiasAdd/ReadVariableOp¢conv2d_91/Conv2D/ReadVariableOp¢ conv2d_92/BiasAdd/ReadVariableOp¢conv2d_92/Conv2D/ReadVariableOp¢ conv2d_93/BiasAdd/ReadVariableOp¢conv2d_93/Conv2D/ReadVariableOp¢dense_62/BiasAdd/ReadVariableOp¢dense_62/MatMul/ReadVariableOp¢dense_63/BiasAdd/ReadVariableOp¢dense_63/MatMul/ReadVariableOp¢Dsequential_32/random_flip_2/stateful_uniform_full_int/RngReadAndSkip¢Fsequential_32/random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip¢?sequential_32/random_rotation_2/stateful_uniform/RngReadAndSkip¢;sequential_32/random_zoom_2/stateful_uniform/RngReadAndSkip[
%sequential_32/random_rotation_2/ShapeShapeinputs*
T0*
_output_shapes
:}
3sequential_32/random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_32/random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_32/random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
-sequential_32/random_rotation_2/strided_sliceStridedSlice.sequential_32/random_rotation_2/Shape:output:0<sequential_32/random_rotation_2/strided_slice/stack:output:0>sequential_32/random_rotation_2/strided_slice/stack_1:output:0>sequential_32/random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5sequential_32/random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
7sequential_32/random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
7sequential_32/random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_32/random_rotation_2/strided_slice_1StridedSlice.sequential_32/random_rotation_2/Shape:output:0>sequential_32/random_rotation_2/strided_slice_1/stack:output:0@sequential_32/random_rotation_2/strided_slice_1/stack_1:output:0@sequential_32/random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
$sequential_32/random_rotation_2/CastCast8sequential_32/random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
5sequential_32/random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
7sequential_32/random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
7sequential_32/random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
/sequential_32/random_rotation_2/strided_slice_2StridedSlice.sequential_32/random_rotation_2/Shape:output:0>sequential_32/random_rotation_2/strided_slice_2/stack:output:0@sequential_32/random_rotation_2/strided_slice_2/stack_1:output:0@sequential_32/random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
&sequential_32/random_rotation_2/Cast_1Cast8sequential_32/random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ¤
6sequential_32/random_rotation_2/stateful_uniform/shapePack6sequential_32/random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:y
4sequential_32/random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿y
4sequential_32/random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?
6sequential_32/random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: à
5sequential_32/random_rotation_2/stateful_uniform/ProdProd?sequential_32/random_rotation_2/stateful_uniform/shape:output:0?sequential_32/random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: y
7sequential_32/random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :¯
7sequential_32/random_rotation_2/stateful_uniform/Cast_1Cast>sequential_32/random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
?sequential_32/random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkipHsequential_32_random_rotation_2_stateful_uniform_rngreadandskip_resource@sequential_32/random_rotation_2/stateful_uniform/Cast/x:output:0;sequential_32/random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:
Dsequential_32/random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Fsequential_32/random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Fsequential_32/random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ì
>sequential_32/random_rotation_2/stateful_uniform/strided_sliceStridedSliceGsequential_32/random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Msequential_32/random_rotation_2/stateful_uniform/strided_slice/stack:output:0Osequential_32/random_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Osequential_32/random_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask½
8sequential_32/random_rotation_2/stateful_uniform/BitcastBitcastGsequential_32/random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Fsequential_32/random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Hsequential_32/random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hsequential_32/random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Â
@sequential_32/random_rotation_2/stateful_uniform/strided_slice_1StridedSliceGsequential_32/random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Osequential_32/random_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Qsequential_32/random_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Qsequential_32/random_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Á
:sequential_32/random_rotation_2/stateful_uniform/Bitcast_1BitcastIsequential_32/random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Msequential_32/random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :«
Isequential_32/random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?sequential_32/random_rotation_2/stateful_uniform/shape:output:0Csequential_32/random_rotation_2/stateful_uniform/Bitcast_1:output:0Asequential_32/random_rotation_2/stateful_uniform/Bitcast:output:0Vsequential_32/random_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
4sequential_32/random_rotation_2/stateful_uniform/subSub=sequential_32/random_rotation_2/stateful_uniform/max:output:0=sequential_32/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: ÷
4sequential_32/random_rotation_2/stateful_uniform/mulMulRsequential_32/random_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:08sequential_32/random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
0sequential_32/random_rotation_2/stateful_uniformAddV28sequential_32/random_rotation_2/stateful_uniform/mul:z:0=sequential_32/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
5sequential_32/random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ç
3sequential_32/random_rotation_2/rotation_matrix/subSub*sequential_32/random_rotation_2/Cast_1:y:0>sequential_32/random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
3sequential_32/random_rotation_2/rotation_matrix/CosCos4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
7sequential_32/random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ë
5sequential_32/random_rotation_2/rotation_matrix/sub_1Sub*sequential_32/random_rotation_2/Cast_1:y:0@sequential_32/random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: Ü
3sequential_32/random_rotation_2/rotation_matrix/mulMul7sequential_32/random_rotation_2/rotation_matrix/Cos:y:09sequential_32/random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3sequential_32/random_rotation_2/rotation_matrix/SinSin4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
7sequential_32/random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
5sequential_32/random_rotation_2/rotation_matrix/sub_2Sub(sequential_32/random_rotation_2/Cast:y:0@sequential_32/random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: Þ
5sequential_32/random_rotation_2/rotation_matrix/mul_1Mul7sequential_32/random_rotation_2/rotation_matrix/Sin:y:09sequential_32/random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
5sequential_32/random_rotation_2/rotation_matrix/sub_3Sub7sequential_32/random_rotation_2/rotation_matrix/mul:z:09sequential_32/random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
5sequential_32/random_rotation_2/rotation_matrix/sub_4Sub7sequential_32/random_rotation_2/rotation_matrix/sub:z:09sequential_32/random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
9sequential_32/random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ï
7sequential_32/random_rotation_2/rotation_matrix/truedivRealDiv9sequential_32/random_rotation_2/rotation_matrix/sub_4:z:0Bsequential_32/random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
7sequential_32/random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
5sequential_32/random_rotation_2/rotation_matrix/sub_5Sub(sequential_32/random_rotation_2/Cast:y:0@sequential_32/random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
:  
5sequential_32/random_rotation_2/rotation_matrix/Sin_1Sin4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
7sequential_32/random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ë
5sequential_32/random_rotation_2/rotation_matrix/sub_6Sub*sequential_32/random_rotation_2/Cast_1:y:0@sequential_32/random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: à
5sequential_32/random_rotation_2/rotation_matrix/mul_2Mul9sequential_32/random_rotation_2/rotation_matrix/Sin_1:y:09sequential_32/random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
5sequential_32/random_rotation_2/rotation_matrix/Cos_1Cos4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
7sequential_32/random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
5sequential_32/random_rotation_2/rotation_matrix/sub_7Sub(sequential_32/random_rotation_2/Cast:y:0@sequential_32/random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: à
5sequential_32/random_rotation_2/rotation_matrix/mul_3Mul9sequential_32/random_rotation_2/rotation_matrix/Cos_1:y:09sequential_32/random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
3sequential_32/random_rotation_2/rotation_matrix/addAddV29sequential_32/random_rotation_2/rotation_matrix/mul_2:z:09sequential_32/random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
5sequential_32/random_rotation_2/rotation_matrix/sub_8Sub9sequential_32/random_rotation_2/rotation_matrix/sub_5:z:07sequential_32/random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
;sequential_32/random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ó
9sequential_32/random_rotation_2/rotation_matrix/truediv_1RealDiv9sequential_32/random_rotation_2/rotation_matrix/sub_8:z:0Dsequential_32/random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5sequential_32/random_rotation_2/rotation_matrix/ShapeShape4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:
Csequential_32/random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Esequential_32/random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Esequential_32/random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Á
=sequential_32/random_rotation_2/rotation_matrix/strided_sliceStridedSlice>sequential_32/random_rotation_2/rotation_matrix/Shape:output:0Lsequential_32/random_rotation_2/rotation_matrix/strided_slice/stack:output:0Nsequential_32/random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0Nsequential_32/random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
5sequential_32/random_rotation_2/rotation_matrix/Cos_2Cos4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Esequential_32/random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
?sequential_32/random_rotation_2/rotation_matrix/strided_slice_1StridedSlice9sequential_32/random_rotation_2/rotation_matrix/Cos_2:y:0Nsequential_32/random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask 
5sequential_32/random_rotation_2/rotation_matrix/Sin_2Sin4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Esequential_32/random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
?sequential_32/random_rotation_2/rotation_matrix/strided_slice_2StridedSlice9sequential_32/random_rotation_2/rotation_matrix/Sin_2:y:0Nsequential_32/random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¶
3sequential_32/random_rotation_2/rotation_matrix/NegNegHsequential_32/random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Esequential_32/random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ö
?sequential_32/random_rotation_2/rotation_matrix/strided_slice_3StridedSlice;sequential_32/random_rotation_2/rotation_matrix/truediv:z:0Nsequential_32/random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask 
5sequential_32/random_rotation_2/rotation_matrix/Sin_3Sin4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Esequential_32/random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
?sequential_32/random_rotation_2/rotation_matrix/strided_slice_4StridedSlice9sequential_32/random_rotation_2/rotation_matrix/Sin_3:y:0Nsequential_32/random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask 
5sequential_32/random_rotation_2/rotation_matrix/Cos_3Cos4sequential_32/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Esequential_32/random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
?sequential_32/random_rotation_2/rotation_matrix/strided_slice_5StridedSlice9sequential_32/random_rotation_2/rotation_matrix/Cos_3:y:0Nsequential_32/random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
Esequential_32/random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Gsequential_32/random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ø
?sequential_32/random_rotation_2/rotation_matrix/strided_slice_6StridedSlice=sequential_32/random_rotation_2/rotation_matrix/truediv_1:z:0Nsequential_32/random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Psequential_32/random_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
>sequential_32/random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
<sequential_32/random_rotation_2/rotation_matrix/zeros/packedPackFsequential_32/random_rotation_2/rotation_matrix/strided_slice:output:0Gsequential_32/random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
;sequential_32/random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ü
5sequential_32/random_rotation_2/rotation_matrix/zerosFillEsequential_32/random_rotation_2/rotation_matrix/zeros/packed:output:0Dsequential_32/random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
;sequential_32/random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :®
6sequential_32/random_rotation_2/rotation_matrix/concatConcatV2Hsequential_32/random_rotation_2/rotation_matrix/strided_slice_1:output:07sequential_32/random_rotation_2/rotation_matrix/Neg:y:0Hsequential_32/random_rotation_2/rotation_matrix/strided_slice_3:output:0Hsequential_32/random_rotation_2/rotation_matrix/strided_slice_4:output:0Hsequential_32/random_rotation_2/rotation_matrix/strided_slice_5:output:0Hsequential_32/random_rotation_2/rotation_matrix/strided_slice_6:output:0>sequential_32/random_rotation_2/rotation_matrix/zeros:output:0Dsequential_32/random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
/sequential_32/random_rotation_2/transform/ShapeShapeinputs*
T0*
_output_shapes
:
=sequential_32/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?sequential_32/random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?sequential_32/random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
7sequential_32/random_rotation_2/transform/strided_sliceStridedSlice8sequential_32/random_rotation_2/transform/Shape:output:0Fsequential_32/random_rotation_2/transform/strided_slice/stack:output:0Hsequential_32/random_rotation_2/transform/strided_slice/stack_1:output:0Hsequential_32/random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:y
4sequential_32/random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ¡
Dsequential_32/random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs?sequential_32/random_rotation_2/rotation_matrix/concat:output:0@sequential_32/random_rotation_2/transform/strided_slice:output:0=sequential_32/random_rotation_2/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARª
!sequential_32/random_zoom_2/ShapeShapeYsequential_32/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:y
/sequential_32/random_zoom_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_32/random_zoom_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_32/random_zoom_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)sequential_32/random_zoom_2/strided_sliceStridedSlice*sequential_32/random_zoom_2/Shape:output:08sequential_32/random_zoom_2/strided_slice/stack:output:0:sequential_32/random_zoom_2/strided_slice/stack_1:output:0:sequential_32/random_zoom_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
1sequential_32/random_zoom_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
3sequential_32/random_zoom_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ}
3sequential_32/random_zoom_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
+sequential_32/random_zoom_2/strided_slice_1StridedSlice*sequential_32/random_zoom_2/Shape:output:0:sequential_32/random_zoom_2/strided_slice_1/stack:output:0<sequential_32/random_zoom_2/strided_slice_1/stack_1:output:0<sequential_32/random_zoom_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
 sequential_32/random_zoom_2/CastCast4sequential_32/random_zoom_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
1sequential_32/random_zoom_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
3sequential_32/random_zoom_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ}
3sequential_32/random_zoom_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
+sequential_32/random_zoom_2/strided_slice_2StridedSlice*sequential_32/random_zoom_2/Shape:output:0:sequential_32/random_zoom_2/strided_slice_2/stack:output:0<sequential_32/random_zoom_2/strided_slice_2/stack_1:output:0<sequential_32/random_zoom_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
"sequential_32/random_zoom_2/Cast_1Cast4sequential_32/random_zoom_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: v
4sequential_32/random_zoom_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Û
2sequential_32/random_zoom_2/stateful_uniform/shapePack2sequential_32/random_zoom_2/strided_slice:output:0=sequential_32/random_zoom_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:u
0sequential_32/random_zoom_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?u
0sequential_32/random_zoom_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌ?|
2sequential_32/random_zoom_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ô
1sequential_32/random_zoom_2/stateful_uniform/ProdProd;sequential_32/random_zoom_2/stateful_uniform/shape:output:0;sequential_32/random_zoom_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: u
3sequential_32/random_zoom_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :§
3sequential_32/random_zoom_2/stateful_uniform/Cast_1Cast:sequential_32/random_zoom_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¦
;sequential_32/random_zoom_2/stateful_uniform/RngReadAndSkipRngReadAndSkipDsequential_32_random_zoom_2_stateful_uniform_rngreadandskip_resource<sequential_32/random_zoom_2/stateful_uniform/Cast/x:output:07sequential_32/random_zoom_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:
@sequential_32/random_zoom_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Bsequential_32/random_zoom_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_32/random_zoom_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
:sequential_32/random_zoom_2/stateful_uniform/strided_sliceStridedSliceCsequential_32/random_zoom_2/stateful_uniform/RngReadAndSkip:value:0Isequential_32/random_zoom_2/stateful_uniform/strided_slice/stack:output:0Ksequential_32/random_zoom_2/stateful_uniform/strided_slice/stack_1:output:0Ksequential_32/random_zoom_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskµ
4sequential_32/random_zoom_2/stateful_uniform/BitcastBitcastCsequential_32/random_zoom_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Bsequential_32/random_zoom_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Dsequential_32/random_zoom_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dsequential_32/random_zoom_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:®
<sequential_32/random_zoom_2/stateful_uniform/strided_slice_1StridedSliceCsequential_32/random_zoom_2/stateful_uniform/RngReadAndSkip:value:0Ksequential_32/random_zoom_2/stateful_uniform/strided_slice_1/stack:output:0Msequential_32/random_zoom_2/stateful_uniform/strided_slice_1/stack_1:output:0Msequential_32/random_zoom_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:¹
6sequential_32/random_zoom_2/stateful_uniform/Bitcast_1BitcastEsequential_32/random_zoom_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Isequential_32/random_zoom_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Esequential_32/random_zoom_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2;sequential_32/random_zoom_2/stateful_uniform/shape:output:0?sequential_32/random_zoom_2/stateful_uniform/Bitcast_1:output:0=sequential_32/random_zoom_2/stateful_uniform/Bitcast:output:0Rsequential_32/random_zoom_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
0sequential_32/random_zoom_2/stateful_uniform/subSub9sequential_32/random_zoom_2/stateful_uniform/max:output:09sequential_32/random_zoom_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: ï
0sequential_32/random_zoom_2/stateful_uniform/mulMulNsequential_32/random_zoom_2/stateful_uniform/StatelessRandomUniformV2:output:04sequential_32/random_zoom_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
,sequential_32/random_zoom_2/stateful_uniformAddV24sequential_32/random_zoom_2/stateful_uniform/mul:z:09sequential_32/random_zoom_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
'sequential_32/random_zoom_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ÿ
"sequential_32/random_zoom_2/concatConcatV20sequential_32/random_zoom_2/stateful_uniform:z:00sequential_32/random_zoom_2/stateful_uniform:z:00sequential_32/random_zoom_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-sequential_32/random_zoom_2/zoom_matrix/ShapeShape+sequential_32/random_zoom_2/concat:output:0*
T0*
_output_shapes
:
;sequential_32/random_zoom_2/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=sequential_32/random_zoom_2/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=sequential_32/random_zoom_2/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_32/random_zoom_2/zoom_matrix/strided_sliceStridedSlice6sequential_32/random_zoom_2/zoom_matrix/Shape:output:0Dsequential_32/random_zoom_2/zoom_matrix/strided_slice/stack:output:0Fsequential_32/random_zoom_2/zoom_matrix/strided_slice/stack_1:output:0Fsequential_32/random_zoom_2/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-sequential_32/random_zoom_2/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?³
+sequential_32/random_zoom_2/zoom_matrix/subSub&sequential_32/random_zoom_2/Cast_1:y:06sequential_32/random_zoom_2/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: v
1sequential_32/random_zoom_2/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @È
/sequential_32/random_zoom_2/zoom_matrix/truedivRealDiv/sequential_32/random_zoom_2/zoom_matrix/sub:z:0:sequential_32/random_zoom_2/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
=sequential_32/random_zoom_2/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
?sequential_32/random_zoom_2/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_32/random_zoom_2/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Þ
7sequential_32/random_zoom_2/zoom_matrix/strided_slice_1StridedSlice+sequential_32/random_zoom_2/concat:output:0Fsequential_32/random_zoom_2/zoom_matrix/strided_slice_1/stack:output:0Hsequential_32/random_zoom_2/zoom_matrix/strided_slice_1/stack_1:output:0Hsequential_32/random_zoom_2/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskt
/sequential_32/random_zoom_2/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?â
-sequential_32/random_zoom_2/zoom_matrix/sub_1Sub8sequential_32/random_zoom_2/zoom_matrix/sub_1/x:output:0@sequential_32/random_zoom_2/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÌ
+sequential_32/random_zoom_2/zoom_matrix/mulMul3sequential_32/random_zoom_2/zoom_matrix/truediv:z:01sequential_32/random_zoom_2/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
/sequential_32/random_zoom_2/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?µ
-sequential_32/random_zoom_2/zoom_matrix/sub_2Sub$sequential_32/random_zoom_2/Cast:y:08sequential_32/random_zoom_2/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: x
3sequential_32/random_zoom_2/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Î
1sequential_32/random_zoom_2/zoom_matrix/truediv_1RealDiv1sequential_32/random_zoom_2/zoom_matrix/sub_2:z:0<sequential_32/random_zoom_2/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
=sequential_32/random_zoom_2/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_32/random_zoom_2/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_32/random_zoom_2/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Þ
7sequential_32/random_zoom_2/zoom_matrix/strided_slice_2StridedSlice+sequential_32/random_zoom_2/concat:output:0Fsequential_32/random_zoom_2/zoom_matrix/strided_slice_2/stack:output:0Hsequential_32/random_zoom_2/zoom_matrix/strided_slice_2/stack_1:output:0Hsequential_32/random_zoom_2/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskt
/sequential_32/random_zoom_2/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?â
-sequential_32/random_zoom_2/zoom_matrix/sub_3Sub8sequential_32/random_zoom_2/zoom_matrix/sub_3/x:output:0@sequential_32/random_zoom_2/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
-sequential_32/random_zoom_2/zoom_matrix/mul_1Mul5sequential_32/random_zoom_2/zoom_matrix/truediv_1:z:01sequential_32/random_zoom_2/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=sequential_32/random_zoom_2/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
?sequential_32/random_zoom_2/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_32/random_zoom_2/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Þ
7sequential_32/random_zoom_2/zoom_matrix/strided_slice_3StridedSlice+sequential_32/random_zoom_2/concat:output:0Fsequential_32/random_zoom_2/zoom_matrix/strided_slice_3/stack:output:0Hsequential_32/random_zoom_2/zoom_matrix/strided_slice_3/stack_1:output:0Hsequential_32/random_zoom_2/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
6sequential_32/random_zoom_2/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ë
4sequential_32/random_zoom_2/zoom_matrix/zeros/packedPack>sequential_32/random_zoom_2/zoom_matrix/strided_slice:output:0?sequential_32/random_zoom_2/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:x
3sequential_32/random_zoom_2/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ä
-sequential_32/random_zoom_2/zoom_matrix/zerosFill=sequential_32/random_zoom_2/zoom_matrix/zeros/packed:output:0<sequential_32/random_zoom_2/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
8sequential_32/random_zoom_2/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ï
6sequential_32/random_zoom_2/zoom_matrix/zeros_1/packedPack>sequential_32/random_zoom_2/zoom_matrix/strided_slice:output:0Asequential_32/random_zoom_2/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:z
5sequential_32/random_zoom_2/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ê
/sequential_32/random_zoom_2/zoom_matrix/zeros_1Fill?sequential_32/random_zoom_2/zoom_matrix/zeros_1/packed:output:0>sequential_32/random_zoom_2/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=sequential_32/random_zoom_2/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_32/random_zoom_2/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
?sequential_32/random_zoom_2/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Þ
7sequential_32/random_zoom_2/zoom_matrix/strided_slice_4StridedSlice+sequential_32/random_zoom_2/concat:output:0Fsequential_32/random_zoom_2/zoom_matrix/strided_slice_4/stack:output:0Hsequential_32/random_zoom_2/zoom_matrix/strided_slice_4/stack_1:output:0Hsequential_32/random_zoom_2/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskz
8sequential_32/random_zoom_2/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ï
6sequential_32/random_zoom_2/zoom_matrix/zeros_2/packedPack>sequential_32/random_zoom_2/zoom_matrix/strided_slice:output:0Asequential_32/random_zoom_2/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:z
5sequential_32/random_zoom_2/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ê
/sequential_32/random_zoom_2/zoom_matrix/zeros_2Fill?sequential_32/random_zoom_2/zoom_matrix/zeros_2/packed:output:0>sequential_32/random_zoom_2/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential_32/random_zoom_2/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ç
.sequential_32/random_zoom_2/zoom_matrix/concatConcatV2@sequential_32/random_zoom_2/zoom_matrix/strided_slice_3:output:06sequential_32/random_zoom_2/zoom_matrix/zeros:output:0/sequential_32/random_zoom_2/zoom_matrix/mul:z:08sequential_32/random_zoom_2/zoom_matrix/zeros_1:output:0@sequential_32/random_zoom_2/zoom_matrix/strided_slice_4:output:01sequential_32/random_zoom_2/zoom_matrix/mul_1:z:08sequential_32/random_zoom_2/zoom_matrix/zeros_2:output:0<sequential_32/random_zoom_2/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
+sequential_32/random_zoom_2/transform/ShapeShapeYsequential_32/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:
9sequential_32/random_zoom_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
;sequential_32/random_zoom_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;sequential_32/random_zoom_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:û
3sequential_32/random_zoom_2/transform/strided_sliceStridedSlice4sequential_32/random_zoom_2/transform/Shape:output:0Bsequential_32/random_zoom_2/transform/strided_slice/stack:output:0Dsequential_32/random_zoom_2/transform/strided_slice/stack_1:output:0Dsequential_32/random_zoom_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:u
0sequential_32/random_zoom_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    à
@sequential_32/random_zoom_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Ysequential_32/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:07sequential_32/random_zoom_2/zoom_matrix/concat:output:0<sequential_32/random_zoom_2/transform/strided_slice:output:09sequential_32/random_zoom_2/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
;sequential_32/random_flip_2/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
;sequential_32/random_flip_2/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ï
:sequential_32/random_flip_2/stateful_uniform_full_int/ProdProdDsequential_32/random_flip_2/stateful_uniform_full_int/shape:output:0Dsequential_32/random_flip_2/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: ~
<sequential_32/random_flip_2/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :¹
<sequential_32/random_flip_2/stateful_uniform_full_int/Cast_1CastCsequential_32/random_flip_2/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ê
Dsequential_32/random_flip_2/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipMsequential_32_random_flip_2_stateful_uniform_full_int_rngreadandskip_resourceEsequential_32/random_flip_2/stateful_uniform_full_int/Cast/x:output:0@sequential_32/random_flip_2/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
Isequential_32/random_flip_2/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ksequential_32/random_flip_2/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ksequential_32/random_flip_2/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
Csequential_32/random_flip_2/stateful_uniform_full_int/strided_sliceStridedSliceLsequential_32/random_flip_2/stateful_uniform_full_int/RngReadAndSkip:value:0Rsequential_32/random_flip_2/stateful_uniform_full_int/strided_slice/stack:output:0Tsequential_32/random_flip_2/stateful_uniform_full_int/strided_slice/stack_1:output:0Tsequential_32/random_flip_2/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskÇ
=sequential_32/random_flip_2/stateful_uniform_full_int/BitcastBitcastLsequential_32/random_flip_2/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Ksequential_32/random_flip_2/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Msequential_32/random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Msequential_32/random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
Esequential_32/random_flip_2/stateful_uniform_full_int/strided_slice_1StridedSliceLsequential_32/random_flip_2/stateful_uniform_full_int/RngReadAndSkip:value:0Tsequential_32/random_flip_2/stateful_uniform_full_int/strided_slice_1/stack:output:0Vsequential_32/random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Vsequential_32/random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ë
?sequential_32/random_flip_2/stateful_uniform_full_int/Bitcast_1BitcastNsequential_32/random_flip_2/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0{
9sequential_32/random_flip_2/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
5sequential_32/random_flip_2/stateful_uniform_full_intStatelessRandomUniformFullIntV2Dsequential_32/random_flip_2/stateful_uniform_full_int/shape:output:0Hsequential_32/random_flip_2/stateful_uniform_full_int/Bitcast_1:output:0Fsequential_32/random_flip_2/stateful_uniform_full_int/Bitcast:output:0Bsequential_32/random_flip_2/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	p
&sequential_32/random_flip_2/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ì
!sequential_32/random_flip_2/stackPack>sequential_32/random_flip_2/stateful_uniform_full_int:output:0/sequential_32/random_flip_2/zeros_like:output:0*
N*
T0	*
_output_shapes

:
/sequential_32/random_flip_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1sequential_32/random_flip_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
1sequential_32/random_flip_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
)sequential_32/random_flip_2/strided_sliceStridedSlice*sequential_32/random_flip_2/stack:output:08sequential_32/random_flip_2/strided_slice/stack:output:0:sequential_32/random_flip_2/strided_slice/stack_1:output:0:sequential_32/random_flip_2/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskÃ
Osequential_32/random_flip_2/stateless_random_flip_left_right/control_dependencyIdentityUsequential_32/random_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*S
_classI
GEloc:@sequential_32/random_zoom_2/transform/ImageProjectiveTransformV3*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Ê
Bsequential_32/random_flip_2/stateless_random_flip_left_right/ShapeShapeXsequential_32/random_flip_2/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:
Psequential_32/random_flip_2/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Rsequential_32/random_flip_2/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Rsequential_32/random_flip_2/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Jsequential_32/random_flip_2/stateless_random_flip_left_right/strided_sliceStridedSliceKsequential_32/random_flip_2/stateless_random_flip_left_right/Shape:output:0Ysequential_32/random_flip_2/stateless_random_flip_left_right/strided_slice/stack:output:0[sequential_32/random_flip_2/stateless_random_flip_left_right/strided_slice/stack_1:output:0[sequential_32/random_flip_2/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskæ
[sequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/shapePackSsequential_32/random_flip_2/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
Ysequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ysequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?è
rsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter2sequential_32/random_flip_2/strided_slice:output:0* 
_output_shapes
::´
rsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
nsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2dsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0xsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0|sequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0{sequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
Ysequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/subSubbsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/max:output:0bsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: æ
Ysequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/mulMulwsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0]sequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
Usequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniformAddV2]sequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0bsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Lsequential_32/random_flip_2/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Lsequential_32/random_flip_2/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Lsequential_32/random_flip_2/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ú
Jsequential_32/random_flip_2/stateless_random_flip_left_right/Reshape/shapePackSsequential_32/random_flip_2/stateless_random_flip_left_right/strided_slice:output:0Usequential_32/random_flip_2/stateless_random_flip_left_right/Reshape/shape/1:output:0Usequential_32/random_flip_2/stateless_random_flip_left_right/Reshape/shape/2:output:0Usequential_32/random_flip_2/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¹
Dsequential_32/random_flip_2/stateless_random_flip_left_right/ReshapeReshapeYsequential_32/random_flip_2/stateless_random_flip_left_right/stateless_random_uniform:z:0Ssequential_32/random_flip_2/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
Bsequential_32/random_flip_2/stateless_random_flip_left_right/RoundRoundMsequential_32/random_flip_2/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ksequential_32/random_flip_2/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¿
Fsequential_32/random_flip_2/stateless_random_flip_left_right/ReverseV2	ReverseV2Xsequential_32/random_flip_2/stateless_random_flip_left_right/control_dependency:output:0Tsequential_32/random_flip_2/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
@sequential_32/random_flip_2/stateless_random_flip_left_right/mulMulFsequential_32/random_flip_2/stateless_random_flip_left_right/Round:y:0Osequential_32/random_flip_2/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
Bsequential_32/random_flip_2/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
@sequential_32/random_flip_2/stateless_random_flip_left_right/subSubKsequential_32/random_flip_2/stateless_random_flip_left_right/sub/x:output:0Fsequential_32/random_flip_2/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Bsequential_32/random_flip_2/stateless_random_flip_left_right/mul_1MulDsequential_32/random_flip_2/stateless_random_flip_left_right/sub:z:0Xsequential_32/random_flip_2/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
@sequential_32/random_flip_2/stateless_random_flip_left_right/addAddV2Dsequential_32/random_flip_2/stateless_random_flip_left_right/mul:z:0Fsequential_32/random_flip_2/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
=sequential_32/random_flip_2/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
=sequential_32/random_flip_2/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: õ
<sequential_32/random_flip_2/stateful_uniform_full_int_1/ProdProdFsequential_32/random_flip_2/stateful_uniform_full_int_1/shape:output:0Fsequential_32/random_flip_2/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: 
>sequential_32/random_flip_2/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :½
>sequential_32/random_flip_2/stateful_uniform_full_int_1/Cast_1CastEsequential_32/random_flip_2/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
Fsequential_32/random_flip_2/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipMsequential_32_random_flip_2_stateful_uniform_full_int_rngreadandskip_resourceGsequential_32/random_flip_2/stateful_uniform_full_int_1/Cast/x:output:0Bsequential_32/random_flip_2/stateful_uniform_full_int_1/Cast_1:y:0E^sequential_32/random_flip_2/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
Ksequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Msequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Msequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
Esequential_32/random_flip_2/stateful_uniform_full_int_1/strided_sliceStridedSliceNsequential_32/random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip:value:0Tsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice/stack:output:0Vsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Vsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskË
?sequential_32/random_flip_2/stateful_uniform_full_int_1/BitcastBitcastNsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Msequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Osequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Osequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
Gsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice_1StridedSliceNsequential_32/random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip:value:0Vsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Xsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Xsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ï
Asequential_32/random_flip_2/stateful_uniform_full_int_1/Bitcast_1BitcastPsequential_32/random_flip_2/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;sequential_32/random_flip_2/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :§
7sequential_32/random_flip_2/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Fsequential_32/random_flip_2/stateful_uniform_full_int_1/shape:output:0Jsequential_32/random_flip_2/stateful_uniform_full_int_1/Bitcast_1:output:0Hsequential_32/random_flip_2/stateful_uniform_full_int_1/Bitcast:output:0Dsequential_32/random_flip_2/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	r
(sequential_32/random_flip_2/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R Ò
#sequential_32/random_flip_2/stack_1Pack@sequential_32/random_flip_2/stateful_uniform_full_int_1:output:01sequential_32/random_flip_2/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
1sequential_32/random_flip_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
3sequential_32/random_flip_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
3sequential_32/random_flip_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
+sequential_32/random_flip_2/strided_slice_1StridedSlice,sequential_32/random_flip_2/stack_1:output:0:sequential_32/random_flip_2/strided_slice_1/stack:output:0<sequential_32/random_flip_2/strided_slice_1/stack_1:output:0<sequential_32/random_flip_2/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask¯
Lsequential_32/random_flip_2/stateless_random_flip_up_down/control_dependencyIdentityDsequential_32/random_flip_2/stateless_random_flip_left_right/add:z:0*
T0*S
_classI
GEloc:@sequential_32/random_flip_2/stateless_random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Ä
?sequential_32/random_flip_2/stateless_random_flip_up_down/ShapeShapeUsequential_32/random_flip_2/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:
Msequential_32/random_flip_2/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Osequential_32/random_flip_2/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Osequential_32/random_flip_2/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ó
Gsequential_32/random_flip_2/stateless_random_flip_up_down/strided_sliceStridedSliceHsequential_32/random_flip_2/stateless_random_flip_up_down/Shape:output:0Vsequential_32/random_flip_2/stateless_random_flip_up_down/strided_slice/stack:output:0Xsequential_32/random_flip_2/stateless_random_flip_up_down/strided_slice/stack_1:output:0Xsequential_32/random_flip_2/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskà
Xsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/shapePackPsequential_32/random_flip_2/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
Vsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Vsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ç
osequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter4sequential_32/random_flip_2/strided_slice_1:output:0* 
_output_shapes
::±
osequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :û
ksequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2asequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0usequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ysequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
Vsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/subSub_sequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/max:output:0_sequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ý
Vsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/mulMultsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Zsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
Rsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniformAddV2Zsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0_sequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Isequential_32/random_flip_2/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Isequential_32/random_flip_2/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Isequential_32/random_flip_2/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ë
Gsequential_32/random_flip_2/stateless_random_flip_up_down/Reshape/shapePackPsequential_32/random_flip_2/stateless_random_flip_up_down/strided_slice:output:0Rsequential_32/random_flip_2/stateless_random_flip_up_down/Reshape/shape/1:output:0Rsequential_32/random_flip_2/stateless_random_flip_up_down/Reshape/shape/2:output:0Rsequential_32/random_flip_2/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:°
Asequential_32/random_flip_2/stateless_random_flip_up_down/ReshapeReshapeVsequential_32/random_flip_2/stateless_random_flip_up_down/stateless_random_uniform:z:0Psequential_32/random_flip_2/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
?sequential_32/random_flip_2/stateless_random_flip_up_down/RoundRoundJsequential_32/random_flip_2/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hsequential_32/random_flip_2/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¶
Csequential_32/random_flip_2/stateless_random_flip_up_down/ReverseV2	ReverseV2Usequential_32/random_flip_2/stateless_random_flip_up_down/control_dependency:output:0Qsequential_32/random_flip_2/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
=sequential_32/random_flip_2/stateless_random_flip_up_down/mulMulCsequential_32/random_flip_2/stateless_random_flip_up_down/Round:y:0Lsequential_32/random_flip_2/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
?sequential_32/random_flip_2/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
=sequential_32/random_flip_2/stateless_random_flip_up_down/subSubHsequential_32/random_flip_2/stateless_random_flip_up_down/sub/x:output:0Csequential_32/random_flip_2/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?sequential_32/random_flip_2/stateless_random_flip_up_down/mul_1MulAsequential_32/random_flip_2/stateless_random_flip_up_down/sub:z:0Usequential_32/random_flip_2/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
=sequential_32/random_flip_2/stateless_random_flip_up_down/addAddV2Asequential_32/random_flip_2/stateless_random_flip_up_down/mul:z:0Csequential_32/random_flip_2/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ê
conv2d_91/Conv2DConv2DAsequential_32/random_flip_2/stateless_random_flip_up_down/add:z:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
paddingSAME*
strides

 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´n
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´®
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ*
ksize
*
paddingVALID*
strides

conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0È
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
paddingSAME*
strides

 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ l
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ ®
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- *
ksize
*
paddingVALID*
strides

conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0È
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
paddingSAME*
strides

 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@l
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@®
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
a
flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  
flatten_28/ReshapeReshape!max_pooling2d_93/MaxPool:output:0flatten_28/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0
dense_62/MatMulMatMulflatten_28/Reshape:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_62/TanhTanhdense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_63/MatMulMatMuldense_62/Tanh:y:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_63/SoftmaxSoftmaxdense_63/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_63/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
NoOpNoOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOpE^sequential_32/random_flip_2/stateful_uniform_full_int/RngReadAndSkipG^sequential_32/random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip@^sequential_32/random_rotation_2/stateful_uniform/RngReadAndSkip<^sequential_32/random_zoom_2/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : : : : 2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2
Dsequential_32/random_flip_2/stateful_uniform_full_int/RngReadAndSkipDsequential_32/random_flip_2/stateful_uniform_full_int/RngReadAndSkip2
Fsequential_32/random_flip_2/stateful_uniform_full_int_1/RngReadAndSkipFsequential_32/random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip2
?sequential_32/random_rotation_2/stateful_uniform/RngReadAndSkip?sequential_32/random_rotation_2/stateful_uniform/RngReadAndSkip2z
;sequential_32/random_zoom_2/stateful_uniform/RngReadAndSkip;sequential_32/random_zoom_2/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Ã

(__inference_dense_63_layer_call_fn_87866

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_63_layer_call_and_return_conditional_losses_86610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

)__inference_conv2d_93_layer_call_fn_87805

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_93_layer_call_and_return_conditional_losses_86567w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ-- : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- 
 
_user_specified_nameinputs
ò


-__inference_sequential_33_layer_call_fn_86640
sequential_32_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ò
	unknown_6:	
	unknown_7:	
	unknown_8:
identity¢StatefulPartitionedCallÒ
StatefulPartitionedCallStatefulPartitionedCallsequential_32_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_33_layer_call_and_return_conditional_losses_86617o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
-
_user_specified_namesequential_32_input
úÓ

H__inference_sequential_32_layer_call_and_return_conditional_losses_87736

inputsH
:random_rotation_2_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_2_stateful_uniform_rngreadandskip_resource:	M
?random_flip_2_stateful_uniform_full_int_rngreadandskip_resource:	
identity¢6random_flip_2/stateful_uniform_full_int/RngReadAndSkip¢8random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip¢1random_rotation_2/stateful_uniform/RngReadAndSkip¢-random_zoom_2/stateful_uniform/RngReadAndSkipM
random_rotation_2/ShapeShapeinputs*
T0*
_output_shapes
:o
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ|
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿs
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ|
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿs
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿k
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?r
(random_rotation_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
'random_rotation_2/stateful_uniform/ProdProd1random_rotation_2/stateful_uniform/shape:output:01random_rotation_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
)random_rotation_2/stateful_uniform/Cast_1Cast0random_rotation_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: þ
1random_rotation_2/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_2_stateful_uniform_rngreadandskip_resource2random_rotation_2/stateful_uniform/Cast/x:output:0-random_rotation_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:
6random_rotation_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8random_rotation_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8random_rotation_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0random_rotation_2/stateful_uniform/strided_sliceStridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0?random_rotation_2/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask¡
*random_rotation_2/stateful_uniform/BitcastBitcast9random_rotation_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
8random_rotation_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ü
2random_rotation_2/stateful_uniform/strided_slice_1StridedSlice9random_rotation_2/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_2/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:¥
,random_rotation_2/stateful_uniform/Bitcast_1Bitcast;random_rotation_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
?random_rotation_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :å
;random_rotation_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_2/stateful_uniform/shape:output:05random_rotation_2/stateful_uniform/Bitcast_1:output:03random_rotation_2/stateful_uniform/Bitcast:output:0Hrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: Í
&random_rotation_2/stateful_uniform/mulMulDrandom_rotation_2/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
"random_rotation_2/stateful_uniformAddV2*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¡
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ²
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ´
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Å
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¡
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ¶
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ¶
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @É
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:û
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ²
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ù
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ò
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
!random_rotation_2/transform/ShapeShapeinputs*
T0*
_output_shapes
:y
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    é
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs1random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
random_zoom_2/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:k
!random_zoom_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#random_zoom_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#random_zoom_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_2/strided_sliceStridedSlicerandom_zoom_2/Shape:output:0*random_zoom_2/strided_slice/stack:output:0,random_zoom_2/strided_slice/stack_1:output:0,random_zoom_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
#random_zoom_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿx
%random_zoom_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿo
%random_zoom_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_2/strided_slice_1StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_1/stack:output:0.random_zoom_2/strided_slice_1/stack_1:output:0.random_zoom_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
random_zoom_2/CastCast&random_zoom_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: v
#random_zoom_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿx
%random_zoom_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%random_zoom_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom_2/strided_slice_2StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_2/stack:output:0.random_zoom_2/strided_slice_2/stack_1:output:0.random_zoom_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
random_zoom_2/Cast_1Cast&random_zoom_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&random_zoom_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :±
$random_zoom_2/stateful_uniform/shapePack$random_zoom_2/strided_slice:output:0/random_zoom_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:g
"random_zoom_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?g
"random_zoom_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌ?n
$random_zoom_2/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ª
#random_zoom_2/stateful_uniform/ProdProd-random_zoom_2/stateful_uniform/shape:output:0-random_zoom_2/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_2/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
%random_zoom_2/stateful_uniform/Cast_1Cast,random_zoom_2/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: î
-random_zoom_2/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_2_stateful_uniform_rngreadandskip_resource.random_zoom_2/stateful_uniform/Cast/x:output:0)random_zoom_2/stateful_uniform/Cast_1:y:0*
_output_shapes
:|
2random_zoom_2/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4random_zoom_2/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom_2/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
,random_zoom_2/stateful_uniform/strided_sliceStridedSlice5random_zoom_2/stateful_uniform/RngReadAndSkip:value:0;random_zoom_2/stateful_uniform/strided_slice/stack:output:0=random_zoom_2/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_2/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
&random_zoom_2/stateful_uniform/BitcastBitcast5random_zoom_2/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_2/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_2/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_2/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:è
.random_zoom_2/stateful_uniform/strided_slice_1StridedSlice5random_zoom_2/stateful_uniform/RngReadAndSkip:value:0=random_zoom_2/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_2/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_2/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
(random_zoom_2/stateful_uniform/Bitcast_1Bitcast7random_zoom_2/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_2/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Õ
7random_zoom_2/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_2/stateful_uniform/shape:output:01random_zoom_2/stateful_uniform/Bitcast_1:output:0/random_zoom_2/stateful_uniform/Bitcast:output:0Drandom_zoom_2/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
"random_zoom_2/stateful_uniform/subSub+random_zoom_2/stateful_uniform/max:output:0+random_zoom_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: Å
"random_zoom_2/stateful_uniform/mulMul@random_zoom_2/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
random_zoom_2/stateful_uniformAddV2&random_zoom_2/stateful_uniform/mul:z:0+random_zoom_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
random_zoom_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ç
random_zoom_2/concatConcatV2"random_zoom_2/stateful_uniform:z:0"random_zoom_2/stateful_uniform:z:0"random_zoom_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
random_zoom_2/zoom_matrix/ShapeShaperandom_zoom_2/concat:output:0*
T0*
_output_shapes
:w
-random_zoom_2/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/random_zoom_2/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_zoom_2/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'random_zoom_2/zoom_matrix/strided_sliceStridedSlice(random_zoom_2/zoom_matrix/Shape:output:06random_zoom_2/zoom_matrix/strided_slice/stack:output:08random_zoom_2/zoom_matrix/strided_slice/stack_1:output:08random_zoom_2/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_zoom_2/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom_2/zoom_matrix/subSubrandom_zoom_2/Cast_1:y:0(random_zoom_2/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_2/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
!random_zoom_2/zoom_matrix/truedivRealDiv!random_zoom_2/zoom_matrix/sub:z:0,random_zoom_2/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
/random_zoom_2/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
1random_zoom_2/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_2/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_2/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_2/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¸
random_zoom_2/zoom_matrix/sub_1Sub*random_zoom_2/zoom_matrix/sub_1/x:output:02random_zoom_2/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
random_zoom_2/zoom_matrix/mulMul%random_zoom_2/zoom_matrix/truediv:z:0#random_zoom_2/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!random_zoom_2/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom_2/zoom_matrix/sub_2Subrandom_zoom_2/Cast:y:0*random_zoom_2/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_2/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @¤
#random_zoom_2/zoom_matrix/truediv_1RealDiv#random_zoom_2/zoom_matrix/sub_2:z:0.random_zoom_2/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
/random_zoom_2/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_2/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_2/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_2/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_2/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¸
random_zoom_2/zoom_matrix/sub_3Sub*random_zoom_2/zoom_matrix/sub_3/x:output:02random_zoom_2/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
random_zoom_2/zoom_matrix/mul_1Mul'random_zoom_2/zoom_matrix/truediv_1:z:0#random_zoom_2/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/random_zoom_2/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
1random_zoom_2/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_2/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_2/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_2/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Á
&random_zoom_2/zoom_matrix/zeros/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:01random_zoom_2/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom_2/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    º
random_zoom_2/zoom_matrix/zerosFill/random_zoom_2/zoom_matrix/zeros/packed:output:0.random_zoom_2/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*random_zoom_2/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Å
(random_zoom_2/zoom_matrix/zeros_1/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_2/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!random_zoom_2/zoom_matrix/zeros_1Fill1random_zoom_2/zoom_matrix/zeros_1/packed:output:00random_zoom_2/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/random_zoom_2/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_2/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_2/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_2/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_2/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Å
(random_zoom_2/zoom_matrix/zeros_2/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_2/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    À
!random_zoom_2/zoom_matrix/zeros_2Fill1random_zoom_2/zoom_matrix/zeros_2/packed:output:00random_zoom_2/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%random_zoom_2/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :É
 random_zoom_2/zoom_matrix/concatConcatV22random_zoom_2/zoom_matrix/strided_slice_3:output:0(random_zoom_2/zoom_matrix/zeros:output:0!random_zoom_2/zoom_matrix/mul:z:0*random_zoom_2/zoom_matrix/zeros_1:output:02random_zoom_2/zoom_matrix/strided_slice_4:output:0#random_zoom_2/zoom_matrix/mul_1:z:0*random_zoom_2/zoom_matrix/zeros_2:output:0.random_zoom_2/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
random_zoom_2/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:u
+random_zoom_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
%random_zoom_2/transform/strided_sliceStridedSlice&random_zoom_2/transform/Shape:output:04random_zoom_2/transform/strided_slice/stack:output:06random_zoom_2/transform/strided_slice/stack_1:output:06random_zoom_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
"random_zoom_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
2random_zoom_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_2/zoom_matrix/concat:output:0.random_zoom_2/transform/strided_slice:output:0+random_zoom_2/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARw
-random_flip_2/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip_2/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Å
,random_flip_2/stateful_uniform_full_int/ProdProd6random_flip_2/stateful_uniform_full_int/shape:output:06random_flip_2/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: p
.random_flip_2/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
.random_flip_2/stateful_uniform_full_int/Cast_1Cast5random_flip_2/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
6random_flip_2/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip?random_flip_2_stateful_uniform_full_int_rngreadandskip_resource7random_flip_2/stateful_uniform_full_int/Cast/x:output:02random_flip_2/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
;random_flip_2/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=random_flip_2/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=random_flip_2/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5random_flip_2/stateful_uniform_full_int/strided_sliceStridedSlice>random_flip_2/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip_2/stateful_uniform_full_int/strided_slice/stack:output:0Frandom_flip_2/stateful_uniform_full_int/strided_slice/stack_1:output:0Frandom_flip_2/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask«
/random_flip_2/stateful_uniform_full_int/BitcastBitcast>random_flip_2/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
=random_flip_2/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?random_flip_2/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
7random_flip_2/stateful_uniform_full_int/strided_slice_1StridedSlice>random_flip_2/stateful_uniform_full_int/RngReadAndSkip:value:0Frandom_flip_2/stateful_uniform_full_int/strided_slice_1/stack:output:0Hrandom_flip_2/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Hrandom_flip_2/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:¯
1random_flip_2/stateful_uniform_full_int/Bitcast_1Bitcast@random_flip_2/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip_2/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :×
'random_flip_2/stateful_uniform_full_intStatelessRandomUniformFullIntV26random_flip_2/stateful_uniform_full_int/shape:output:0:random_flip_2/stateful_uniform_full_int/Bitcast_1:output:08random_flip_2/stateful_uniform_full_int/Bitcast:output:04random_flip_2/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip_2/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ¢
random_flip_2/stackPack0random_flip_2/stateful_uniform_full_int:output:0!random_flip_2/zeros_like:output:0*
N*
T0	*
_output_shapes

:r
!random_flip_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ½
random_flip_2/strided_sliceStridedSlicerandom_flip_2/stack:output:0*random_flip_2/strided_slice/stack:output:0,random_flip_2/strided_slice/stack_1:output:0,random_flip_2/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
Arandom_flip_2/stateless_random_flip_left_right/control_dependencyIdentityGrandom_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*E
_class;
97loc:@random_zoom_2/transform/ImageProjectiveTransformV3*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´®
4random_flip_2/stateless_random_flip_left_right/ShapeShapeJrandom_flip_2/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:
Brandom_flip_2/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Drandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Drandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
<random_flip_2/stateless_random_flip_left_right/strided_sliceStridedSlice=random_flip_2/stateless_random_flip_left_right/Shape:output:0Krandom_flip_2/stateless_random_flip_left_right/strided_slice/stack:output:0Mrandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_1:output:0Mrandom_flip_2/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÊ
Mrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/shapePackErandom_flip_2/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ì
drandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip_2/strided_slice:output:0* 
_output_shapes
::¦
drandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ä
`random_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Vrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0jrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0nrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0mrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/subSubTrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Trandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ¼
Krandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/mulMulirandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Orandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
Grandom_flip_2/stateless_random_flip_left_right/stateless_random_uniformAddV2Orandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Trandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
>random_flip_2/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
<random_flip_2/stateless_random_flip_left_right/Reshape/shapePackErandom_flip_2/stateless_random_flip_left_right/strided_slice:output:0Grandom_flip_2/stateless_random_flip_left_right/Reshape/shape/1:output:0Grandom_flip_2/stateless_random_flip_left_right/Reshape/shape/2:output:0Grandom_flip_2/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
6random_flip_2/stateless_random_flip_left_right/ReshapeReshapeKrandom_flip_2/stateless_random_flip_left_right/stateless_random_uniform:z:0Erandom_flip_2/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
4random_flip_2/stateless_random_flip_left_right/RoundRound?random_flip_2/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=random_flip_2/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
8random_flip_2/stateless_random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_2/stateless_random_flip_left_right/control_dependency:output:0Frandom_flip_2/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´ò
2random_flip_2/stateless_random_flip_left_right/mulMul8random_flip_2/stateless_random_flip_left_right/Round:y:0Arandom_flip_2/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´y
4random_flip_2/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ì
2random_flip_2/stateless_random_flip_left_right/subSub=random_flip_2/stateless_random_flip_left_right/sub/x:output:08random_flip_2/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
4random_flip_2/stateless_random_flip_left_right/mul_1Mul6random_flip_2/stateless_random_flip_left_right/sub:z:0Jrandom_flip_2/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´é
2random_flip_2/stateless_random_flip_left_right/addAddV26random_flip_2/stateless_random_flip_left_right/mul:z:08random_flip_2/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´y
/random_flip_2/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:y
/random_flip_2/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ë
.random_flip_2/stateful_uniform_full_int_1/ProdProd8random_flip_2/stateful_uniform_full_int_1/shape:output:08random_flip_2/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: r
0random_flip_2/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :¡
0random_flip_2/stateful_uniform_full_int_1/Cast_1Cast7random_flip_2/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ñ
8random_flip_2/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip?random_flip_2_stateful_uniform_full_int_rngreadandskip_resource9random_flip_2/stateful_uniform_full_int_1/Cast/x:output:04random_flip_2/stateful_uniform_full_int_1/Cast_1:y:07^random_flip_2/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
=random_flip_2/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?random_flip_2/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?random_flip_2/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
7random_flip_2/stateful_uniform_full_int_1/strided_sliceStridedSlice@random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip_2/stateful_uniform_full_int_1/strided_slice/stack:output:0Hrandom_flip_2/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Hrandom_flip_2/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask¯
1random_flip_2/stateful_uniform_full_int_1/BitcastBitcast@random_flip_2/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
?random_flip_2/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Arandom_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Arandom_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
9random_flip_2/stateful_uniform_full_int_1/strided_slice_1StridedSlice@random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip:value:0Hrandom_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Jrandom_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Jrandom_flip_2/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:³
3random_flip_2/stateful_uniform_full_int_1/Bitcast_1BitcastBrandom_flip_2/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-random_flip_2/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :á
)random_flip_2/stateful_uniform_full_int_1StatelessRandomUniformFullIntV28random_flip_2/stateful_uniform_full_int_1/shape:output:0<random_flip_2/stateful_uniform_full_int_1/Bitcast_1:output:0:random_flip_2/stateful_uniform_full_int_1/Bitcast:output:06random_flip_2/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	d
random_flip_2/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¨
random_flip_2/stack_1Pack2random_flip_2/stateful_uniform_full_int_1:output:0#random_flip_2/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:t
#random_flip_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%random_flip_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%random_flip_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
random_flip_2/strided_slice_1StridedSlicerandom_flip_2/stack_1:output:0,random_flip_2/strided_slice_1/stack:output:0.random_flip_2/strided_slice_1/stack_1:output:0.random_flip_2/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
>random_flip_2/stateless_random_flip_up_down/control_dependencyIdentity6random_flip_2/stateless_random_flip_left_right/add:z:0*
T0*E
_class;
97loc:@random_flip_2/stateless_random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´¨
1random_flip_2/stateless_random_flip_up_down/ShapeShapeGrandom_flip_2/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:
?random_flip_2/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Arandom_flip_2/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Arandom_flip_2/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9random_flip_2/stateless_random_flip_up_down/strided_sliceStridedSlice:random_flip_2/stateless_random_flip_up_down/Shape:output:0Hrandom_flip_2/stateless_random_flip_up_down/strided_slice/stack:output:0Jrandom_flip_2/stateless_random_flip_up_down/strided_slice/stack_1:output:0Jrandom_flip_2/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskÄ
Jrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/shapePackBrandom_flip_2/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
Hrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Hrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ë
arandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter&random_flip_2/strided_slice_1:output:0* 
_output_shapes
::£
arandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :µ
]random_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Srandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0grandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0krandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0jrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Hrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/subSubQrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Qrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ³
Hrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/mulMulfrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Lrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Drandom_flip_2/stateless_random_flip_up_down/stateless_random_uniformAddV2Lrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Qrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
;random_flip_2/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_2/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_2/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
9random_flip_2/stateless_random_flip_up_down/Reshape/shapePackBrandom_flip_2/stateless_random_flip_up_down/strided_slice:output:0Drandom_flip_2/stateless_random_flip_up_down/Reshape/shape/1:output:0Drandom_flip_2/stateless_random_flip_up_down/Reshape/shape/2:output:0Drandom_flip_2/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
3random_flip_2/stateless_random_flip_up_down/ReshapeReshapeHrandom_flip_2/stateless_random_flip_up_down/stateless_random_uniform:z:0Brandom_flip_2/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
1random_flip_2/stateless_random_flip_up_down/RoundRound<random_flip_2/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:random_flip_2/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
5random_flip_2/stateless_random_flip_up_down/ReverseV2	ReverseV2Grandom_flip_2/stateless_random_flip_up_down/control_dependency:output:0Crandom_flip_2/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´é
/random_flip_2/stateless_random_flip_up_down/mulMul5random_flip_2/stateless_random_flip_up_down/Round:y:0>random_flip_2/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´v
1random_flip_2/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ã
/random_flip_2/stateless_random_flip_up_down/subSub:random_flip_2/stateless_random_flip_up_down/sub/x:output:05random_flip_2/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
1random_flip_2/stateless_random_flip_up_down/mul_1Mul3random_flip_2/stateless_random_flip_up_down/sub:z:0Grandom_flip_2/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´à
/random_flip_2/stateless_random_flip_up_down/addAddV23random_flip_2/stateless_random_flip_up_down/mul:z:05random_flip_2/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
IdentityIdentity3random_flip_2/stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
NoOpNoOp7^random_flip_2/stateful_uniform_full_int/RngReadAndSkip9^random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip2^random_rotation_2/stateful_uniform/RngReadAndSkip.^random_zoom_2/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ´´: : : 2p
6random_flip_2/stateful_uniform_full_int/RngReadAndSkip6random_flip_2/stateful_uniform_full_int/RngReadAndSkip2t
8random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip8random_flip_2/stateful_uniform_full_int_1/RngReadAndSkip2f
1random_rotation_2/stateful_uniform/RngReadAndSkip1random_rotation_2/stateful_uniform/RngReadAndSkip2^
-random_zoom_2/stateful_uniform/RngReadAndSkip-random_zoom_2/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_86485

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_random_flip_2_layer_call_and_return_conditional_losses_86165

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity¢(stateful_uniform_full_int/RngReadAndSkip¢*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ú
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :þ
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Î
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:å
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ë
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´È
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Â
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´¿
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¡
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ã
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskÛ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ç
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¯
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ï
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :¿
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ü
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:â
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´¿
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¹
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´¶
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_87796

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
Ð
H__inference_sequential_32_layer_call_and_return_conditional_losses_86436

inputs%
random_rotation_2_86426:	!
random_zoom_2_86429:	!
random_flip_2_86432:	
identity¢%random_flip_2/StatefulPartitionedCall¢)random_rotation_2/StatefulPartitionedCall¢%random_zoom_2/StatefulPartitionedCallý
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_rotation_2_86426*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_86411
%random_zoom_2/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_2/StatefulPartitionedCall:output:0random_zoom_2_86429*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_86280
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCall.random_zoom_2/StatefulPartitionedCall:output:0random_flip_2_86432*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_86165
IdentityIdentity.random_flip_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Â
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall&^random_zoom_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ´´: : : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall2N
%random_zoom_2/StatefulPartitionedCall%random_zoom_2/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
å
á
H__inference_sequential_32_layer_call_and_return_conditional_losses_86476
random_rotation_2_input%
random_rotation_2_86466:	!
random_zoom_2_86469:	!
random_flip_2_86472:	
identity¢%random_flip_2/StatefulPartitionedCall¢)random_rotation_2/StatefulPartitionedCall¢%random_zoom_2/StatefulPartitionedCall
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCallrandom_rotation_2_inputrandom_rotation_2_86466*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_86411
%random_zoom_2/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_2/StatefulPartitionedCall:output:0random_zoom_2_86469*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_86280
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCall.random_zoom_2/StatefulPartitionedCall:output:0random_flip_2_86472*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_86165
IdentityIdentity.random_flip_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Â
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall&^random_zoom_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ´´: : : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall2N
%random_zoom_2/StatefulPartitionedCall%random_zoom_2/StatefulPartitionedCall:j f
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
1
_user_specified_namerandom_rotation_2_input

h
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_86028

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

ý
D__inference_conv2d_92_layer_call_and_return_conditional_losses_86549

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ
 
_user_specified_nameinputs
Õ
M
1__inference_random_rotation_2_layer_call_fn_87882

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_86028j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Ä
À
-__inference_sequential_32_layer_call_fn_86456
random_rotation_2_input
unknown:	
	unknown_0:	
	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallrandom_rotation_2_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_32_layer_call_and_return_conditional_losses_86436y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ´´: : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
1
_user_specified_namerandom_rotation_2_input

d
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_88027

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_86497

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾W
°
__inference__traced_save_88420
file_prefix/
+savev2_conv2d_91_kernel_read_readvariableop-
)savev2_conv2d_91_bias_read_readvariableop/
+savev2_conv2d_92_kernel_read_readvariableop-
)savev2_conv2d_92_bias_read_readvariableop/
+savev2_conv2d_93_kernel_read_readvariableop-
)savev2_conv2d_93_bias_read_readvariableop.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop.
*savev2_dense_63_kernel_read_readvariableop,
(savev2_dense_63_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop9
5savev2_random_rotation_2_statevar_read_readvariableop	5
1savev2_random_zoom_2_statevar_read_readvariableop	5
1savev2_random_flip_2_statevar_read_readvariableop	6
2savev2_adam_conv2d_91_kernel_m_read_readvariableop4
0savev2_adam_conv2d_91_bias_m_read_readvariableop6
2savev2_adam_conv2d_92_kernel_m_read_readvariableop4
0savev2_adam_conv2d_92_bias_m_read_readvariableop6
2savev2_adam_conv2d_93_kernel_m_read_readvariableop4
0savev2_adam_conv2d_93_bias_m_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableop5
1savev2_adam_dense_63_kernel_m_read_readvariableop3
/savev2_adam_dense_63_bias_m_read_readvariableop6
2savev2_adam_conv2d_91_kernel_v_read_readvariableop4
0savev2_adam_conv2d_91_bias_v_read_readvariableop6
2savev2_adam_conv2d_92_kernel_v_read_readvariableop4
0savev2_adam_conv2d_92_bias_v_read_readvariableop6
2savev2_adam_conv2d_93_kernel_v_read_readvariableop4
0savev2_adam_conv2d_93_bias_v_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableop5
1savev2_adam_dense_63_kernel_v_read_readvariableop3
/savev2_adam_dense_63_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: å
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*
valueB+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÃ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ÷
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_91_kernel_read_readvariableop)savev2_conv2d_91_bias_read_readvariableop+savev2_conv2d_92_kernel_read_readvariableop)savev2_conv2d_92_bias_read_readvariableop+savev2_conv2d_93_kernel_read_readvariableop)savev2_conv2d_93_bias_read_readvariableop*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop*savev2_dense_63_kernel_read_readvariableop(savev2_dense_63_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop5savev2_random_rotation_2_statevar_read_readvariableop1savev2_random_zoom_2_statevar_read_readvariableop1savev2_random_flip_2_statevar_read_readvariableop2savev2_adam_conv2d_91_kernel_m_read_readvariableop0savev2_adam_conv2d_91_bias_m_read_readvariableop2savev2_adam_conv2d_92_kernel_m_read_readvariableop0savev2_adam_conv2d_92_bias_m_read_readvariableop2savev2_adam_conv2d_93_kernel_m_read_readvariableop0savev2_adam_conv2d_93_bias_m_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop1savev2_adam_dense_63_kernel_m_read_readvariableop/savev2_adam_dense_63_bias_m_read_readvariableop2savev2_adam_conv2d_91_kernel_v_read_readvariableop0savev2_adam_conv2d_91_bias_v_read_readvariableop2savev2_adam_conv2d_92_kernel_v_read_readvariableop0savev2_adam_conv2d_92_bias_v_read_readvariableop2savev2_adam_conv2d_93_kernel_v_read_readvariableop0savev2_adam_conv2d_93_bias_v_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableop1savev2_adam_dense_63_kernel_v_read_readvariableop/savev2_adam_dense_63_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+				
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesò
ï: ::: : : @:@:ò::	:: : : : : : : : : :::::: : : @:@:ò::	:::: : : @:@:ò::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:ò:!

_output_shapes	
::%	!

_output_shapes
:	: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:ò:!

_output_shapes	
::%!

_output_shapes
:	:  

_output_shapes
::,!(
&
_output_shapes
:: "

_output_shapes
::,#(
&
_output_shapes
: : $

_output_shapes
: :,%(
&
_output_shapes
: @: &

_output_shapes
:@:''#
!
_output_shapes
:ò:!(

_output_shapes	
::%)!

_output_shapes
:	: *

_output_shapes
::+

_output_shapes
: 

g
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_86509

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

d
H__inference_sequential_32_layer_call_and_return_conditional_losses_87413

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
n
Á
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_88129

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ë
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
×B


 __inference__wrapped_model_86017
sequential_32_inputP
6sequential_33_conv2d_91_conv2d_readvariableop_resource:E
7sequential_33_conv2d_91_biasadd_readvariableop_resource:P
6sequential_33_conv2d_92_conv2d_readvariableop_resource: E
7sequential_33_conv2d_92_biasadd_readvariableop_resource: P
6sequential_33_conv2d_93_conv2d_readvariableop_resource: @E
7sequential_33_conv2d_93_biasadd_readvariableop_resource:@J
5sequential_33_dense_62_matmul_readvariableop_resource:òE
6sequential_33_dense_62_biasadd_readvariableop_resource:	H
5sequential_33_dense_63_matmul_readvariableop_resource:	D
6sequential_33_dense_63_biasadd_readvariableop_resource:
identity¢.sequential_33/conv2d_91/BiasAdd/ReadVariableOp¢-sequential_33/conv2d_91/Conv2D/ReadVariableOp¢.sequential_33/conv2d_92/BiasAdd/ReadVariableOp¢-sequential_33/conv2d_92/Conv2D/ReadVariableOp¢.sequential_33/conv2d_93/BiasAdd/ReadVariableOp¢-sequential_33/conv2d_93/Conv2D/ReadVariableOp¢-sequential_33/dense_62/BiasAdd/ReadVariableOp¢,sequential_33/dense_62/MatMul/ReadVariableOp¢-sequential_33/dense_63/BiasAdd/ReadVariableOp¢,sequential_33/dense_63/MatMul/ReadVariableOp¬
-sequential_33/conv2d_91/Conv2D/ReadVariableOpReadVariableOp6sequential_33_conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ø
sequential_33/conv2d_91/Conv2DConv2Dsequential_32_input5sequential_33/conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
paddingSAME*
strides
¢
.sequential_33/conv2d_91/BiasAdd/ReadVariableOpReadVariableOp7sequential_33_conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ç
sequential_33/conv2d_91/BiasAddBiasAdd'sequential_33/conv2d_91/Conv2D:output:06sequential_33/conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
sequential_33/conv2d_91/ReluRelu(sequential_33/conv2d_91/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Ê
&sequential_33/max_pooling2d_91/MaxPoolMaxPool*sequential_33/conv2d_91/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ*
ksize
*
paddingVALID*
strides
¬
-sequential_33/conv2d_92/Conv2D/ReadVariableOpReadVariableOp6sequential_33_conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ò
sequential_33/conv2d_92/Conv2DConv2D/sequential_33/max_pooling2d_91/MaxPool:output:05sequential_33/conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
paddingSAME*
strides
¢
.sequential_33/conv2d_92/BiasAdd/ReadVariableOpReadVariableOp7sequential_33_conv2d_92_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Å
sequential_33/conv2d_92/BiasAddBiasAdd'sequential_33/conv2d_92/Conv2D:output:06sequential_33/conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ 
sequential_33/conv2d_92/ReluRelu(sequential_33/conv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ Ê
&sequential_33/max_pooling2d_92/MaxPoolMaxPool*sequential_33/conv2d_92/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- *
ksize
*
paddingVALID*
strides
¬
-sequential_33/conv2d_93/Conv2D/ReadVariableOpReadVariableOp6sequential_33_conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ò
sequential_33/conv2d_93/Conv2DConv2D/sequential_33/max_pooling2d_92/MaxPool:output:05sequential_33/conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
paddingSAME*
strides
¢
.sequential_33/conv2d_93/BiasAdd/ReadVariableOpReadVariableOp7sequential_33_conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Å
sequential_33/conv2d_93/BiasAddBiasAdd'sequential_33/conv2d_93/Conv2D:output:06sequential_33/conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@
sequential_33/conv2d_93/ReluRelu(sequential_33/conv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@Ê
&sequential_33/max_pooling2d_93/MaxPoolMaxPool*sequential_33/conv2d_93/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
o
sequential_33/flatten_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  ¹
 sequential_33/flatten_28/ReshapeReshape/sequential_33/max_pooling2d_93/MaxPool:output:0'sequential_33/flatten_28/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò¥
,sequential_33/dense_62/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_62_matmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0»
sequential_33/dense_62/MatMulMatMul)sequential_33/flatten_28/Reshape:output:04sequential_33/dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
-sequential_33/dense_62/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_62_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
sequential_33/dense_62/BiasAddBiasAdd'sequential_33/dense_62/MatMul:product:05sequential_33/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_33/dense_62/TanhTanh'sequential_33/dense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
,sequential_33/dense_63/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_63_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0°
sequential_33/dense_63/MatMulMatMulsequential_33/dense_62/Tanh:y:04sequential_33/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_33/dense_63/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_33/dense_63/BiasAddBiasAdd'sequential_33/dense_63/MatMul:product:05sequential_33/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_33/dense_63/SoftmaxSoftmax'sequential_33/dense_63/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(sequential_33/dense_63/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp/^sequential_33/conv2d_91/BiasAdd/ReadVariableOp.^sequential_33/conv2d_91/Conv2D/ReadVariableOp/^sequential_33/conv2d_92/BiasAdd/ReadVariableOp.^sequential_33/conv2d_92/Conv2D/ReadVariableOp/^sequential_33/conv2d_93/BiasAdd/ReadVariableOp.^sequential_33/conv2d_93/Conv2D/ReadVariableOp.^sequential_33/dense_62/BiasAdd/ReadVariableOp-^sequential_33/dense_62/MatMul/ReadVariableOp.^sequential_33/dense_63/BiasAdd/ReadVariableOp-^sequential_33/dense_63/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2`
.sequential_33/conv2d_91/BiasAdd/ReadVariableOp.sequential_33/conv2d_91/BiasAdd/ReadVariableOp2^
-sequential_33/conv2d_91/Conv2D/ReadVariableOp-sequential_33/conv2d_91/Conv2D/ReadVariableOp2`
.sequential_33/conv2d_92/BiasAdd/ReadVariableOp.sequential_33/conv2d_92/BiasAdd/ReadVariableOp2^
-sequential_33/conv2d_92/Conv2D/ReadVariableOp-sequential_33/conv2d_92/Conv2D/ReadVariableOp2`
.sequential_33/conv2d_93/BiasAdd/ReadVariableOp.sequential_33/conv2d_93/BiasAdd/ReadVariableOp2^
-sequential_33/conv2d_93/Conv2D/ReadVariableOp-sequential_33/conv2d_93/Conv2D/ReadVariableOp2^
-sequential_33/dense_62/BiasAdd/ReadVariableOp-sequential_33/dense_62/BiasAdd/ReadVariableOp2\
,sequential_33/dense_62/MatMul/ReadVariableOp,sequential_33/dense_62/MatMul/ReadVariableOp2^
-sequential_33/dense_63/BiasAdd/ReadVariableOp-sequential_33/dense_63/BiasAdd/ReadVariableOp2\
,sequential_33/dense_63/MatMul/ReadVariableOp,sequential_33/dense_63/MatMul/ReadVariableOp:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
-
_user_specified_namesequential_32_input

ý
D__inference_conv2d_91_layer_call_and_return_conditional_losses_87756

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ´´: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

d
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_86034

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Í
I
-__inference_random_flip_2_layer_call_fn_88134

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_2_layer_call_and_return_conditional_losses_86040j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
n
Á
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_86280

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ò
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ë
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
ò

)__inference_conv2d_91_layer_call_fn_87745

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_91_layer_call_and_return_conditional_losses_86531y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ´´: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

Å
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_86411

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity¢stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿj
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿa
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿj
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ¶
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ø
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ¡
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ´´: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Ë


-__inference_sequential_33_layer_call_fn_86928

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ò
	unknown_6:	
	unknown_7:	
	unknown_8:
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_33_layer_call_and_return_conditional_losses_86617o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_87826

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Í
serving_default¹
]
sequential_32_inputF
%serving_default_sequential_32_input:0ÿÿÿÿÿÿÿÿÿ´´<
dense_630
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ñ
ê
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ñ
layer-0
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
»

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
»

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
»

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer

]iter

^beta_1

_beta_2
	`decay
alearning_ratemÏmÐ+mÑ,mÒ9mÓ:mÔMmÕNmÖUm×VmØvÙvÚ+vÛ,vÜ9vÝ:vÞMvßNvàUváVvâ"
	optimizer
f
0
1
+2
,3
94
:5
M6
N7
U8
V9"
trackable_list_wrapper
f
0
1
+2
,3
94
:5
M6
N7
U8
V9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_33_layer_call_fn_86640
-__inference_sequential_33_layer_call_fn_86928
-__inference_sequential_33_layer_call_fn_86959
-__inference_sequential_33_layer_call_fn_86823À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_33_layer_call_and_return_conditional_losses_87003
H__inference_sequential_33_layer_call_and_return_conditional_losses_87366
H__inference_sequential_33_layer_call_and_return_conditional_losses_86857
H__inference_sequential_33_layer_call_and_return_conditional_losses_86897À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
×BÔ
 __inference__wrapped_model_86017sequential_32_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
gserving_default"
signature_map
¼
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l_random_generator
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s_random_generator
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z_random_generator
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¯
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_32_layer_call_fn_86046
-__inference_sequential_32_layer_call_fn_87398
-__inference_sequential_32_layer_call_fn_87409
-__inference_sequential_32_layer_call_fn_86456À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_32_layer_call_and_return_conditional_losses_87413
H__inference_sequential_32_layer_call_and_return_conditional_losses_87736
H__inference_sequential_32_layer_call_and_return_conditional_losses_86463
H__inference_sequential_32_layer_call_and_return_conditional_losses_86476À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
*:(2conv2d_91/kernel
:2conv2d_91/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_91_layer_call_fn_87745¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_91_layer_call_and_return_conditional_losses_87756¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_91_layer_call_fn_87761¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_87766¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
*:( 2conv2d_92/kernel
: 2conv2d_92/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_92_layer_call_fn_87775¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_92_layer_call_and_return_conditional_losses_87786¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_92_layer_call_fn_87791¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_87796¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
*:( @2conv2d_93/kernel
:@2conv2d_93/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_conv2d_93_layer_call_fn_87805¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_conv2d_93_layer_call_and_return_conditional_losses_87816¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_max_pooling2d_93_layer_call_fn_87821¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_87826¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_flatten_28_layer_call_fn_87831¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_flatten_28_layer_call_and_return_conditional_losses_87837¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
$:"ò2dense_62/kernel
:2dense_62/bias
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_62_layer_call_fn_87846¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_62_layer_call_and_return_conditional_losses_87857¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": 	2dense_63/kernel
:2dense_63/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_63_layer_call_fn_87866¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_63_layer_call_and_return_conditional_losses_87877¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
0
¯0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÖBÓ
#__inference_signature_wrapper_87393sequential_32_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
h	variables
itrainable_variables
jregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
/
¶
_generator"
_generic_user_object
 2
1__inference_random_rotation_2_layer_call_fn_87882
1__inference_random_rotation_2_layer_call_fn_87889´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_87893
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_88011´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
o	variables
ptrainable_variables
qregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
/
¼
_generator"
_generic_user_object
2
-__inference_random_zoom_2_layer_call_fn_88016
-__inference_random_zoom_2_layer_call_fn_88023´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_88027
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_88129´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
v	variables
wtrainable_variables
xregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
/
Â
_generator"
_generic_user_object
2
-__inference_random_flip_2_layer_call_fn_88134
-__inference_random_flip_2_layer_call_fn_88141´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_random_flip_2_layer_call_and_return_conditional_losses_88145
H__inference_random_flip_2_layer_call_and_return_conditional_losses_88256´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Ãtotal

Äcount
Å	variables
Æ	keras_api"
_tf_keras_metric
c

Çtotal

Ècount
É
_fn_kwargs
Ê	variables
Ë	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
/
Ì
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
/
Í
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
/
Î
_state_var"
_generic_user_object
:  (2total
:  (2count
0
Ã0
Ä1"
trackable_list_wrapper
.
Å	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ç0
È1"
trackable_list_wrapper
.
Ê	variables"
_generic_user_object
&:$	2random_rotation_2/StateVar
": 	2random_zoom_2/StateVar
": 	2random_flip_2/StateVar
/:-2Adam/conv2d_91/kernel/m
!:2Adam/conv2d_91/bias/m
/:- 2Adam/conv2d_92/kernel/m
!: 2Adam/conv2d_92/bias/m
/:- @2Adam/conv2d_93/kernel/m
!:@2Adam/conv2d_93/bias/m
):'ò2Adam/dense_62/kernel/m
!:2Adam/dense_62/bias/m
':%	2Adam/dense_63/kernel/m
 :2Adam/dense_63/bias/m
/:-2Adam/conv2d_91/kernel/v
!:2Adam/conv2d_91/bias/v
/:- 2Adam/conv2d_92/kernel/v
!: 2Adam/conv2d_92/bias/v
/:- @2Adam/conv2d_93/kernel/v
!:@2Adam/conv2d_93/bias/v
):'ò2Adam/dense_62/kernel/v
!:2Adam/dense_62/bias/v
':%	2Adam/dense_63/kernel/v
 :2Adam/dense_63/bias/v®
 __inference__wrapped_model_86017
+,9:MNUVF¢C
<¢9
74
sequential_32_inputÿÿÿÿÿÿÿÿÿ´´
ª "3ª0
.
dense_63"
dense_63ÿÿÿÿÿÿÿÿÿ¸
D__inference_conv2d_91_layer_call_and_return_conditional_losses_87756p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ´´
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 
)__inference_conv2d_91_layer_call_fn_87745c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ´´
ª ""ÿÿÿÿÿÿÿÿÿ´´´
D__inference_conv2d_92_layer_call_and_return_conditional_losses_87786l+,7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿZZ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿZZ 
 
)__inference_conv2d_92_layer_call_fn_87775_+,7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿZZ
ª " ÿÿÿÿÿÿÿÿÿZZ ´
D__inference_conv2d_93_layer_call_and_return_conditional_losses_87816l9:7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ-- 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ--@
 
)__inference_conv2d_93_layer_call_fn_87805_9:7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ-- 
ª " ÿÿÿÿÿÿÿÿÿ--@¦
C__inference_dense_62_layer_call_and_return_conditional_losses_87857_MN1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿò
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
(__inference_dense_62_layer_call_fn_87846RMN1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿò
ª "ÿÿÿÿÿÿÿÿÿ¤
C__inference_dense_63_layer_call_and_return_conditional_losses_87877]UV0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
(__inference_dense_63_layer_call_fn_87866PUV0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ«
E__inference_flatten_28_layer_call_and_return_conditional_losses_87837b7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "'¢$

0ÿÿÿÿÿÿÿÿÿò
 
*__inference_flatten_28_layer_call_fn_87831U7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿòî
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_87766R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_91_layer_call_fn_87761R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_87796R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_92_layer_call_fn_87791R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_87826R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_93_layer_call_fn_87821R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼
H__inference_random_flip_2_layer_call_and_return_conditional_losses_88145p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 À
H__inference_random_flip_2_layer_call_and_return_conditional_losses_88256tÎ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 
-__inference_random_flip_2_layer_call_fn_88134c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 
ª ""ÿÿÿÿÿÿÿÿÿ´´
-__inference_random_flip_2_layer_call_fn_88141gÎ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p
ª ""ÿÿÿÿÿÿÿÿÿ´´À
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_87893p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 Ä
L__inference_random_rotation_2_layer_call_and_return_conditional_losses_88011tÌ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 
1__inference_random_rotation_2_layer_call_fn_87882c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 
ª ""ÿÿÿÿÿÿÿÿÿ´´
1__inference_random_rotation_2_layer_call_fn_87889gÌ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p
ª ""ÿÿÿÿÿÿÿÿÿ´´¼
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_88027p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 À
H__inference_random_zoom_2_layer_call_and_return_conditional_losses_88129tÍ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 
-__inference_random_zoom_2_layer_call_fn_88016c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 
ª ""ÿÿÿÿÿÿÿÿÿ´´
-__inference_random_zoom_2_layer_call_fn_88023gÍ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p
ª ""ÿÿÿÿÿÿÿÿÿ´´Ò
H__inference_sequential_32_layer_call_and_return_conditional_losses_86463R¢O
H¢E
;8
random_rotation_2_inputÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 Ú
H__inference_sequential_32_layer_call_and_return_conditional_losses_86476ÌÍÎR¢O
H¢E
;8
random_rotation_2_inputÿÿÿÿÿÿÿÿÿ´´
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 À
H__inference_sequential_32_layer_call_and_return_conditional_losses_87413tA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 È
H__inference_sequential_32_layer_call_and_return_conditional_losses_87736|ÌÍÎA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 ©
-__inference_sequential_32_layer_call_fn_86046xR¢O
H¢E
;8
random_rotation_2_inputÿÿÿÿÿÿÿÿÿ´´
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ´´²
-__inference_sequential_32_layer_call_fn_86456ÌÍÎR¢O
H¢E
;8
random_rotation_2_inputÿÿÿÿÿÿÿÿÿ´´
p

 
ª ""ÿÿÿÿÿÿÿÿÿ´´
-__inference_sequential_32_layer_call_fn_87398gA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ´´ 
-__inference_sequential_32_layer_call_fn_87409oÌÍÎA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p

 
ª ""ÿÿÿÿÿÿÿÿÿ´´Ð
H__inference_sequential_33_layer_call_and_return_conditional_losses_86857
+,9:MNUVN¢K
D¢A
74
sequential_32_inputÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ö
H__inference_sequential_33_layer_call_and_return_conditional_losses_86897ÌÍÎ+,9:MNUVN¢K
D¢A
74
sequential_32_inputÿÿÿÿÿÿÿÿÿ´´
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
H__inference_sequential_33_layer_call_and_return_conditional_losses_87003v
+,9:MNUVA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 È
H__inference_sequential_33_layer_call_and_return_conditional_losses_87366|ÌÍÎ+,9:MNUVA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 §
-__inference_sequential_33_layer_call_fn_86640v
+,9:MNUVN¢K
D¢A
74
sequential_32_inputÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "ÿÿÿÿÿÿÿÿÿ­
-__inference_sequential_33_layer_call_fn_86823|ÌÍÎ+,9:MNUVN¢K
D¢A
74
sequential_32_inputÿÿÿÿÿÿÿÿÿ´´
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_33_layer_call_fn_86928i
+,9:MNUVA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
-__inference_sequential_33_layer_call_fn_86959oÌÍÎ+,9:MNUVA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
#__inference_signature_wrapper_87393 
+,9:MNUV]¢Z
¢ 
SªP
N
sequential_32_input74
sequential_32_inputÿÿÿÿÿÿÿÿÿ´´"3ª0
.
dense_63"
dense_63ÿÿÿÿÿÿÿÿÿ