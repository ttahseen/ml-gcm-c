é
Žţ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

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
d
Shape

input"T&
output"out_typeíout_type"	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
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
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
°
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48Ťý
Ś
current_learning_rateVarHandleOp*
_output_shapes
: *&

debug_namecurrent_learning_rate/*
dtype0*
shape: *&
shared_namecurrent_learning_rate
w
)current_learning_rate/Read/ReadVariableOpReadVariableOpcurrent_learning_rate*
_output_shapes
: *
dtype0

	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

dense_output/biasVarHandleOp*
_output_shapes
: *"

debug_namedense_output/bias/*
dtype0*
shape:*"
shared_namedense_output/bias
s
%dense_output/bias/Read/ReadVariableOpReadVariableOpdense_output/bias*
_output_shapes
:*
dtype0
Š
dense_output/kernelVarHandleOp*
_output_shapes
: *$

debug_namedense_output/kernel/*
dtype0*
shape:	*$
shared_namedense_output/kernel
|
'dense_output/kernel/Read/ReadVariableOpReadVariableOpdense_output/kernel*
_output_shapes
:	*
dtype0
Š
gru_1/gru_cell/biasVarHandleOp*
_output_shapes
: *$

debug_namegru_1/gru_cell/bias/*
dtype0*
shape:	*$
shared_namegru_1/gru_cell/bias
|
'gru_1/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru_1/gru_cell/bias*
_output_shapes
:	*
dtype0
Î
gru_1/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *0

debug_name" gru_1/gru_cell/recurrent_kernel/*
dtype0*
shape:
*0
shared_name!gru_1/gru_cell/recurrent_kernel

3gru_1/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru_1/gru_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0
°
gru_1/gru_cell/kernelVarHandleOp*
_output_shapes
: *&

debug_namegru_1/gru_cell/kernel/*
dtype0*
shape:
*&
shared_namegru_1/gru_cell/kernel

)gru_1/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru_1/gru_cell/kernel* 
_output_shapes
:
*
dtype0
Ł
gru/gru_cell/biasVarHandleOp*
_output_shapes
: *"

debug_namegru/gru_cell/bias/*
dtype0*
shape:	*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	*
dtype0
Č
gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *.

debug_name gru/gru_cell/recurrent_kernel/*
dtype0*
shape:
*.
shared_namegru/gru_cell/recurrent_kernel

1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0
Š
gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *$

debug_namegru/gru_cell/kernel/*
dtype0*
shape:	*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	*
dtype0
˘
dense_surface/biasVarHandleOp*
_output_shapes
: *#

debug_namedense_surface/bias/*
dtype0*
shape:*#
shared_namedense_surface/bias
v
&dense_surface/bias/Read/ReadVariableOpReadVariableOpdense_surface/bias*
_output_shapes	
:*
dtype0
­
dense_surface/kernelVarHandleOp*
_output_shapes
: *%

debug_namedense_surface/kernel/*
dtype0*
shape:
*%
shared_namedense_surface/kernel

(dense_surface/kernel/Read/ReadVariableOpReadVariableOpdense_surface/kernel* 
_output_shapes
:
*
dtype0
}
serving_default_inputs_auxPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

serving_default_inputs_mainPlaceholder*+
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
dtype0* 
shape:˙˙˙˙˙˙˙˙˙1
Ď
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputs_auxserving_default_inputs_maingru/gru_cell/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kerneldense_surface/kerneldense_surface/biasgru_1/gru_cell/biasgru_1/gru_cell/kernelgru_1/gru_cell/recurrent_kerneldense_output/kerneldense_output/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_5068

NoOpNoOp
Ű6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*6
value6B6 B6
Ŕ
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
* 

	keras_api* 
Ś
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*

'	keras_api* 

(	keras_api* 
Á
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/_random_generator
0cell
1
state_spec*

2	keras_api* 

3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
	9layer*
J
:0
;1
<2
%3
&4
=5
>6
?7
@8
A9*
J
:0
;1
<2
%3
&4
=5
>6
?7
@8
A9*
* 
°
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Gtrace_0
Htrace_1* 

Itrace_0
Jtrace_1* 
* 
W
K
_variables
L_iterations
M_current_learning_rate
N_update_step_xla*
* 

Oserving_default* 

:0
;1
<2*

:0
;1
<2*
* 


Pstates
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
* 
Ó
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d_random_generator

:kernel
;recurrent_kernel
<bias*
* 
* 

%0
&1*

%0
&1*
* 

enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

jtrace_0* 

ktrace_0* 
d^
VARIABLE_VALUEdense_surface/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_surface/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

=0
>1
?2*

=0
>1
?2*
* 


lstates
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
6
rtrace_0
strace_1
ttrace_2
utrace_3* 
6
vtrace_0
wtrace_1
xtrace_2
ytrace_3* 
* 
Ô
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
_random_generator

=kernel
>recurrent_kernel
?bias*
* 
* 

@0
A1*

@0
A1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
Ź
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

@kernel
Abias*
SM
VARIABLE_VALUEgru/gru_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEgru/gru_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEgru/gru_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgru_1/gru_cell/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEgru_1/gru_cell/recurrent_kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgru_1/gru_cell/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEdense_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 
* 
* 
* 
* 
* 

L0*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcurrent_learning_rate;optimizer/_current_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

0*
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

:0
;1
<2*

:0
;1
<2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
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

00*
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

=0
>1
?2*

=0
>1
?2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

 trace_0
Ątrace_1* 
* 
* 

90*
* 
* 
* 
* 
* 
* 
* 

@0
A1*

@0
A1*
* 

˘non_trainable_variables
Łlayers
¤metrics
 Ľlayer_regularization_losses
Ślayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

§trace_0* 

¨trace_0* 
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
­
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_surface/kerneldense_surface/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biasgru_1/gru_cell/kernelgru_1/gru_cell/recurrent_kernelgru_1/gru_cell/biasdense_output/kerneldense_output/bias	iterationcurrent_learning_rateConst*
Tin
2*
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
GPU 2J 8 *&
f!R
__inference__traced_save_6809
¨
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_surface/kerneldense_surface/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biasgru_1/gru_cell/kernelgru_1/gru_cell/recurrent_kernelgru_1/gru_cell/biasdense_output/kerneldense_output/bias	iterationcurrent_learning_rate*
Tin
2*
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
GPU 2J 8 *)
f$R"
 __inference__traced_restore_6854Ľ
Č

model_gru_1_while_cond_33624
0model_gru_1_while_model_gru_1_while_loop_counter:
6model_gru_1_while_model_gru_1_while_maximum_iterations!
model_gru_1_while_placeholder#
model_gru_1_while_placeholder_1#
model_gru_1_while_placeholder_26
2model_gru_1_while_less_model_gru_1_strided_slice_1J
Fmodel_gru_1_while_model_gru_1_while_cond_3362___redundant_placeholder0J
Fmodel_gru_1_while_model_gru_1_while_cond_3362___redundant_placeholder1J
Fmodel_gru_1_while_model_gru_1_while_cond_3362___redundant_placeholder2J
Fmodel_gru_1_while_model_gru_1_while_cond_3362___redundant_placeholder3
model_gru_1_while_identity

model/gru_1/while/LessLessmodel_gru_1_while_placeholder2model_gru_1_while_less_model_gru_1_strided_slice_1*
T0*
_output_shapes
: c
model/gru_1/while/IdentityIdentitymodel/gru_1/while/Less:z:0*
T0
*
_output_shapes
: "A
model_gru_1_while_identity#model/gru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::V R

_output_shapes
: 
8
_user_specified_name model/gru_1/while/loop_counter:\X

_output_shapes
: 
>
_user_specified_name&$model/gru_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:SO

_output_shapes
: 
5
_user_specified_namemodel/gru_1/strided_slice_1:

_output_shapes
:
Ď=
ď
while_body_4825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	C
/while_gru_cell_matmul_readvariableop_resource_0:
E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	A
-while_gru_cell_matmul_readvariableop_resource:
C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
Ď=
ď
while_body_6021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	C
/while_gru_cell_matmul_readvariableop_resource_0:
E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	A
-while_gru_cell_matmul_readvariableop_resource:
C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ß
 
while_cond_6175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6175___redundant_placeholder02
.while_while_cond_6175___redundant_placeholder12
.while_while_cond_6175___redundant_placeholder22
.while_while_cond_6175___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

Ţ
model_gru_while_cond_31980
,model_gru_while_model_gru_while_loop_counter6
2model_gru_while_model_gru_while_maximum_iterations
model_gru_while_placeholder!
model_gru_while_placeholder_1!
model_gru_while_placeholder_22
.model_gru_while_less_model_gru_strided_slice_1F
Bmodel_gru_while_model_gru_while_cond_3198___redundant_placeholder0F
Bmodel_gru_while_model_gru_while_cond_3198___redundant_placeholder1F
Bmodel_gru_while_model_gru_while_cond_3198___redundant_placeholder2F
Bmodel_gru_while_model_gru_while_cond_3198___redundant_placeholder3
model_gru_while_identity

model/gru/while/LessLessmodel_gru_while_placeholder.model_gru_while_less_model_gru_strided_slice_1*
T0*
_output_shapes
: _
model/gru/while/IdentityIdentitymodel/gru/while/Less:z:0*
T0
*
_output_shapes
: "=
model_gru_while_identity!model/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::T P

_output_shapes
: 
6
_user_specified_namemodel/gru/while/loop_counter:ZV

_output_shapes
: 
<
_user_specified_name$"model/gru/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:QM

_output_shapes
: 
3
_user_specified_namemodel/gru/strided_slice_1:

_output_shapes
:
ß
 
while_cond_4030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4030___redundant_placeholder02
.while_while_cond_4030___redundant_placeholder12
.while_while_cond_4030___redundant_placeholder22
.while_while_cond_4030___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ß
 
while_cond_4289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4289___redundant_placeholder02
.while_while_cond_4289___redundant_placeholder12
.while_while_cond_4289___redundant_placeholder22
.while_while_cond_4289___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ß
 
while_cond_5645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5645___redundant_placeholder02
.while_while_cond_5645___redundant_placeholder12
.while_while_cond_5645___redundant_placeholder22
.while_while_cond_5645___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
6
ń
?__inference_gru_1_layer_call_and_return_conditional_losses_4095

inputs 
gru_cell_4019:	!
gru_cell_4021:
!
gru_cell_4023:

identity˘ gru_cell/StatefulPartitionedCall˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ~
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ĺ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask´
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_4019gru_cell_4021gru_cell_4023*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_4018n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Í
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_4019gru_cell_4021gru_cell_4023*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4031*
condR
while_cond_4030*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙M
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name4019:$ 

_user_specified_name4021:$ 

_user_specified_name4023
Ď
ˇ
$__inference_gru_1_layer_call_fn_5800

inputs
unknown:	
	unknown_0:

	unknown_1:

identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_1_layer_call_and_return_conditional_losses_4914t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:$ 

_user_specified_name5792:$ 

_user_specified_name5794:$ 

_user_specified_name5796


Ä
"__inference_gru_layer_call_fn_5120

inputs
unknown:	
	unknown_0:	
	unknown_1:

identity

identity_1˘StatefulPartitionedCallů
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_4740t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:$ 

_user_specified_name5110:$ 

_user_specified_name5112:$ 

_user_specified_name5114


$__inference_model_layer_call_fn_4958
inputs_main

inputs_aux
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:

	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:

	unknown_7:	
	unknown_8:
identity˘StatefulPartitionedCallŇ
StatefulPartitionedCallStatefulPartitionedCallinputs_main
inputs_auxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_4583s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
%
_user_specified_nameinputs_main:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs_aux:$ 

_user_specified_name4936:$ 

_user_specified_name4938:$ 

_user_specified_name4940:$ 

_user_specified_name4942:$ 

_user_specified_name4944:$ 

_user_specified_name4946:$ 

_user_specified_name4948:$	 

_user_specified_name4950:$
 

_user_specified_name4952:$ 

_user_specified_name4954
¸
ž
F__inference_dense_output_layer_call_and_return_conditional_losses_4176

inputs

dense_4166:	

dense_4168:
identity˘dense/StatefulPartitionedCallI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙č
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0
dense_4166
dense_4168*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4165\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙B
NoOpNoOp^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name4166:$ 

_user_specified_name4168
ß
 
while_cond_5183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5183___redundant_placeholder02
.while_while_cond_5183___redundant_placeholder12
.while_while_cond_5183___redundant_placeholder22
.while_while_cond_5183___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
6
ń
?__inference_gru_1_layer_call_and_return_conditional_losses_3951

inputs 
gru_cell_3875:	!
gru_cell_3877:
!
gru_cell_3879:

identity˘ gru_cell/StatefulPartitionedCall˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ~
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ĺ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask´
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_3875gru_cell_3877gru_cell_3879*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3874n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Í
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3875gru_cell_3877gru_cell_3879*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3887*
condR
while_cond_3886*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙M
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name3875:$ 

_user_specified_name3877:$ 

_user_specified_name3879
´5
ţ
=__inference_gru_layer_call_and_return_conditional_losses_3610

inputs 
gru_cell_3533:	 
gru_cell_3535:	!
gru_cell_3537:

identity

identity_1˘ gru_cell/StatefulPartitionedCall˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask´
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_3533gru_cell_3535gru_cell_3537*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3532n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Í
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3533gru_cell_3535gru_cell_3537*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3545*
condR
while_cond_3544*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙M
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name3533:$ 

_user_specified_name3535:$ 

_user_specified_name3537
Ď=
ď
while_body_4476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	C
/while_gru_cell_matmul_readvariableop_resource_0:
E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	A
-while_gru_cell_matmul_readvariableop_resource:
C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource


$__inference_model_layer_call_fn_4984
inputs_main

inputs_aux
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:

	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:

	unknown_7:	
	unknown_8:
identity˘StatefulPartitionedCallŇ
StatefulPartitionedCallStatefulPartitionedCallinputs_main
inputs_auxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_4932s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
%
_user_specified_nameinputs_main:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs_aux:$ 

_user_specified_name4962:$ 

_user_specified_name4964:$ 

_user_specified_name4966:$ 

_user_specified_name4968:$ 

_user_specified_name4970:$ 

_user_specified_name4972:$ 

_user_specified_name4974:$	 

_user_specified_name4976:$
 

_user_specified_name4978:$ 

_user_specified_name4980
öM
ő
?__inference_gru_1_layer_call_and_return_conditional_losses_6265

inputs3
 gru_cell_readvariableop_resource:	;
'gru_cell_matmul_readvariableop_resource:
=
)gru_cell_matmul_1_readvariableop_resource:

identity˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: u
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ĺ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_6176*
condR
while_cond_6175*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙2: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
˝N
÷
?__inference_gru_1_layer_call_and_return_conditional_losses_6110
inputs_03
 gru_cell_readvariableop_resource:	;
'gru_cell_matmul_readvariableop_resource:
=
)gru_cell_matmul_1_readvariableop_resource:

identity˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ~
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ĺ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_6021*
condR
while_cond_6020*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ß
 
while_cond_6330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6330___redundant_placeholder02
.while_while_cond_6330___redundant_placeholder12
.while_while_cond_6330___redundant_placeholder22
.while_while_cond_6330___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ý
×
B__inference_gru_cell_layer_call_and_return_conditional_losses_6549

inputs
states_0*
readvariableop_resource:	1
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOp˘ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ő
Ő
B__inference_gru_cell_layer_call_and_return_conditional_losses_3675

inputs

states*
readvariableop_resource:	1
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOp˘ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
¸!

while_body_3688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_gru_cell_3710_0:	(
while_gru_cell_3712_0:	)
while_gru_cell_3714_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_gru_cell_3710:	&
while_gru_cell_3712:	'
while_gru_cell_3714:
˘&while/gru_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0ď
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3710_0while_gru_cell_3712_0while_gru_cell_3714_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3675Ř
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*
_output_shapes
 ",
while_gru_cell_3710while_gru_cell_3710_0",
while_gru_cell_3712while_gru_cell_3712_0",
while_gru_cell_3714while_gru_cell_3714_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:$ 

_user_specified_name3710:$ 

_user_specified_name3712:$	 

_user_specified_name3714
­M

=__inference_gru_layer_call_and_return_conditional_losses_4380

inputs3
 gru_cell_readvariableop_resource:	:
'gru_cell_matmul_readvariableop_resource:	=
)gru_cell_matmul_1_readvariableop_resource:

identity

identity_1˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:1˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4290*
condR
while_cond_4289*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:1˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙1: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ú

ű
G__inference_dense_surface_layer_call_and_return_conditional_losses_4401

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ß
 
while_cond_4824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4824___redundant_placeholder02
.while_while_cond_4824___redundant_placeholder12
.while_while_cond_4824___redundant_placeholder22
.while_while_cond_4824___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

Ř
'__inference_gru_cell_layer_call_fn_6616

inputs
states_0
unknown:	
	unknown_0:

	unknown_1:

identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_4018p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:$ 

_user_specified_name6606:$ 

_user_specified_name6608:$ 

_user_specified_name6610
Ű
ö	
__inference__wrapped_model_3467
inputs_main

inputs_aux=
*model_gru_gru_cell_readvariableop_resource:	D
1model_gru_gru_cell_matmul_readvariableop_resource:	G
3model_gru_gru_cell_matmul_1_readvariableop_resource:
F
2model_dense_surface_matmul_readvariableop_resource:
B
3model_dense_surface_biasadd_readvariableop_resource:	?
,model_gru_1_gru_cell_readvariableop_resource:	G
3model_gru_1_gru_cell_matmul_readvariableop_resource:
I
5model_gru_1_gru_cell_matmul_1_readvariableop_resource:
J
7model_dense_output_dense_matmul_readvariableop_resource:	F
8model_dense_output_dense_biasadd_readvariableop_resource:
identity˘/model/dense_output/dense/BiasAdd/ReadVariableOp˘.model/dense_output/dense/MatMul/ReadVariableOp˘*model/dense_surface/BiasAdd/ReadVariableOp˘)model/dense_surface/MatMul/ReadVariableOp˘(model/gru/gru_cell/MatMul/ReadVariableOp˘*model/gru/gru_cell/MatMul_1/ReadVariableOp˘!model/gru/gru_cell/ReadVariableOp˘model/gru/while˘*model/gru_1/gru_cell/MatMul/ReadVariableOp˘,model/gru_1/gru_cell/MatMul_1/ReadVariableOp˘#model/gru_1/gru_cell/ReadVariableOp˘model/gru_1/whileX
model/gru/ShapeShapeinputs_main*
T0*
_output_shapes
::íĎg
model/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
model/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
model/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/gru/strided_sliceStridedSlicemodel/gru/Shape:output:0&model/gru/strided_slice/stack:output:0(model/gru/strided_slice/stack_1:output:0(model/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
model/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
model/gru/zeros/packedPack model/gru/strided_slice:output:0!model/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Z
model/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model/gru/zerosFillmodel/gru/zeros/packed:output:0model/gru/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
model/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
model/gru/transpose	Transposeinputs_main!model/gru/transpose/perm:output:0*
T0*+
_output_shapes
:1˙˙˙˙˙˙˙˙˙f
model/gru/Shape_1Shapemodel/gru/transpose:y:0*
T0*
_output_shapes
::íĎi
model/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/gru/strided_slice_1StridedSlicemodel/gru/Shape_1:output:0(model/gru/strided_slice_1/stack:output:0*model/gru/strided_slice_1/stack_1:output:0*model/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
%model/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ň
model/gru/TensorArrayV2TensorListReserve.model/gru/TensorArrayV2/element_shape:output:0"model/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
?model/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ţ
1model/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/gru/transpose:y:0Hmodel/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇi
model/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/gru/strided_slice_2StridedSlicemodel/gru/transpose:y:0(model/gru/strided_slice_2/stack:output:0*model/gru/strided_slice_2/stack_1:output:0*model/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
!model/gru/gru_cell/ReadVariableOpReadVariableOp*model_gru_gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0
model/gru/gru_cell/unstackUnpack)model/gru/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
(model/gru/gru_cell/MatMul/ReadVariableOpReadVariableOp1model_gru_gru_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ź
model/gru/gru_cell/MatMulMatMul"model/gru/strided_slice_2:output:00model/gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
model/gru/gru_cell/BiasAddBiasAdd#model/gru/gru_cell/MatMul:product:0#model/gru/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
"model/gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ß
model/gru/gru_cell/splitSplit+model/gru/gru_cell/split/split_dim:output:0#model/gru/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split 
*model/gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp3model_gru_gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ś
model/gru/gru_cell/MatMul_1MatMulmodel/gru/zeros:output:02model/gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ś
model/gru/gru_cell/BiasAdd_1BiasAdd%model/gru/gru_cell/MatMul_1:product:0#model/gru/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
model/gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙o
$model/gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
model/gru/gru_cell/split_1SplitV%model/gru/gru_cell/BiasAdd_1:output:0!model/gru/gru_cell/Const:output:0-model/gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
model/gru/gru_cell/addAddV2!model/gru/gru_cell/split:output:0#model/gru/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
model/gru/gru_cell/SigmoidSigmoidmodel/gru/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru/gru_cell/add_1AddV2!model/gru/gru_cell/split:output:1#model/gru/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙x
model/gru/gru_cell/Sigmoid_1Sigmoidmodel/gru/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru/gru_cell/mulMul model/gru/gru_cell/Sigmoid_1:y:0#model/gru/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru/gru_cell/add_2AddV2!model/gru/gru_cell/split:output:2model/gru/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
model/gru/gru_cell/ReluRelumodel/gru/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru/gru_cell/mul_1Mulmodel/gru/gru_cell/Sigmoid:y:0model/gru/zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]
model/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
model/gru/gru_cell/subSub!model/gru/gru_cell/sub/x:output:0model/gru/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru/gru_cell/mul_2Mulmodel/gru/gru_cell/sub:z:0%model/gru/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru/gru_cell/add_3AddV2model/gru/gru_cell/mul_1:z:0model/gru/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙x
'model/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ö
model/gru/TensorArrayV2_1TensorListReserve0model/gru/TensorArrayV2_1/element_shape:output:0"model/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇP
model/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : m
"model/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙^
model/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
model/gru/whileWhile%model/gru/while/loop_counter:output:0+model/gru/while/maximum_iterations:output:0model/gru/time:output:0"model/gru/TensorArrayV2_1:handle:0model/gru/zeros:output:0"model/gru/strided_slice_1:output:0Amodel/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0*model_gru_gru_cell_readvariableop_resource1model_gru_gru_cell_matmul_readvariableop_resource3model_gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*%
bodyR
model_gru_while_body_3199*%
condR
model_gru_while_cond_3198*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
:model/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   á
,model/gru/TensorArrayV2Stack/TensorListStackTensorListStackmodel/gru/while:output:3Cmodel/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:1˙˙˙˙˙˙˙˙˙*
element_dtype0r
model/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙k
!model/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: k
!model/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ş
model/gru/strided_slice_3StridedSlice5model/gru/TensorArrayV2Stack/TensorListStack:tensor:0(model/gru/strided_slice_3/stack:output:0*model/gru/strided_slice_3/stack_1:output:0*model/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masko
model/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ľ
model/gru/transpose_1	Transpose5model/gru/TensorArrayV2Stack/TensorListStack:tensor:0#model/gru/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1e
model/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    _
model/tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ž
model/tf.concat_3/concatConcatV2model/gru/while:output:4
inputs_aux&model/tf.concat_3/concat/axis:output:0*
N*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
)model/dense_surface/MatMul/ReadVariableOpReadVariableOp2model_dense_surface_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0­
model/dense_surface/MatMulMatMul!model/tf.concat_3/concat:output:01model/dense_surface/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
*model/dense_surface/BiasAdd/ReadVariableOpReadVariableOp3model_dense_surface_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ł
model/dense_surface/BiasAddBiasAdd$model/dense_surface/MatMul:product:02model/dense_surface/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
model/dense_surface/ReluRelu$model/dense_surface/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
 model/tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙      Ż
model/tf.reshape_1/ReshapeReshape&model/dense_surface/Relu:activations:0)model/tf.reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙_
model/tf.concat_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ě
model/tf.concat_4/concatConcatV2model/gru/transpose_1:y:0#model/tf.reshape_1/Reshape:output:0&model/tf.concat_4/concat/axis:output:0*
N*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2p
model/gru_1/ShapeShape!model/tf.concat_4/concat:output:0*
T0*
_output_shapes
::íĎi
model/gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!model/gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!model/gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/gru_1/strided_sliceStridedSlicemodel/gru_1/Shape:output:0(model/gru_1/strided_slice/stack:output:0*model/gru_1/strided_slice/stack_1:output:0*model/gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
model/gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
model/gru_1/zeros/packedPack"model/gru_1/strided_slice:output:0#model/gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
model/gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
model/gru_1/zerosFill!model/gru_1/zeros/packed:output:0 model/gru_1/zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙o
model/gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ą
model/gru_1/transpose	Transpose!model/tf.concat_4/concat:output:0#model/gru_1/transpose/perm:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙j
model/gru_1/Shape_1Shapemodel/gru_1/transpose:y:0*
T0*
_output_shapes
::íĎk
!model/gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
model/gru_1/strided_slice_1StridedSlicemodel/gru_1/Shape_1:output:0*model/gru_1/strided_slice_1/stack:output:0,model/gru_1/strided_slice_1/stack_1:output:0,model/gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
'model/gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ř
model/gru_1/TensorArrayV2TensorListReserve0model/gru_1/TensorArrayV2/element_shape:output:0$model/gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇd
model/gru_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
model/gru_1/ReverseV2	ReverseV2model/gru_1/transpose:y:0#model/gru_1/ReverseV2/axis:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙
Amodel/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
3model/gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel/gru_1/ReverseV2:output:0Jmodel/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇk
!model/gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ś
model/gru_1/strided_slice_2StridedSlicemodel/gru_1/transpose:y:0*model/gru_1/strided_slice_2/stack:output:0,model/gru_1/strided_slice_2/stack_1:output:0,model/gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask
#model/gru_1/gru_cell/ReadVariableOpReadVariableOp,model_gru_1_gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0
model/gru_1/gru_cell/unstackUnpack+model/gru_1/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num 
*model/gru_1/gru_cell/MatMul/ReadVariableOpReadVariableOp3model_gru_1_gru_cell_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0˛
model/gru_1/gru_cell/MatMulMatMul$model/gru_1/strided_slice_2:output:02model/gru_1/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
model/gru_1/gru_cell/BiasAddBiasAdd%model/gru_1/gru_cell/MatMul:product:0%model/gru_1/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙o
$model/gru_1/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ĺ
model/gru_1/gru_cell/splitSplit-model/gru_1/gru_cell/split/split_dim:output:0%model/gru_1/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split¤
,model/gru_1/gru_cell/MatMul_1/ReadVariableOpReadVariableOp5model_gru_1_gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ź
model/gru_1/gru_cell/MatMul_1MatMulmodel/gru_1/zeros:output:04model/gru_1/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
model/gru_1/gru_cell/BiasAdd_1BiasAdd'model/gru_1/gru_cell/MatMul_1:product:0%model/gru_1/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙o
model/gru_1/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙q
&model/gru_1/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
model/gru_1/gru_cell/split_1SplitV'model/gru_1/gru_cell/BiasAdd_1:output:0#model/gru_1/gru_cell/Const:output:0/model/gru_1/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split 
model/gru_1/gru_cell/addAddV2#model/gru_1/gru_cell/split:output:0%model/gru_1/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙x
model/gru_1/gru_cell/SigmoidSigmoidmodel/gru_1/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
model/gru_1/gru_cell/add_1AddV2#model/gru_1/gru_cell/split:output:1%model/gru_1/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
model/gru_1/gru_cell/Sigmoid_1Sigmoidmodel/gru_1/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru_1/gru_cell/mulMul"model/gru_1/gru_cell/Sigmoid_1:y:0%model/gru_1/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru_1/gru_cell/add_2AddV2#model/gru_1/gru_cell/split:output:2model/gru_1/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙t
model/gru_1/gru_cell/ReluRelumodel/gru_1/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru_1/gru_cell/mul_1Mul model/gru_1/gru_cell/Sigmoid:y:0model/gru_1/zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
model/gru_1/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
model/gru_1/gru_cell/subSub#model/gru_1/gru_cell/sub/x:output:0 model/gru_1/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru_1/gru_cell/mul_2Mulmodel/gru_1/gru_cell/sub:z:0'model/gru_1/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru_1/gru_cell/add_3AddV2model/gru_1/gru_cell/mul_1:z:0model/gru_1/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙z
)model/gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ü
model/gru_1/TensorArrayV2_1TensorListReserve2model/gru_1/TensorArrayV2_1/element_shape:output:0$model/gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇR
model/gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : o
$model/gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙`
model/gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ˛
model/gru_1/whileWhile'model/gru_1/while/loop_counter:output:0-model/gru_1/while/maximum_iterations:output:0model/gru_1/time:output:0$model/gru_1/TensorArrayV2_1:handle:0model/gru_1/zeros:output:0$model/gru_1/strided_slice_1:output:0Cmodel/gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0,model_gru_1_gru_cell_readvariableop_resource3model_gru_1_gru_cell_matmul_readvariableop_resource5model_gru_1_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*'
bodyR
model_gru_1_while_body_3363*'
condR
model_gru_1_while_cond_3362*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
<model/gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ç
.model/gru_1/TensorArrayV2Stack/TensorListStackTensorListStackmodel/gru_1/while:output:3Emodel/gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙*
element_dtype0t
!model/gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙m
#model/gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: m
#model/gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
model/gru_1/strided_slice_3StridedSlice7model/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0*model/gru_1/strided_slice_3/stack:output:0,model/gru_1/strided_slice_3/stack_1:output:0,model/gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskq
model/gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ť
model/gru_1/transpose_1	Transpose7model/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0%model/gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2g
model/gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    _
model/tf.concat_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ě
model/tf.concat_5/concatConcatV2!model/tf.concat_4/concat:output:0model/gru_1/transpose_1:y:0&model/tf.concat_5/concat/axis:output:0*
N*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2q
 model/dense_output/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
model/dense_output/ReshapeReshape!model/tf.concat_5/concat:output:0)model/dense_output/Reshape/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
.model/dense_output/dense/MatMul/ReadVariableOpReadVariableOp7model_dense_output_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¸
model/dense_output/dense/MatMulMatMul#model/dense_output/Reshape:output:06model/dense_output/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
/model/dense_output/dense/BiasAdd/ReadVariableOpReadVariableOp8model_dense_output_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 model/dense_output/dense/BiasAddBiasAdd)model/dense_output/dense/MatMul:product:07model/dense_output/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 model/dense_output/dense/SigmoidSigmoid)model/dense_output/dense/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
"model/dense_output/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙2      °
model/dense_output/Reshape_1Reshape$model/dense_output/dense/Sigmoid:y:0+model/dense_output/Reshape_1/shape:output:0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2s
"model/dense_output/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ş
model/dense_output/Reshape_2Reshape!model/tf.concat_5/concat:output:0+model/dense_output/Reshape_2/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙x
IdentityIdentity%model/dense_output/Reshape_1:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp0^model/dense_output/dense/BiasAdd/ReadVariableOp/^model/dense_output/dense/MatMul/ReadVariableOp+^model/dense_surface/BiasAdd/ReadVariableOp*^model/dense_surface/MatMul/ReadVariableOp)^model/gru/gru_cell/MatMul/ReadVariableOp+^model/gru/gru_cell/MatMul_1/ReadVariableOp"^model/gru/gru_cell/ReadVariableOp^model/gru/while+^model/gru_1/gru_cell/MatMul/ReadVariableOp-^model/gru_1/gru_cell/MatMul_1/ReadVariableOp$^model/gru_1/gru_cell/ReadVariableOp^model/gru_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2b
/model/dense_output/dense/BiasAdd/ReadVariableOp/model/dense_output/dense/BiasAdd/ReadVariableOp2`
.model/dense_output/dense/MatMul/ReadVariableOp.model/dense_output/dense/MatMul/ReadVariableOp2X
*model/dense_surface/BiasAdd/ReadVariableOp*model/dense_surface/BiasAdd/ReadVariableOp2V
)model/dense_surface/MatMul/ReadVariableOp)model/dense_surface/MatMul/ReadVariableOp2T
(model/gru/gru_cell/MatMul/ReadVariableOp(model/gru/gru_cell/MatMul/ReadVariableOp2X
*model/gru/gru_cell/MatMul_1/ReadVariableOp*model/gru/gru_cell/MatMul_1/ReadVariableOp2F
!model/gru/gru_cell/ReadVariableOp!model/gru/gru_cell/ReadVariableOp2"
model/gru/whilemodel/gru/while2X
*model/gru_1/gru_cell/MatMul/ReadVariableOp*model/gru_1/gru_cell/MatMul/ReadVariableOp2\
,model/gru_1/gru_cell/MatMul_1/ReadVariableOp,model/gru_1/gru_cell/MatMul_1/ReadVariableOp2J
#model/gru_1/gru_cell/ReadVariableOp#model/gru_1/gru_cell/ReadVariableOp2&
model/gru_1/whilemodel/gru_1/while:X T
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
%
_user_specified_nameinputs_main:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs_aux:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource
É

ń
?__inference_dense_layer_call_and_return_conditional_losses_6714

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ľ

+__inference_dense_output_layer_call_fn_6429

inputs
unknown:	
	unknown_0:
identity˘StatefulPartitionedCallč
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_output_layer_call_and_return_conditional_losses_4176|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name6423:$ 

_user_specified_name6425
ů
Ö
B__inference_gru_cell_layer_call_and_return_conditional_losses_4018

inputs

states*
readvariableop_resource:	2
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:

identity

identity_1˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOp˘ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ë=
í
while_body_5646
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	B
/while_gru_cell_matmul_readvariableop_resource_0:	E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	@
-while_gru_cell_matmul_readvariableop_resource:	C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
Ý

F__inference_dense_output_layer_call_and_return_conditional_losses_6460

inputs7
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense/Sigmoid:y:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙_
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ß
 
while_cond_3886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_3886___redundant_placeholder02
.while_while_cond_3886___redundant_placeholder12
.while_while_cond_3886___redundant_placeholder22
.while_while_cond_3886___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
¸
ž
F__inference_dense_output_layer_call_and_return_conditional_losses_4196

inputs

dense_4186:	

dense_4188:
identity˘dense/StatefulPartitionedCallI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙č
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0
dense_4186
dense_4188*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4165\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙B
NoOpNoOp^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name4186:$ 

_user_specified_name4188
ß
 
while_cond_3544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_3544___redundant_placeholder02
.while_while_cond_3544___redundant_placeholder12
.while_while_cond_3544___redundant_placeholder22
.while_while_cond_3544___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
&
É
?__inference_model_layer_call_and_return_conditional_losses_4932
inputs_main

inputs_aux
gru_4741:	
gru_4743:	
gru_4745:
&
dense_surface_4751:
!
dense_surface_4753:	

gru_1_4915:	

gru_1_4917:


gru_1_4919:
$
dense_output_4924:	
dense_output_4926:
identity˘$dense_output/StatefulPartitionedCall˘%dense_surface/StatefulPartitionedCall˘gru/StatefulPartitionedCall˘gru_1/StatefulPartitionedCall
gru/StatefulPartitionedCallStatefulPartitionedCallinputs_maingru_4741gru_4743gru_4745*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_4740Y
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ž
tf.concat_3/concatConcatV2$gru/StatefulPartitionedCall:output:1
inputs_aux tf.concat_3/concat/axis:output:0*
N*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%dense_surface/StatefulPartitionedCallStatefulPartitionedCalltf.concat_3/concat:output:0dense_surface_4751dense_surface_4753*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_surface_layer_call_and_return_conditional_losses_4401o
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙      Ť
tf.reshape_1/ReshapeReshape.dense_surface/StatefulPartitionedCall:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
tf.concat_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
tf.concat_4/concatConcatV2$gru/StatefulPartitionedCall:output:0tf.reshape_1/Reshape:output:0 tf.concat_4/concat/axis:output:0*
N*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
gru_1/StatefulPartitionedCallStatefulPartitionedCalltf.concat_4/concat:output:0
gru_1_4915
gru_1_4917
gru_1_4919*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_1_layer_call_and_return_conditional_losses_4914Y
tf.concat_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
tf.concat_5/concatConcatV2tf.concat_4/concat:output:0&gru_1/StatefulPartitionedCall:output:0 tf.concat_5/concat/axis:output:0*
N*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
$dense_output/StatefulPartitionedCallStatefulPartitionedCalltf.concat_5/concat:output:0dense_output_4924dense_output_4926*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_output_layer_call_and_return_conditional_losses_4196k
dense_output/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
dense_output/ReshapeReshapetf.concat_5/concat:output:0#dense_output/Reshape/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ż
NoOpNoOp%^dense_output/StatefulPartitionedCall&^dense_surface/StatefulPartitionedCall^gru/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2N
%dense_surface/StatefulPartitionedCall%dense_surface/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:X T
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
%
_user_specified_nameinputs_main:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs_aux:$ 

_user_specified_name4741:$ 

_user_specified_name4743:$ 

_user_specified_name4745:$ 

_user_specified_name4751:$ 

_user_specified_name4753:$ 

_user_specified_name4915:$ 

_user_specified_name4917:$	 

_user_specified_name4919:$
 

_user_specified_name4924:$ 

_user_specified_name4926
ß
 
while_cond_3687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_3687___redundant_placeholder02
.while_while_cond_3687___redundant_placeholder12
.while_while_cond_3687___redundant_placeholder22
.while_while_cond_3687___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ă

$__inference_dense_layer_call_fn_6703

inputs
unknown:	
	unknown_0:
identity˘StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_4165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name6697:$ 

_user_specified_name6699
­M

=__inference_gru_layer_call_and_return_conditional_losses_5582

inputs3
 gru_cell_readvariableop_resource:	:
'gru_cell_matmul_readvariableop_resource:	=
)gru_cell_matmul_1_readvariableop_resource:

identity

identity_1˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:1˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5492*
condR
while_cond_5491*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:1˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙1: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource


Ä
"__inference_gru_layer_call_fn_5107

inputs
unknown:	
	unknown_0:	
	unknown_1:

identity

identity_1˘StatefulPartitionedCallů
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_4380t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙1: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:$ 

_user_specified_name5097:$ 

_user_specified_name5099:$ 

_user_specified_name5101
Ď=
ď
while_body_6331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	C
/while_gru_cell_matmul_readvariableop_resource_0:
E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	A
-while_gru_cell_matmul_readvariableop_resource:
C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
˙

×
'__inference_gru_cell_layer_call_fn_6496

inputs
states_0
unknown:	
	unknown_0:	
	unknown_1:

identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3532p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:$ 

_user_specified_name6486:$ 

_user_specified_name6488:$ 

_user_specified_name6490
Ë=
í
while_body_4290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	B
/while_gru_cell_matmul_readvariableop_resource_0:	E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	@
-while_gru_cell_matmul_readvariableop_resource:	C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
É

ń
?__inference_dense_layer_call_and_return_conditional_losses_4165

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

Ř
'__inference_gru_cell_layer_call_fn_6602

inputs
states_0
unknown:	
	unknown_0:

	unknown_1:

identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3874p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:$ 

_user_specified_name6592:$ 

_user_specified_name6594:$ 

_user_specified_name6596
öM
ő
?__inference_gru_1_layer_call_and_return_conditional_losses_4914

inputs3
 gru_cell_readvariableop_resource:	;
'gru_cell_matmul_readvariableop_resource:
=
)gru_cell_matmul_1_readvariableop_resource:

identity˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: u
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ĺ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4825*
condR
while_cond_4824*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙2: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
<
ü
 __inference__traced_restore_6854
file_prefix9
%assignvariableop_dense_surface_kernel:
4
%assignvariableop_1_dense_surface_bias:	9
&assignvariableop_2_gru_gru_cell_kernel:	D
0assignvariableop_3_gru_gru_cell_recurrent_kernel:
7
$assignvariableop_4_gru_gru_cell_bias:	<
(assignvariableop_5_gru_1_gru_cell_kernel:
F
2assignvariableop_6_gru_1_gru_cell_recurrent_kernel:
9
&assignvariableop_7_gru_1_gru_cell_bias:	9
&assignvariableop_8_dense_output_kernel:	2
$assignvariableop_9_dense_output_bias:'
assignvariableop_10_iteration:	 3
)assignvariableop_11_current_learning_rate: 
identity_13˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_2˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9Ş
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Đ
valueĆBĂB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_current_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ß
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOpAssignVariableOp%assignvariableop_dense_surface_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ź
AssignVariableOp_1AssignVariableOp%assignvariableop_1_dense_surface_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_2AssignVariableOp&assignvariableop_2_gru_gru_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_3AssignVariableOp0assignvariableop_3_gru_gru_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_4AssignVariableOp$assignvariableop_4_gru_gru_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_5AssignVariableOp(assignvariableop_5_gru_1_gru_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_6AssignVariableOp2assignvariableop_6_gru_1_gru_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_7AssignVariableOp&assignvariableop_7_gru_1_gru_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_8AssignVariableOp&assignvariableop_8_dense_output_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_9AssignVariableOp$assignvariableop_9_dense_output_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:ś
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_11AssignVariableOp)assignvariableop_11_current_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ×
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
:  
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_13Identity_13:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_namedense_surface/kernel:2.
,
_user_specified_namedense_surface/bias:3/
-
_user_specified_namegru/gru_cell/kernel:=9
7
_user_specified_namegru/gru_cell/recurrent_kernel:1-
+
_user_specified_namegru/gru_cell/bias:51
/
_user_specified_namegru_1/gru_cell/kernel:?;
9
_user_specified_name!gru_1/gru_cell/recurrent_kernel:3/
-
_user_specified_namegru_1/gru_cell/bias:3	/
-
_user_specified_namedense_output/kernel:1
-
+
_user_specified_namedense_output/bias:)%
#
_user_specified_name	iteration:51
/
_user_specified_namecurrent_learning_rate
ů
Ö
B__inference_gru_cell_layer_call_and_return_conditional_losses_3874

inputs

states*
readvariableop_resource:	2
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:

identity

identity_1˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOp˘ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
öM
ő
?__inference_gru_1_layer_call_and_return_conditional_losses_4565

inputs3
 gru_cell_readvariableop_resource:	;
'gru_cell_matmul_readvariableop_resource:
=
)gru_cell_matmul_1_readvariableop_resource:

identity˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: u
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ĺ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4476*
condR
while_cond_4475*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙2: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ë=
í
while_body_5184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	B
/while_gru_cell_matmul_readvariableop_resource_0:	E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	@
-while_gru_cell_matmul_readvariableop_resource:	C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ß
 
while_cond_5491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5491___redundant_placeholder02
.while_while_cond_5491___redundant_placeholder12
.while_while_cond_5491___redundant_placeholder22
.while_while_cond_5491___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
´5
ţ
=__inference_gru_layer_call_and_return_conditional_losses_3753

inputs 
gru_cell_3676:	 
gru_cell_3678:	!
gru_cell_3680:

identity

identity_1˘ gru_cell/StatefulPartitionedCall˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_mask´
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_3676gru_cell_3678gru_cell_3680*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3675n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Í
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3676gru_cell_3678gru_cell_3680*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3688*
condR
while_cond_3687*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙M
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name3676:$ 

_user_specified_name3678:$ 

_user_specified_name3680
Ľ

+__inference_dense_output_layer_call_fn_6438

inputs
unknown:	
	unknown_0:
identity˘StatefulPartitionedCallč
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_output_layer_call_and_return_conditional_losses_4196|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name6432:$ 

_user_specified_name6434
Ë=
í
while_body_5492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	B
/while_gru_cell_matmul_readvariableop_resource_0:	E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	@
-while_gru_cell_matmul_readvariableop_resource:	C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ß
 
while_cond_6020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_6020___redundant_placeholder02
.while_while_cond_6020___redundant_placeholder12
.while_while_cond_6020___redundant_placeholder22
.while_while_cond_6020___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ß
 
while_cond_4475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4475___redundant_placeholder02
.while_while_cond_4475___redundant_placeholder12
.while_while_cond_4475___redundant_placeholder22
.while_while_cond_4475___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ëM

=__inference_gru_layer_call_and_return_conditional_losses_5428
inputs_03
 gru_cell_readvariableop_resource:	:
'gru_cell_matmul_readvariableop_resource:	=
)gru_cell_matmul_1_readvariableop_resource:

identity

identity_1˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5338*
condR
while_cond_5337*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
M
×

model_gru_1_while_body_33634
0model_gru_1_while_model_gru_1_while_loop_counter:
6model_gru_1_while_model_gru_1_while_maximum_iterations!
model_gru_1_while_placeholder#
model_gru_1_while_placeholder_1#
model_gru_1_while_placeholder_23
/model_gru_1_while_model_gru_1_strided_slice_1_0o
kmodel_gru_1_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_tensorarrayunstack_tensorlistfromtensor_0G
4model_gru_1_while_gru_cell_readvariableop_resource_0:	O
;model_gru_1_while_gru_cell_matmul_readvariableop_resource_0:
Q
=model_gru_1_while_gru_cell_matmul_1_readvariableop_resource_0:

model_gru_1_while_identity 
model_gru_1_while_identity_1 
model_gru_1_while_identity_2 
model_gru_1_while_identity_3 
model_gru_1_while_identity_41
-model_gru_1_while_model_gru_1_strided_slice_1m
imodel_gru_1_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_tensorarrayunstack_tensorlistfromtensorE
2model_gru_1_while_gru_cell_readvariableop_resource:	M
9model_gru_1_while_gru_cell_matmul_readvariableop_resource:
O
;model_gru_1_while_gru_cell_matmul_1_readvariableop_resource:
˘0model/gru_1/while/gru_cell/MatMul/ReadVariableOp˘2model/gru_1/while/gru_cell/MatMul_1/ReadVariableOp˘)model/gru_1/while/gru_cell/ReadVariableOp
Cmodel/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ă
5model/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemkmodel_gru_1_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_tensorarrayunstack_tensorlistfromtensor_0model_gru_1_while_placeholderLmodel/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
)model/gru_1/while/gru_cell/ReadVariableOpReadVariableOp4model_gru_1_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
"model/gru_1/while/gru_cell/unstackUnpack1model/gru_1/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numŽ
0model/gru_1/while/gru_cell/MatMul/ReadVariableOpReadVariableOp;model_gru_1_while_gru_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ö
!model/gru_1/while/gru_cell/MatMulMatMul<model/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:08model/gru_1/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
"model/gru_1/while/gru_cell/BiasAddBiasAdd+model/gru_1/while/gru_cell/MatMul:product:0+model/gru_1/while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
*model/gru_1/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙÷
 model/gru_1/while/gru_cell/splitSplit3model/gru_1/while/gru_cell/split/split_dim:output:0+model/gru_1/while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split˛
2model/gru_1/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp=model_gru_1_while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0˝
#model/gru_1/while/gru_cell/MatMul_1MatMulmodel_gru_1_while_placeholder_2:model/gru_1/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ž
$model/gru_1/while/gru_cell/BiasAdd_1BiasAdd-model/gru_1/while/gru_cell/MatMul_1:product:0+model/gru_1/while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
 model/gru_1/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙w
,model/gru_1/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ľ
"model/gru_1/while/gru_cell/split_1SplitV-model/gru_1/while/gru_cell/BiasAdd_1:output:0)model/gru_1/while/gru_cell/Const:output:05model/gru_1/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split˛
model/gru_1/while/gru_cell/addAddV2)model/gru_1/while/gru_cell/split:output:0+model/gru_1/while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"model/gru_1/while/gru_cell/SigmoidSigmoid"model/gru_1/while/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´
 model/gru_1/while/gru_cell/add_1AddV2)model/gru_1/while/gru_cell/split:output:1+model/gru_1/while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
$model/gru_1/while/gru_cell/Sigmoid_1Sigmoid$model/gru_1/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ż
model/gru_1/while/gru_cell/mulMul(model/gru_1/while/gru_cell/Sigmoid_1:y:0+model/gru_1/while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ť
 model/gru_1/while/gru_cell/add_2AddV2)model/gru_1/while/gru_cell/split:output:2"model/gru_1/while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru_1/while/gru_cell/ReluRelu$model/gru_1/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ł
 model/gru_1/while/gru_cell/mul_1Mul&model/gru_1/while/gru_cell/Sigmoid:y:0model_gru_1_while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
 model/gru_1/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ť
model/gru_1/while/gru_cell/subSub)model/gru_1/while/gru_cell/sub/x:output:0&model/gru_1/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
 model/gru_1/while/gru_cell/mul_2Mul"model/gru_1/while/gru_cell/sub:z:0-model/gru_1/while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¨
 model/gru_1/while/gru_cell/add_3AddV2$model/gru_1/while/gru_cell/mul_1:z:0$model/gru_1/while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ń
6model/gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmodel_gru_1_while_placeholder_1model_gru_1_while_placeholder$model/gru_1/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇY
model/gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
model/gru_1/while/addAddV2model_gru_1_while_placeholder model/gru_1/while/add/y:output:0*
T0*
_output_shapes
: [
model/gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
model/gru_1/while/add_1AddV20model_gru_1_while_model_gru_1_while_loop_counter"model/gru_1/while/add_1/y:output:0*
T0*
_output_shapes
: }
model/gru_1/while/IdentityIdentitymodel/gru_1/while/add_1:z:0^model/gru_1/while/NoOp*
T0*
_output_shapes
: 
model/gru_1/while/Identity_1Identity6model_gru_1_while_model_gru_1_while_maximum_iterations^model/gru_1/while/NoOp*
T0*
_output_shapes
: }
model/gru_1/while/Identity_2Identitymodel/gru_1/while/add:z:0^model/gru_1/while/NoOp*
T0*
_output_shapes
: Ş
model/gru_1/while/Identity_3IdentityFmodel/gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model/gru_1/while/NoOp*
T0*
_output_shapes
: 
model/gru_1/while/Identity_4Identity$model/gru_1/while/gru_cell/add_3:z:0^model/gru_1/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Č
model/gru_1/while/NoOpNoOp1^model/gru_1/while/gru_cell/MatMul/ReadVariableOp3^model/gru_1/while/gru_cell/MatMul_1/ReadVariableOp*^model/gru_1/while/gru_cell/ReadVariableOp*
_output_shapes
 "|
;model_gru_1_while_gru_cell_matmul_1_readvariableop_resource=model_gru_1_while_gru_cell_matmul_1_readvariableop_resource_0"x
9model_gru_1_while_gru_cell_matmul_readvariableop_resource;model_gru_1_while_gru_cell_matmul_readvariableop_resource_0"j
2model_gru_1_while_gru_cell_readvariableop_resource4model_gru_1_while_gru_cell_readvariableop_resource_0"A
model_gru_1_while_identity#model/gru_1/while/Identity:output:0"E
model_gru_1_while_identity_1%model/gru_1/while/Identity_1:output:0"E
model_gru_1_while_identity_2%model/gru_1/while/Identity_2:output:0"E
model_gru_1_while_identity_3%model/gru_1/while/Identity_3:output:0"E
model_gru_1_while_identity_4%model/gru_1/while/Identity_4:output:0"`
-model_gru_1_while_model_gru_1_strided_slice_1/model_gru_1_while_model_gru_1_strided_slice_1_0"Ř
imodel_gru_1_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_tensorarrayunstack_tensorlistfromtensorkmodel_gru_1_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2d
0model/gru_1/while/gru_cell/MatMul/ReadVariableOp0model/gru_1/while/gru_cell/MatMul/ReadVariableOp2h
2model/gru_1/while/gru_cell/MatMul_1/ReadVariableOp2model/gru_1/while/gru_cell/MatMul_1/ReadVariableOp2V
)model/gru_1/while/gru_cell/ReadVariableOp)model/gru_1/while/gru_cell/ReadVariableOp:V R

_output_shapes
: 
8
_user_specified_name model/gru_1/while/loop_counter:\X

_output_shapes
: 
>
_user_specified_name&$model/gru_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:SO

_output_shapes
: 
5
_user_specified_namemodel/gru_1/strided_slice_1:kg

_output_shapes
: 
M
_user_specified_name53model/gru_1/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
¸!

while_body_3545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_gru_cell_3567_0:	(
while_gru_cell_3569_0:	)
while_gru_cell_3571_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_gru_cell_3567:	&
while_gru_cell_3569:	'
while_gru_cell_3571:
˘&while/gru_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0ď
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3567_0while_gru_cell_3569_0while_gru_cell_3571_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3532Ř
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*
_output_shapes
 ",
while_gru_cell_3567while_gru_cell_3567_0",
while_gru_cell_3569while_gru_cell_3569_0",
while_gru_cell_3571while_gru_cell_3571_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:$ 

_user_specified_name3567:$ 

_user_specified_name3569:$	 

_user_specified_name3571
Ú

ű
G__inference_dense_surface_layer_call_and_return_conditional_losses_5756

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ë=
í
while_body_4650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	B
/while_gru_cell_matmul_readvariableop_resource_0:	E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	@
-while_gru_cell_matmul_readvariableop_resource:	C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ů
š
$__inference_gru_1_layer_call_fn_5778
inputs_0
unknown:	
	unknown_0:

	unknown_1:

identity˘StatefulPartitionedCallń
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_1_layer_call_and_return_conditional_losses_4095}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0:$ 

_user_specified_name5770:$ 

_user_specified_name5772:$ 

_user_specified_name5774
Ý

F__inference_dense_output_layer_call_and_return_conditional_losses_6482

inputs7
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense/Sigmoid:y:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙_
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Óg
Đ
__inference__traced_save_6809
file_prefix?
+read_disablecopyonread_dense_surface_kernel:
:
+read_1_disablecopyonread_dense_surface_bias:	?
,read_2_disablecopyonread_gru_gru_cell_kernel:	J
6read_3_disablecopyonread_gru_gru_cell_recurrent_kernel:
=
*read_4_disablecopyonread_gru_gru_cell_bias:	B
.read_5_disablecopyonread_gru_1_gru_cell_kernel:
L
8read_6_disablecopyonread_gru_1_gru_cell_recurrent_kernel:
?
,read_7_disablecopyonread_gru_1_gru_cell_bias:	?
,read_8_disablecopyonread_dense_output_kernel:	8
*read_9_disablecopyonread_dense_output_bias:-
#read_10_disablecopyonread_iteration:	 9
/read_11_disablecopyonread_current_learning_rate: 
savev2_const
identity_25˘MergeV2Checkpoints˘Read/DisableCopyOnRead˘Read/ReadVariableOp˘Read_1/DisableCopyOnRead˘Read_1/ReadVariableOp˘Read_10/DisableCopyOnRead˘Read_10/ReadVariableOp˘Read_11/DisableCopyOnRead˘Read_11/ReadVariableOp˘Read_2/DisableCopyOnRead˘Read_2/ReadVariableOp˘Read_3/DisableCopyOnRead˘Read_3/ReadVariableOp˘Read_4/DisableCopyOnRead˘Read_4/ReadVariableOp˘Read_5/DisableCopyOnRead˘Read_5/ReadVariableOp˘Read_6/DisableCopyOnRead˘Read_6/ReadVariableOp˘Read_7/DisableCopyOnRead˘Read_7/ReadVariableOp˘Read_8/DisableCopyOnRead˘Read_8/ReadVariableOp˘Read_9/DisableCopyOnRead˘Read_9/ReadVariableOpw
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
: }
Read/DisableCopyOnReadDisableCopyOnRead+read_disablecopyonread_dense_surface_kernel"/device:CPU:0*
_output_shapes
 Š
Read/ReadVariableOpReadVariableOp+read_disablecopyonread_dense_surface_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_1/DisableCopyOnReadDisableCopyOnRead+read_1_disablecopyonread_dense_surface_bias"/device:CPU:0*
_output_shapes
 ¨
Read_1/ReadVariableOpReadVariableOp+read_1_disablecopyonread_dense_surface_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_2/DisableCopyOnReadDisableCopyOnRead,read_2_disablecopyonread_gru_gru_cell_kernel"/device:CPU:0*
_output_shapes
 ­
Read_2/ReadVariableOpReadVariableOp,read_2_disablecopyonread_gru_gru_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_3/DisableCopyOnReadDisableCopyOnRead6read_3_disablecopyonread_gru_gru_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ¸
Read_3/ReadVariableOpReadVariableOp6read_3_disablecopyonread_gru_gru_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
e

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
~
Read_4/DisableCopyOnReadDisableCopyOnRead*read_4_disablecopyonread_gru_gru_cell_bias"/device:CPU:0*
_output_shapes
 Ť
Read_4/ReadVariableOpReadVariableOp*read_4_disablecopyonread_gru_gru_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_5/DisableCopyOnReadDisableCopyOnRead.read_5_disablecopyonread_gru_1_gru_cell_kernel"/device:CPU:0*
_output_shapes
 °
Read_5/ReadVariableOpReadVariableOp.read_5_disablecopyonread_gru_1_gru_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0p
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_6/DisableCopyOnReadDisableCopyOnRead8read_6_disablecopyonread_gru_1_gru_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ş
Read_6/ReadVariableOpReadVariableOp8read_6_disablecopyonread_gru_1_gru_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_7/DisableCopyOnReadDisableCopyOnRead,read_7_disablecopyonread_gru_1_gru_cell_bias"/device:CPU:0*
_output_shapes
 ­
Read_7/ReadVariableOpReadVariableOp,read_7_disablecopyonread_gru_1_gru_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_8/DisableCopyOnReadDisableCopyOnRead,read_8_disablecopyonread_dense_output_kernel"/device:CPU:0*
_output_shapes
 ­
Read_8/ReadVariableOpReadVariableOp,read_8_disablecopyonread_dense_output_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	~
Read_9/DisableCopyOnReadDisableCopyOnRead*read_9_disablecopyonread_dense_output_bias"/device:CPU:0*
_output_shapes
 Ś
Read_9/ReadVariableOpReadVariableOp*read_9_disablecopyonread_dense_output_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: 
Read_11/DisableCopyOnReadDisableCopyOnRead/read_11_disablecopyonread_current_learning_rate"/device:CPU:0*
_output_shapes
 Š
Read_11/ReadVariableOpReadVariableOp/read_11_disablecopyonread_current_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: §
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Đ
valueĆBĂB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_current_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ç
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_24Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_25IdentityIdentity_24:output:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_25Identity_25:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_namedense_surface/kernel:2.
,
_user_specified_namedense_surface/bias:3/
-
_user_specified_namegru/gru_cell/kernel:=9
7
_user_specified_namegru/gru_cell/recurrent_kernel:1-
+
_user_specified_namegru/gru_cell/bias:51
/
_user_specified_namegru_1/gru_cell/kernel:?;
9
_user_specified_name!gru_1/gru_cell/recurrent_kernel:3/
-
_user_specified_namegru_1/gru_cell/bias:3	/
-
_user_specified_namedense_output/kernel:1
-
+
_user_specified_namedense_output/bias:)%
#
_user_specified_name	iteration:51
/
_user_specified_namecurrent_learning_rate:=9

_output_shapes
: 

_user_specified_nameConst

Ř
B__inference_gru_cell_layer_call_and_return_conditional_losses_6655

inputs
states_0*
readvariableop_resource:	2
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:

identity

identity_1˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOp˘ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ť!

while_body_3887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_gru_cell_3909_0:	)
while_gru_cell_3911_0:
)
while_gru_cell_3913_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_gru_cell_3909:	'
while_gru_cell_3911:
'
while_gru_cell_3913:
˘&while/gru_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0ď
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3909_0while_gru_cell_3911_0while_gru_cell_3913_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3874Ř
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*
_output_shapes
 ",
while_gru_cell_3909while_gru_cell_3909_0",
while_gru_cell_3911while_gru_cell_3911_0",
while_gru_cell_3913while_gru_cell_3913_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:$ 

_user_specified_name3909:$ 

_user_specified_name3911:$	 

_user_specified_name3913

Ř
B__inference_gru_cell_layer_call_and_return_conditional_losses_6694

inputs
states_0*
readvariableop_resource:	2
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:

identity

identity_1˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOp˘ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
öM
ő
?__inference_gru_1_layer_call_and_return_conditional_losses_6420

inputs3
 gru_cell_readvariableop_resource:	;
'gru_cell_matmul_readvariableop_resource:
=
)gru_cell_matmul_1_readvariableop_resource:

identity˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: u
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ĺ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_6331*
condR
while_cond_6330*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:2˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙2: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
˝N
÷
?__inference_gru_1_layer_call_and_return_conditional_losses_5955
inputs_03
 gru_cell_readvariableop_resource:	;
'gru_cell_matmul_readvariableop_resource:
=
)gru_cell_matmul_1_readvariableop_resource:

identity˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ~
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ĺ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5866*
condR
while_cond_5865*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ë=
í
while_body_5338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	B
/while_gru_cell_matmul_readvariableop_resource_0:	E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	@
-while_gru_cell_matmul_readvariableop_resource:	C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ß
 
while_cond_4649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_4649___redundant_placeholder02
.while_while_cond_4649___redundant_placeholder12
.while_while_cond_4649___redundant_placeholder22
.while_while_cond_4649___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ý
×
B__inference_gru_cell_layer_call_and_return_conditional_losses_6588

inputs
states_0*
readvariableop_resource:	1
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOp˘ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
­M

=__inference_gru_layer_call_and_return_conditional_losses_5736

inputs3
 gru_cell_readvariableop_resource:	:
'gru_cell_matmul_readvariableop_resource:	=
)gru_cell_matmul_1_readvariableop_resource:

identity

identity_1˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:1˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5646*
condR
while_cond_5645*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:1˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙1: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ď
ˇ
$__inference_gru_1_layer_call_fn_5789

inputs
unknown:	
	unknown_0:

	unknown_1:

identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_1_layer_call_and_return_conditional_losses_4565t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:˙˙˙˙˙˙˙˙˙2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs:$ 

_user_specified_name5781:$ 

_user_specified_name5783:$ 

_user_specified_name5785
Ž

Ć
"__inference_gru_layer_call_fn_5094
inputs_0
unknown:	
	unknown_0:	
	unknown_1:

identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_3753}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0:$ 

_user_specified_name5084:$ 

_user_specified_name5086:$ 

_user_specified_name5088
Ď=
ď
while_body_6176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	C
/while_gru_cell_matmul_readvariableop_resource_0:
E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	A
-while_gru_cell_matmul_readvariableop_resource:
C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
˙

×
'__inference_gru_cell_layer_call_fn_6510

inputs
states_0
unknown:	
	unknown_0:	
	unknown_1:

identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_3675p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:RN
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
states_0:$ 

_user_specified_name6500:$ 

_user_specified_name6502:$ 

_user_specified_name6504
­M

=__inference_gru_layer_call_and_return_conditional_losses_4740

inputs3
 gru_cell_readvariableop_resource:	:
'gru_cell_matmul_readvariableop_resource:	=
)gru_cell_matmul_1_readvariableop_resource:

identity

identity_1˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:1˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4650*
condR
while_cond_4649*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ă
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:1˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙1`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙1: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ű

"__inference_signature_wrapper_5068

inputs_aux
inputs_main
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:

	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:

	unknown_7:	
	unknown_8:
identity˘StatefulPartitionedCall˛
StatefulPartitionedCallStatefulPartitionedCallinputs_main
inputs_auxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_3467s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙1: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs_aux:XT
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
%
_user_specified_nameinputs_main:$ 

_user_specified_name5046:$ 

_user_specified_name5048:$ 

_user_specified_name5050:$ 

_user_specified_name5052:$ 

_user_specified_name5054:$ 

_user_specified_name5056:$ 

_user_specified_name5058:$	 

_user_specified_name5060:$
 

_user_specified_name5062:$ 

_user_specified_name5064
ß
 
while_cond_5337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5337___redundant_placeholder02
.while_while_cond_5337___redundant_placeholder12
.while_while_cond_5337___redundant_placeholder22
.while_while_cond_5337___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
÷

,__inference_dense_surface_layer_call_fn_5745

inputs
unknown:

	unknown_0:	
identity˘StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_surface_layer_call_and_return_conditional_losses_4401p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name5739:$ 

_user_specified_name5741
ő
Ő
B__inference_gru_cell_layer_call_and_return_conditional_losses_3532

inputs

states*
readvariableop_resource:	1
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:

identity

identity_1˘MatMul/ReadVariableOp˘MatMul_1/ReadVariableOp˘ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ś
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ů
š
$__inference_gru_1_layer_call_fn_5767
inputs_0
unknown:	
	unknown_0:

	unknown_1:

identity˘StatefulPartitionedCallń
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_1_layer_call_and_return_conditional_losses_3951}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0:$ 

_user_specified_name5759:$ 

_user_specified_name5761:$ 

_user_specified_name5763
ť!

while_body_4031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_gru_cell_4053_0:	)
while_gru_cell_4055_0:
)
while_gru_cell_4057_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_gru_cell_4053:	'
while_gru_cell_4055:
'
while_gru_cell_4057:
˘&while/gru_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0ď
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_4053_0while_gru_cell_4055_0while_gru_cell_4057_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_cell_layer_call_and_return_conditional_losses_4018Ř
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*
_output_shapes
 ",
while_gru_cell_4053while_gru_cell_4053_0",
while_gru_cell_4055while_gru_cell_4055_0",
while_gru_cell_4057while_gru_cell_4057_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:$ 

_user_specified_name4053:$ 

_user_specified_name4055:$	 

_user_specified_name4057
ëM

=__inference_gru_layer_call_and_return_conditional_losses_5274
inputs_03
 gru_cell_readvariableop_resource:	:
'gru_cell_matmul_readvariableop_resource:	=
)gru_cell_matmul_1_readvariableop_resource:

identity

identity_1˘gru_cell/MatMul/ReadVariableOp˘ gru_cell/MatMul_1/ReadVariableOp˘gru_cell/ReadVariableOp˘whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::íĎ]
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
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::íĎ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_masky
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes
:	*
dtype0s
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Á
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙í
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split|
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_5184*
condR
while_cond_5183*9
output_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ě
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
şJ


model_gru_while_body_31990
,model_gru_while_model_gru_while_loop_counter6
2model_gru_while_model_gru_while_maximum_iterations
model_gru_while_placeholder!
model_gru_while_placeholder_1!
model_gru_while_placeholder_2/
+model_gru_while_model_gru_strided_slice_1_0k
gmodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensor_0E
2model_gru_while_gru_cell_readvariableop_resource_0:	L
9model_gru_while_gru_cell_matmul_readvariableop_resource_0:	O
;model_gru_while_gru_cell_matmul_1_readvariableop_resource_0:

model_gru_while_identity
model_gru_while_identity_1
model_gru_while_identity_2
model_gru_while_identity_3
model_gru_while_identity_4-
)model_gru_while_model_gru_strided_slice_1i
emodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensorC
0model_gru_while_gru_cell_readvariableop_resource:	J
7model_gru_while_gru_cell_matmul_readvariableop_resource:	M
9model_gru_while_gru_cell_matmul_1_readvariableop_resource:
˘.model/gru/while/gru_cell/MatMul/ReadVariableOp˘0model/gru/while/gru_cell/MatMul_1/ReadVariableOp˘'model/gru/while/gru_cell/ReadVariableOp
Amodel/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Ř
3model/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemgmodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensor_0model_gru_while_placeholderJmodel/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
'model/gru/while/gru_cell/ReadVariableOpReadVariableOp2model_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
 model/gru/while/gru_cell/unstackUnpack/model/gru/while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numŠ
.model/gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp9model_gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Đ
model/gru/while/gru_cell/MatMulMatMul:model/gru/while/TensorArrayV2Read/TensorListGetItem:item:06model/gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´
 model/gru/while/gru_cell/BiasAddBiasAdd)model/gru/while/gru_cell/MatMul:product:0)model/gru/while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
(model/gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙ń
model/gru/while/gru_cell/splitSplit1model/gru/while/gru_cell/split/split_dim:output:0)model/gru/while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitŽ
0model/gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp;model_gru_while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ˇ
!model/gru/while/gru_cell/MatMul_1MatMulmodel_gru_while_placeholder_28model/gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
"model/gru/while/gru_cell/BiasAdd_1BiasAdd+model/gru/while/gru_cell/MatMul_1:product:0)model/gru/while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
model/gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙u
*model/gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙­
 model/gru/while/gru_cell/split_1SplitV+model/gru/while/gru_cell/BiasAdd_1:output:0'model/gru/while/gru_cell/Const:output:03model/gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitŹ
model/gru/while/gru_cell/addAddV2'model/gru/while/gru_cell/split:output:0)model/gru/while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 model/gru/while/gru_cell/SigmoidSigmoid model/gru/while/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ž
model/gru/while/gru_cell/add_1AddV2'model/gru/while/gru_cell/split:output:1)model/gru/while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
"model/gru/while/gru_cell/Sigmoid_1Sigmoid"model/gru/while/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Š
model/gru/while/gru_cell/mulMul&model/gru/while/gru_cell/Sigmoid_1:y:0)model/gru/while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ľ
model/gru/while/gru_cell/add_2AddV2'model/gru/while/gru_cell/split:output:2 model/gru/while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
model/gru/while/gru_cell/ReluRelu"model/gru/while/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model/gru/while/gru_cell/mul_1Mul$model/gru/while/gru_cell/Sigmoid:y:0model_gru_while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
model/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ľ
model/gru/while/gru_cell/subSub'model/gru/while/gru_cell/sub/x:output:0$model/gru/while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
model/gru/while/gru_cell/mul_2Mul model/gru/while/gru_cell/sub:z:0+model/gru/while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
model/gru/while/gru_cell/add_3AddV2"model/gru/while/gru_cell/mul_1:z:0"model/gru/while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙é
4model/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmodel_gru_while_placeholder_1model_gru_while_placeholder"model/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇW
model/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :z
model/gru/while/addAddV2model_gru_while_placeholdermodel/gru/while/add/y:output:0*
T0*
_output_shapes
: Y
model/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
model/gru/while/add_1AddV2,model_gru_while_model_gru_while_loop_counter model/gru/while/add_1/y:output:0*
T0*
_output_shapes
: w
model/gru/while/IdentityIdentitymodel/gru/while/add_1:z:0^model/gru/while/NoOp*
T0*
_output_shapes
: 
model/gru/while/Identity_1Identity2model_gru_while_model_gru_while_maximum_iterations^model/gru/while/NoOp*
T0*
_output_shapes
: w
model/gru/while/Identity_2Identitymodel/gru/while/add:z:0^model/gru/while/NoOp*
T0*
_output_shapes
: ¤
model/gru/while/Identity_3IdentityDmodel/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model/gru/while/NoOp*
T0*
_output_shapes
: 
model/gru/while/Identity_4Identity"model/gru/while/gru_cell/add_3:z:0^model/gru/while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
model/gru/while/NoOpNoOp/^model/gru/while/gru_cell/MatMul/ReadVariableOp1^model/gru/while/gru_cell/MatMul_1/ReadVariableOp(^model/gru/while/gru_cell/ReadVariableOp*
_output_shapes
 "x
9model_gru_while_gru_cell_matmul_1_readvariableop_resource;model_gru_while_gru_cell_matmul_1_readvariableop_resource_0"t
7model_gru_while_gru_cell_matmul_readvariableop_resource9model_gru_while_gru_cell_matmul_readvariableop_resource_0"f
0model_gru_while_gru_cell_readvariableop_resource2model_gru_while_gru_cell_readvariableop_resource_0"=
model_gru_while_identity!model/gru/while/Identity:output:0"A
model_gru_while_identity_1#model/gru/while/Identity_1:output:0"A
model_gru_while_identity_2#model/gru/while/Identity_2:output:0"A
model_gru_while_identity_3#model/gru/while/Identity_3:output:0"A
model_gru_while_identity_4#model/gru/while/Identity_4:output:0"X
)model_gru_while_model_gru_strided_slice_1+model_gru_while_model_gru_strided_slice_1_0"Đ
emodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensorgmodel_gru_while_tensorarrayv2read_tensorlistgetitem_model_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2`
.model/gru/while/gru_cell/MatMul/ReadVariableOp.model/gru/while/gru_cell/MatMul/ReadVariableOp2d
0model/gru/while/gru_cell/MatMul_1/ReadVariableOp0model/gru/while/gru_cell/MatMul_1/ReadVariableOp2R
'model/gru/while/gru_cell/ReadVariableOp'model/gru/while/gru_cell/ReadVariableOp:T P

_output_shapes
: 
6
_user_specified_namemodel/gru/while/loop_counter:ZV

_output_shapes
: 
<
_user_specified_name$"model/gru/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:QM

_output_shapes
: 
3
_user_specified_namemodel/gru/strided_slice_1:ie

_output_shapes
: 
K
_user_specified_name31model/gru/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ß
 
while_cond_5865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_12
.while_while_cond_5865___redundant_placeholder02
.while_while_cond_5865___redundant_placeholder12
.while_while_cond_5865___redundant_placeholder22
.while_while_cond_5865___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :˙˙˙˙˙˙˙˙˙: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ž

Ć
"__inference_gru_layer_call_fn_5081
inputs_0
unknown:	
	unknown_0:	
	unknown_1:

identity

identity_1˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_3610}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_0:$ 

_user_specified_name5071:$ 

_user_specified_name5073:$ 

_user_specified_name5075
&
É
?__inference_model_layer_call_and_return_conditional_losses_4583
inputs_main

inputs_aux
gru_4381:	
gru_4383:	
gru_4385:
&
dense_surface_4402:
!
dense_surface_4404:	

gru_1_4566:	

gru_1_4568:


gru_1_4570:
$
dense_output_4575:	
dense_output_4577:
identity˘$dense_output/StatefulPartitionedCall˘%dense_surface/StatefulPartitionedCall˘gru/StatefulPartitionedCall˘gru_1/StatefulPartitionedCall
gru/StatefulPartitionedCallStatefulPartitionedCallinputs_maingru_4381gru_4383gru_4385*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_gru_layer_call_and_return_conditional_losses_4380Y
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ž
tf.concat_3/concatConcatV2$gru/StatefulPartitionedCall:output:1
inputs_aux tf.concat_3/concat/axis:output:0*
N*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%dense_surface/StatefulPartitionedCallStatefulPartitionedCalltf.concat_3/concat:output:0dense_surface_4402dense_surface_4404*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_surface_layer_call_and_return_conditional_losses_4401o
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"˙˙˙˙      Ť
tf.reshape_1/ReshapeReshape.dense_surface/StatefulPartitionedCall:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
tf.concat_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
tf.concat_4/concatConcatV2$gru/StatefulPartitionedCall:output:0tf.reshape_1/Reshape:output:0 tf.concat_4/concat/axis:output:0*
N*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
gru_1/StatefulPartitionedCallStatefulPartitionedCalltf.concat_4/concat:output:0
gru_1_4566
gru_1_4568
gru_1_4570*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gru_1_layer_call_and_return_conditional_losses_4565Y
tf.concat_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
tf.concat_5/concatConcatV2tf.concat_4/concat:output:0&gru_1/StatefulPartitionedCall:output:0 tf.concat_5/concat/axis:output:0*
N*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙2
$dense_output/StatefulPartitionedCallStatefulPartitionedCalltf.concat_5/concat:output:0dense_output_4575dense_output_4577*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:˙˙˙˙˙˙˙˙˙2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_output_layer_call_and_return_conditional_losses_4176k
dense_output/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
dense_output/ReshapeReshapetf.concat_5/concat:output:0#dense_output/Reshape/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙2Ż
NoOpNoOp%^dense_output/StatefulPartitionedCall&^dense_surface/StatefulPartitionedCall^gru/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:˙˙˙˙˙˙˙˙˙1:˙˙˙˙˙˙˙˙˙: : : : : : : : : : 2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2N
%dense_surface/StatefulPartitionedCall%dense_surface/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:X T
+
_output_shapes
:˙˙˙˙˙˙˙˙˙1
%
_user_specified_nameinputs_main:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs_aux:$ 

_user_specified_name4381:$ 

_user_specified_name4383:$ 

_user_specified_name4385:$ 

_user_specified_name4402:$ 

_user_specified_name4404:$ 

_user_specified_name4566:$ 

_user_specified_name4568:$	 

_user_specified_name4570:$
 

_user_specified_name4575:$ 

_user_specified_name4577
Ď=
ď
while_body_5866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
(while_gru_cell_readvariableop_resource_0:	C
/while_gru_cell_matmul_readvariableop_resource_0:
E
1while_gru_cell_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
&while_gru_cell_readvariableop_resource:	A
-while_gru_cell_matmul_readvariableop_resource:
C
/while_gru_cell_matmul_1_readvariableop_resource:
˘$while/gru_cell/MatMul/ReadVariableOp˘&while/gru_cell/MatMul_1/ReadVariableOp˘while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0˛
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ó
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ˙˙˙˙k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŇM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :˙˙˙˙˙˙˙˙˙: : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource"íL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultî
A

inputs_aux3
serving_default_inputs_aux:0˙˙˙˙˙˙˙˙˙
G
inputs_main8
serving_default_inputs_main:0˙˙˙˙˙˙˙˙˙1D
dense_output4
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙2tensorflow/serving/predict:Ńű
×
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ú
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
ť
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
(
'	keras_api"
_tf_keras_layer
(
(	keras_api"
_tf_keras_layer
Ú
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/_random_generator
0cell
1
state_spec"
_tf_keras_rnn_layer
(
2	keras_api"
_tf_keras_layer
°
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
	9layer"
_tf_keras_layer
f
:0
;1
<2
%3
&4
=5
>6
?7
@8
A9"
trackable_list_wrapper
f
:0
;1
<2
%3
&4
=5
>6
?7
@8
A9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ť
Gtrace_0
Htrace_12
$__inference_model_layer_call_fn_4958
$__inference_model_layer_call_fn_4984ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zGtrace_0zHtrace_1
ń
Itrace_0
Jtrace_12ş
?__inference_model_layer_call_and_return_conditional_losses_4583
?__inference_model_layer_call_and_return_conditional_losses_4932ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zItrace_0zJtrace_1
ÚB×
__inference__wrapped_model_3467inputs_main
inputs_aux"
˛
FullArgSpec
args

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
r
K
_variables
L_iterations
M_current_learning_rate
N_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
,
Oserving_default"
signature_map
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
š

Pstates
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Č
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32Ý
"__inference_gru_layer_call_fn_5081
"__inference_gru_layer_call_fn_5094
"__inference_gru_layer_call_fn_5107
"__inference_gru_layer_call_fn_5120Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
´
Ztrace_0
[trace_1
\trace_2
]trace_32É
=__inference_gru_layer_call_and_return_conditional_losses_5274
=__inference_gru_layer_call_and_return_conditional_losses_5428
=__inference_gru_layer_call_and_return_conditional_losses_5582
=__inference_gru_layer_call_and_return_conditional_losses_5736Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zZtrace_0z[trace_1z\trace_2z]trace_3
"
_generic_user_object
č
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d_random_generator

:kernel
;recurrent_kernel
<bias"
_tf_keras_layer
 "
trackable_list_wrapper
"
_generic_user_object
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
ć
jtrace_02É
,__inference_dense_surface_layer_call_fn_5745
˛
FullArgSpec
args

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
annotationsŞ *
 zjtrace_0

ktrace_02ä
G__inference_dense_surface_layer_call_and_return_conditional_losses_5756
˛
FullArgSpec
args

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
annotationsŞ *
 zktrace_0
(:&
2dense_surface/kernel
!:2dense_surface/bias
"
_generic_user_object
"
_generic_user_object
5
=0
>1
?2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
š

lstates
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Đ
rtrace_0
strace_1
ttrace_2
utrace_32ĺ
$__inference_gru_1_layer_call_fn_5767
$__inference_gru_1_layer_call_fn_5778
$__inference_gru_1_layer_call_fn_5789
$__inference_gru_1_layer_call_fn_5800Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zrtrace_0zstrace_1zttrace_2zutrace_3
ź
vtrace_0
wtrace_1
xtrace_2
ytrace_32Ń
?__inference_gru_1_layer_call_and_return_conditional_losses_5955
?__inference_gru_1_layer_call_and_return_conditional_losses_6110
?__inference_gru_1_layer_call_and_return_conditional_losses_6265
?__inference_gru_1_layer_call_and_return_conditional_losses_6420Ę
Ă˛ż
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults˘

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
"
_generic_user_object
é
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
_random_generator

=kernel
>recurrent_kernel
?bias"
_tf_keras_layer
 "
trackable_list_wrapper
"
_generic_user_object
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
Í
trace_0
trace_12
+__inference_dense_output_layer_call_fn_6429
+__inference_dense_output_layer_call_fn_6438ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1

trace_0
trace_12Č
F__inference_dense_output_layer_call_and_return_conditional_losses_6460
F__inference_dense_output_layer_call_and_return_conditional_losses_6482ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

@kernel
Abias"
_tf_keras_layer
&:$	2gru/gru_cell/kernel
1:/
2gru/gru_cell/recurrent_kernel
$:"	2gru/gru_cell/bias
):'
2gru_1/gru_cell/kernel
3:1
2gru_1/gru_cell/recurrent_kernel
&:$	2gru_1/gru_cell/bias
&:$	2dense_output/kernel
:2dense_output/bias
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
óBđ
$__inference_model_layer_call_fn_4958inputs_main
inputs_aux"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
óBđ
$__inference_model_layer_call_fn_4984inputs_main
inputs_aux"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
?__inference_model_layer_call_and_return_conditional_losses_4583inputs_main
inputs_aux"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
?__inference_model_layer_call_and_return_conditional_losses_4932inputs_main
inputs_aux"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
'
L0"
trackable_list_wrapper
:	 2	iteration
: 2current_learning_rate
ľ2˛Ż
Ś˛˘
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
îBë
"__inference_signature_wrapper_5068
inputs_auxinputs_main"Ť
¤˛ 
FullArgSpec
args 
varargs
 
varkw
 
defaults
 .

kwonlyargs 
j
inputs_aux
jinputs_main
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
óBđ
"__inference_gru_layer_call_fn_5081inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
óBđ
"__inference_gru_layer_call_fn_5094inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ńBî
"__inference_gru_layer_call_fn_5107inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ńBî
"__inference_gru_layer_call_fn_5120inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
=__inference_gru_layer_call_and_return_conditional_losses_5274inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
=__inference_gru_layer_call_and_return_conditional_losses_5428inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
=__inference_gru_layer_call_and_return_conditional_losses_5582inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
=__inference_gru_layer_call_and_return_conditional_losses_5736inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
Ă
trace_0
trace_12
'__inference_gru_cell_layer_call_fn_6496
'__inference_gru_cell_layer_call_fn_6510ł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1
ů
trace_0
trace_12ž
B__inference_gru_cell_layer_call_and_return_conditional_losses_6549
B__inference_gru_cell_layer_call_and_return_conditional_losses_6588ł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1
"
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
ÖBÓ
,__inference_dense_surface_layer_call_fn_5745inputs"
˛
FullArgSpec
args

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
annotationsŞ *
 
ńBî
G__inference_dense_surface_layer_call_and_return_conditional_losses_5756inputs"
˛
FullArgSpec
args

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
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
00"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
őBň
$__inference_gru_1_layer_call_fn_5767inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
$__inference_gru_1_layer_call_fn_5778inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
óBđ
$__inference_gru_1_layer_call_fn_5789inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
óBđ
$__inference_gru_1_layer_call_fn_5800inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
?__inference_gru_1_layer_call_and_return_conditional_losses_5955inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
?__inference_gru_1_layer_call_and_return_conditional_losses_6110inputs_0"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
?__inference_gru_1_layer_call_and_return_conditional_losses_6265inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
?__inference_gru_1_layer_call_and_return_conditional_losses_6420inputs"˝
ś˛˛
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5
=0
>1
?2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ă
trace_0
trace_12
'__inference_gru_cell_layer_call_fn_6602
'__inference_gru_cell_layer_call_fn_6616ł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1
ů
 trace_0
Ątrace_12ž
B__inference_gru_cell_layer_call_and_return_conditional_losses_6655
B__inference_gru_cell_layer_call_and_return_conditional_losses_6694ł
Ź˛¨
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z trace_0zĄtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
'
90"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
éBć
+__inference_dense_output_layer_call_fn_6429inputs"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
éBć
+__inference_dense_output_layer_call_fn_6438inputs"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
F__inference_dense_output_layer_call_and_return_conditional_losses_6460inputs"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
F__inference_dense_output_layer_call_and_return_conditional_losses_6482inputs"Ź
Ľ˛Ą
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
˘non_trainable_variables
Łlayers
¤metrics
 Ľlayer_regularization_losses
Ślayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ŕ
§trace_02Á
$__inference_dense_layer_call_fn_6703
˛
FullArgSpec
args

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
annotationsŞ *
 z§trace_0
ű
¨trace_02Ü
?__inference_dense_layer_call_and_return_conditional_losses_6714
˛
FullArgSpec
args

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
annotationsŞ *
 z¨trace_0
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
ńBî
'__inference_gru_cell_layer_call_fn_6496inputsstates_0"Ž
§˛Ł
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ńBî
'__inference_gru_cell_layer_call_fn_6510inputsstates_0"Ž
§˛Ł
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
B__inference_gru_cell_layer_call_and_return_conditional_losses_6549inputsstates_0"Ž
§˛Ł
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
B__inference_gru_cell_layer_call_and_return_conditional_losses_6588inputsstates_0"Ž
§˛Ł
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
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
ńBî
'__inference_gru_cell_layer_call_fn_6602inputsstates_0"Ž
§˛Ł
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ńBî
'__inference_gru_cell_layer_call_fn_6616inputsstates_0"Ž
§˛Ł
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
B__inference_gru_cell_layer_call_and_return_conditional_losses_6655inputsstates_0"Ž
§˛Ł
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
B__inference_gru_cell_layer_call_and_return_conditional_losses_6694inputsstates_0"Ž
§˛Ł
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
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
ÎBË
$__inference_dense_layer_call_fn_6703inputs"
˛
FullArgSpec
args

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
annotationsŞ *
 
éBć
?__inference_dense_layer_call_and_return_conditional_losses_6714inputs"
˛
FullArgSpec
args

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
annotationsŞ *
 Ö
__inference__wrapped_model_3467˛
<:;%&?=>@Ac˘`
Y˘V
TQ
)&
inputs_main˙˙˙˙˙˙˙˙˙1
$!

inputs_aux˙˙˙˙˙˙˙˙˙
Ş "?Ş<
:
dense_output*'
dense_output˙˙˙˙˙˙˙˙˙2§
?__inference_dense_layer_call_and_return_conditional_losses_6714d@A0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 
$__inference_dense_layer_call_fn_6703Y@A0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ń
F__inference_dense_output_layer_call_and_return_conditional_losses_6460@AE˘B
;˘8
.+
inputs˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
p

 
Ş "9˘6
/,
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ń
F__inference_dense_output_layer_call_and_return_conditional_losses_6482@AE˘B
;˘8
.+
inputs˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
p 

 
Ş "9˘6
/,
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ş
+__inference_dense_output_layer_call_fn_6429{@AE˘B
;˘8
.+
inputs˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
p

 
Ş ".+
unknown˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ş
+__inference_dense_output_layer_call_fn_6438{@AE˘B
;˘8
.+
inputs˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
p 

 
Ş ".+
unknown˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙°
G__inference_dense_surface_layer_call_and_return_conditional_losses_5756e%&0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 
,__inference_dense_surface_layer_call_fn_5745Z%&0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş ""
unknown˙˙˙˙˙˙˙˙˙×
?__inference_gru_1_layer_call_and_return_conditional_losses_5955?=>P˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş ":˘7
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 ×
?__inference_gru_1_layer_call_and_return_conditional_losses_6110?=>P˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş ":˘7
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 ˝
?__inference_gru_1_layer_call_and_return_conditional_losses_6265z?=>@˘=
6˘3
%"
inputs˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "1˘.
'$
tensor_0˙˙˙˙˙˙˙˙˙2
 ˝
?__inference_gru_1_layer_call_and_return_conditional_losses_6420z?=>@˘=
6˘3
%"
inputs˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "1˘.
'$
tensor_0˙˙˙˙˙˙˙˙˙2
 ą
$__inference_gru_1_layer_call_fn_5767?=>P˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "/,
unknown˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ą
$__inference_gru_1_layer_call_fn_5778?=>P˘M
F˘C
52
0-
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "/,
unknown˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
$__inference_gru_1_layer_call_fn_5789o?=>@˘=
6˘3
%"
inputs˙˙˙˙˙˙˙˙˙2

 
p

 
Ş "&#
unknown˙˙˙˙˙˙˙˙˙2
$__inference_gru_1_layer_call_fn_5800o?=>@˘=
6˘3
%"
inputs˙˙˙˙˙˙˙˙˙2

 
p 

 
Ş "&#
unknown˙˙˙˙˙˙˙˙˙2
B__inference_gru_cell_layer_call_and_return_conditional_losses_6549Č<:;]˘Z
S˘P
 
inputs˙˙˙˙˙˙˙˙˙
(˘%
# 
states_0˙˙˙˙˙˙˙˙˙
p
Ş "b˘_
X˘U
%"

tensor_0_0˙˙˙˙˙˙˙˙˙
,)
'$
tensor_0_1_0˙˙˙˙˙˙˙˙˙
 
B__inference_gru_cell_layer_call_and_return_conditional_losses_6588Č<:;]˘Z
S˘P
 
inputs˙˙˙˙˙˙˙˙˙
(˘%
# 
states_0˙˙˙˙˙˙˙˙˙
p 
Ş "b˘_
X˘U
%"

tensor_0_0˙˙˙˙˙˙˙˙˙
,)
'$
tensor_0_1_0˙˙˙˙˙˙˙˙˙
 
B__inference_gru_cell_layer_call_and_return_conditional_losses_6655É?=>^˘[
T˘Q
!
inputs˙˙˙˙˙˙˙˙˙
(˘%
# 
states_0˙˙˙˙˙˙˙˙˙
p
Ş "b˘_
X˘U
%"

tensor_0_0˙˙˙˙˙˙˙˙˙
,)
'$
tensor_0_1_0˙˙˙˙˙˙˙˙˙
 
B__inference_gru_cell_layer_call_and_return_conditional_losses_6694É?=>^˘[
T˘Q
!
inputs˙˙˙˙˙˙˙˙˙
(˘%
# 
states_0˙˙˙˙˙˙˙˙˙
p 
Ş "b˘_
X˘U
%"

tensor_0_0˙˙˙˙˙˙˙˙˙
,)
'$
tensor_0_1_0˙˙˙˙˙˙˙˙˙
 ć
'__inference_gru_cell_layer_call_fn_6496ş<:;]˘Z
S˘P
 
inputs˙˙˙˙˙˙˙˙˙
(˘%
# 
states_0˙˙˙˙˙˙˙˙˙
p
Ş "T˘Q
# 
tensor_0˙˙˙˙˙˙˙˙˙
*'
%"

tensor_1_0˙˙˙˙˙˙˙˙˙ć
'__inference_gru_cell_layer_call_fn_6510ş<:;]˘Z
S˘P
 
inputs˙˙˙˙˙˙˙˙˙
(˘%
# 
states_0˙˙˙˙˙˙˙˙˙
p 
Ş "T˘Q
# 
tensor_0˙˙˙˙˙˙˙˙˙
*'
%"

tensor_1_0˙˙˙˙˙˙˙˙˙ç
'__inference_gru_cell_layer_call_fn_6602ť?=>^˘[
T˘Q
!
inputs˙˙˙˙˙˙˙˙˙
(˘%
# 
states_0˙˙˙˙˙˙˙˙˙
p
Ş "T˘Q
# 
tensor_0˙˙˙˙˙˙˙˙˙
*'
%"

tensor_1_0˙˙˙˙˙˙˙˙˙ç
'__inference_gru_cell_layer_call_fn_6616ť?=>^˘[
T˘Q
!
inputs˙˙˙˙˙˙˙˙˙
(˘%
# 
states_0˙˙˙˙˙˙˙˙˙
p 
Ş "T˘Q
# 
tensor_0˙˙˙˙˙˙˙˙˙
*'
%"

tensor_1_0˙˙˙˙˙˙˙˙˙
=__inference_gru_layer_call_and_return_conditional_losses_5274Ŕ<:;O˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "h˘e
^[
2/

tensor_0_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
%"

tensor_0_1˙˙˙˙˙˙˙˙˙
 
=__inference_gru_layer_call_and_return_conditional_losses_5428Ŕ<:;O˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "h˘e
^[
2/

tensor_0_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
%"

tensor_0_1˙˙˙˙˙˙˙˙˙
 é
=__inference_gru_layer_call_and_return_conditional_losses_5582§<:;?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙1

 
p

 
Ş "_˘\
UR
)&

tensor_0_0˙˙˙˙˙˙˙˙˙1
%"

tensor_0_1˙˙˙˙˙˙˙˙˙
 é
=__inference_gru_layer_call_and_return_conditional_losses_5736§<:;?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙1

 
p 

 
Ş "_˘\
UR
)&

tensor_0_0˙˙˙˙˙˙˙˙˙1
%"

tensor_0_1˙˙˙˙˙˙˙˙˙
 Ů
"__inference_gru_layer_call_fn_5081˛<:;O˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p

 
Ş "ZW
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
# 
tensor_1˙˙˙˙˙˙˙˙˙Ů
"__inference_gru_layer_call_fn_5094˛<:;O˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
p 

 
Ş "ZW
0-
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
# 
tensor_1˙˙˙˙˙˙˙˙˙Ŕ
"__inference_gru_layer_call_fn_5107<:;?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙1

 
p

 
Ş "QN
'$
tensor_0˙˙˙˙˙˙˙˙˙1
# 
tensor_1˙˙˙˙˙˙˙˙˙Ŕ
"__inference_gru_layer_call_fn_5120<:;?˘<
5˘2
$!
inputs˙˙˙˙˙˙˙˙˙1

 
p 

 
Ş "QN
'$
tensor_0˙˙˙˙˙˙˙˙˙1
# 
tensor_1˙˙˙˙˙˙˙˙˙ď
?__inference_model_layer_call_and_return_conditional_losses_4583Ť
<:;%&?=>@Ak˘h
a˘^
TQ
)&
inputs_main˙˙˙˙˙˙˙˙˙1
$!

inputs_aux˙˙˙˙˙˙˙˙˙
p

 
Ş "0˘-
&#
tensor_0˙˙˙˙˙˙˙˙˙2
 ď
?__inference_model_layer_call_and_return_conditional_losses_4932Ť
<:;%&?=>@Ak˘h
a˘^
TQ
)&
inputs_main˙˙˙˙˙˙˙˙˙1
$!

inputs_aux˙˙˙˙˙˙˙˙˙
p 

 
Ş "0˘-
&#
tensor_0˙˙˙˙˙˙˙˙˙2
 É
$__inference_model_layer_call_fn_4958 
<:;%&?=>@Ak˘h
a˘^
TQ
)&
inputs_main˙˙˙˙˙˙˙˙˙1
$!

inputs_aux˙˙˙˙˙˙˙˙˙
p

 
Ş "%"
unknown˙˙˙˙˙˙˙˙˙2É
$__inference_model_layer_call_fn_4984 
<:;%&?=>@Ak˘h
a˘^
TQ
)&
inputs_main˙˙˙˙˙˙˙˙˙1
$!

inputs_aux˙˙˙˙˙˙˙˙˙
p 

 
Ş "%"
unknown˙˙˙˙˙˙˙˙˙2ń
"__inference_signature_wrapper_5068Ę
<:;%&?=>@A{˘x
˘ 
qŞn
2

inputs_aux$!

inputs_aux˙˙˙˙˙˙˙˙˙
8
inputs_main)&
inputs_main˙˙˙˙˙˙˙˙˙1"?Ş<
:
dense_output*'
dense_output˙˙˙˙˙˙˙˙˙2