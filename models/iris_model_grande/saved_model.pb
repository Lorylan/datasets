د	
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
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
�
Adam/v/layer110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/layer110/bias
y
(Adam/v/layer110/bias/Read/ReadVariableOpReadVariableOpAdam/v/layer110/bias*
_output_shapes
:*
dtype0
�
Adam/m/layer110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/layer110/bias
y
(Adam/m/layer110/bias/Read/ReadVariableOpReadVariableOpAdam/m/layer110/bias*
_output_shapes
:*
dtype0
�
Adam/v/layer110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/layer110/kernel
�
*Adam/v/layer110/kernel/Read/ReadVariableOpReadVariableOpAdam/v/layer110/kernel*
_output_shapes

:*
dtype0
�
Adam/m/layer110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/layer110/kernel
�
*Adam/m/layer110/kernel/Read/ReadVariableOpReadVariableOpAdam/m/layer110/kernel*
_output_shapes

:*
dtype0
�
Adam/v/hidden_layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/v/hidden_layer_3/bias
�
.Adam/v/hidden_layer_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/hidden_layer_3/bias*
_output_shapes
:*
dtype0
�
Adam/m/hidden_layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/m/hidden_layer_3/bias
�
.Adam/m/hidden_layer_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/hidden_layer_3/bias*
_output_shapes
:*
dtype0
�
Adam/v/hidden_layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameAdam/v/hidden_layer_3/kernel
�
0Adam/v/hidden_layer_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/hidden_layer_3/kernel*
_output_shapes

: *
dtype0
�
Adam/m/hidden_layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameAdam/m/hidden_layer_3/kernel
�
0Adam/m/hidden_layer_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/hidden_layer_3/kernel*
_output_shapes

: *
dtype0
�
Adam/v/hidden_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/v/hidden_layer_2/bias
�
.Adam/v/hidden_layer_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/hidden_layer_2/bias*
_output_shapes
: *
dtype0
�
Adam/m/hidden_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/m/hidden_layer_2/bias
�
.Adam/m/hidden_layer_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/hidden_layer_2/bias*
_output_shapes
: *
dtype0
�
Adam/v/hidden_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *-
shared_nameAdam/v/hidden_layer_2/kernel
�
0Adam/v/hidden_layer_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/hidden_layer_2/kernel*
_output_shapes

:@ *
dtype0
�
Adam/m/hidden_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *-
shared_nameAdam/m/hidden_layer_2/kernel
�
0Adam/m/hidden_layer_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/hidden_layer_2/kernel*
_output_shapes

:@ *
dtype0
�
Adam/v/hidden_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/v/hidden_layer_1/bias
�
.Adam/v/hidden_layer_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/hidden_layer_1/bias*
_output_shapes
:@*
dtype0
�
Adam/m/hidden_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/m/hidden_layer_1/bias
�
.Adam/m/hidden_layer_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/hidden_layer_1/bias*
_output_shapes
:@*
dtype0
�
Adam/v/hidden_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*-
shared_nameAdam/v/hidden_layer_1/kernel
�
0Adam/v/hidden_layer_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/hidden_layer_1/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/hidden_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*-
shared_nameAdam/m/hidden_layer_1/kernel
�
0Adam/m/hidden_layer_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/hidden_layer_1/kernel*
_output_shapes

:@*
dtype0
|
Adam/v/layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/layer1/bias
u
&Adam/v/layer1/bias/Read/ReadVariableOpReadVariableOpAdam/v/layer1/bias*
_output_shapes
:*
dtype0
|
Adam/m/layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/layer1/bias
u
&Adam/m/layer1/bias/Read/ReadVariableOpReadVariableOpAdam/m/layer1/bias*
_output_shapes
:*
dtype0
�
Adam/v/layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/v/layer1/kernel
}
(Adam/v/layer1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/layer1/kernel*
_output_shapes

:*
dtype0
�
Adam/m/layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/m/layer1/kernel
}
(Adam/m/layer1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/layer1/kernel*
_output_shapes

:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
layer110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer110/bias
k
!layer110/bias/Read/ReadVariableOpReadVariableOplayer110/bias*
_output_shapes
:*
dtype0
z
layer110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namelayer110/kernel
s
#layer110/kernel/Read/ReadVariableOpReadVariableOplayer110/kernel*
_output_shapes

:*
dtype0
~
hidden_layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namehidden_layer_3/bias
w
'hidden_layer_3/bias/Read/ReadVariableOpReadVariableOphidden_layer_3/bias*
_output_shapes
:*
dtype0
�
hidden_layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_namehidden_layer_3/kernel

)hidden_layer_3/kernel/Read/ReadVariableOpReadVariableOphidden_layer_3/kernel*
_output_shapes

: *
dtype0
~
hidden_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namehidden_layer_2/bias
w
'hidden_layer_2/bias/Read/ReadVariableOpReadVariableOphidden_layer_2/bias*
_output_shapes
: *
dtype0
�
hidden_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_namehidden_layer_2/kernel

)hidden_layer_2/kernel/Read/ReadVariableOpReadVariableOphidden_layer_2/kernel*
_output_shapes

:@ *
dtype0
~
hidden_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namehidden_layer_1/bias
w
'hidden_layer_1/bias/Read/ReadVariableOpReadVariableOphidden_layer_1/bias*
_output_shapes
:@*
dtype0
�
hidden_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_namehidden_layer_1/kernel

)hidden_layer_1/kernel/Read/ReadVariableOpReadVariableOphidden_layer_1/kernel*
_output_shapes

:@*
dtype0
n
layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer1/bias
g
layer1/bias/Read/ReadVariableOpReadVariableOplayer1/bias*
_output_shapes
:*
dtype0
v
layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namelayer1/kernel
o
!layer1/kernel/Read/ReadVariableOpReadVariableOplayer1/kernel*
_output_shapes

:*
dtype0

serving_default_layer1_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_layer1_inputlayer1/kernellayer1/biashidden_layer_1/kernelhidden_layer_1/biashidden_layer_2/kernelhidden_layer_2/biashidden_layer_3/kernelhidden_layer_3/biaslayer110/kernellayer110/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_7449

NoOpNoOp
�@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�?
value�?B�? B�?
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias*
J
0
1
2
3
%4
&5
-6
.7
58
69*
J
0
1
2
3
%4
&5
-6
.7
58
69*
* 
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
<trace_0
=trace_1
>trace_2
?trace_3* 
6
@trace_0
Atrace_1
Btrace_2
Ctrace_3* 
* 
�
D
_variables
E_iterations
F_learning_rate
G_index_dict
H
_momentums
I_velocities
J_update_step_xla*

Kserving_default* 

0
1*

0
1*
* 
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Qtrace_0* 

Rtrace_0* 
]W
VARIABLE_VALUElayer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Xtrace_0* 

Ytrace_0* 
e_
VARIABLE_VALUEhidden_layer_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEhidden_layer_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

_trace_0* 

`trace_0* 
e_
VARIABLE_VALUEhidden_layer_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEhidden_layer_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
e_
VARIABLE_VALUEhidden_layer_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEhidden_layer_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

50
61*
* 
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

mtrace_0* 

ntrace_0* 
_Y
VARIABLE_VALUElayer110/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElayer110/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

o0
p1*
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
�
E0
q1
r2
s3
t4
u5
v6
w7
x8
y9
z10
{11
|12
}13
~14
15
�16
�17
�18
�19
�20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
L
q0
s1
u2
w3
y4
{5
}6
7
�8
�9*
M
r0
t1
v2
x3
z4
|5
~6
�7
�8
�9*
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
_Y
VARIABLE_VALUEAdam/m/layer1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/layer1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/layer1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/layer1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/hidden_layer_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/hidden_layer_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/hidden_layer_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/hidden_layer_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/hidden_layer_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/hidden_layer_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/hidden_layer_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/hidden_layer_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/hidden_layer_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/hidden_layer_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/hidden_layer_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/hidden_layer_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/layer110/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/layer110/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/layer110/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/layer110/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biashidden_layer_1/kernelhidden_layer_1/biashidden_layer_2/kernelhidden_layer_2/biashidden_layer_3/kernelhidden_layer_3/biaslayer110/kernellayer110/bias	iterationlearning_rateAdam/m/layer1/kernelAdam/v/layer1/kernelAdam/m/layer1/biasAdam/v/layer1/biasAdam/m/hidden_layer_1/kernelAdam/v/hidden_layer_1/kernelAdam/m/hidden_layer_1/biasAdam/v/hidden_layer_1/biasAdam/m/hidden_layer_2/kernelAdam/v/hidden_layer_2/kernelAdam/m/hidden_layer_2/biasAdam/v/hidden_layer_2/biasAdam/m/hidden_layer_3/kernelAdam/v/hidden_layer_3/kernelAdam/m/hidden_layer_3/biasAdam/v/hidden_layer_3/biasAdam/m/layer110/kernelAdam/v/layer110/kernelAdam/m/layer110/biasAdam/v/layer110/biastotal_1count_1totalcountConst*1
Tin*
(2&*
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
GPU 2J 8� *&
f!R
__inference__traced_save_7916
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biashidden_layer_1/kernelhidden_layer_1/biashidden_layer_2/kernelhidden_layer_2/biashidden_layer_3/kernelhidden_layer_3/biaslayer110/kernellayer110/bias	iterationlearning_rateAdam/m/layer1/kernelAdam/v/layer1/kernelAdam/m/layer1/biasAdam/v/layer1/biasAdam/m/hidden_layer_1/kernelAdam/v/hidden_layer_1/kernelAdam/m/hidden_layer_1/biasAdam/v/hidden_layer_1/biasAdam/m/hidden_layer_2/kernelAdam/v/hidden_layer_2/kernelAdam/m/hidden_layer_2/biasAdam/v/hidden_layer_2/biasAdam/m/hidden_layer_3/kernelAdam/v/hidden_layer_3/kernelAdam/m/hidden_layer_3/biasAdam/v/hidden_layer_3/biasAdam/m/layer110/kernelAdam/v/layer110/kernelAdam/m/layer110/biasAdam/v/layer110/biastotal_1count_1totalcount*0
Tin)
'2%*
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_8034��
�
�
%__inference_layer1_layer_call_fn_7586

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_7107o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
"__inference_signature_wrapper_7449
layer1_input
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllayer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__wrapped_model_7092o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelayer1_input
�
�
-__inference_hidden_layer_1_layer_call_fn_7606

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�/
�
D__inference_sequential_layer_call_and_return_conditional_losses_7538

inputs7
%layer1_matmul_readvariableop_resource:4
&layer1_biasadd_readvariableop_resource:?
-hidden_layer_1_matmul_readvariableop_resource:@<
.hidden_layer_1_biasadd_readvariableop_resource:@?
-hidden_layer_2_matmul_readvariableop_resource:@ <
.hidden_layer_2_biasadd_readvariableop_resource: ?
-hidden_layer_3_matmul_readvariableop_resource: <
.hidden_layer_3_biasadd_readvariableop_resource:9
'layer110_matmul_readvariableop_resource:6
(layer110_biasadd_readvariableop_resource:
identity��%hidden_layer_1/BiasAdd/ReadVariableOp�$hidden_layer_1/MatMul/ReadVariableOp�%hidden_layer_2/BiasAdd/ReadVariableOp�$hidden_layer_2/MatMul/ReadVariableOp�%hidden_layer_3/BiasAdd/ReadVariableOp�$hidden_layer_3/MatMul/ReadVariableOp�layer1/BiasAdd/ReadVariableOp�layer1/MatMul/ReadVariableOp�layer110/BiasAdd/ReadVariableOp�layer110/MatMul/ReadVariableOp�
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0w
layer1/MatMulMatMulinputs$layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������^
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
$hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
hidden_layer_1/MatMulMatMullayer1/Relu:activations:0,hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
%hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
hidden_layer_1/BiasAddBiasAddhidden_layer_1/MatMul:product:0-hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
hidden_layer_1/ReluReluhidden_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
$hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
hidden_layer_2/MatMulMatMul!hidden_layer_1/Relu:activations:0,hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
%hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
hidden_layer_2/BiasAddBiasAddhidden_layer_2/MatMul:product:0-hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� n
hidden_layer_2/ReluReluhidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
$hidden_layer_3/MatMul/ReadVariableOpReadVariableOp-hidden_layer_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
hidden_layer_3/MatMulMatMul!hidden_layer_2/Relu:activations:0,hidden_layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%hidden_layer_3/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
hidden_layer_3/BiasAddBiasAddhidden_layer_3/MatMul:product:0-hidden_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
hidden_layer_3/ReluReluhidden_layer_3/BiasAdd:output:0*
T0*'
_output_shapes
:����������
layer110/MatMul/ReadVariableOpReadVariableOp'layer110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
layer110/MatMulMatMul!hidden_layer_3/Relu:activations:0&layer110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
layer110/BiasAdd/ReadVariableOpReadVariableOp(layer110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layer110/BiasAddBiasAddlayer110/MatMul:product:0'layer110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
layer110/SoftmaxSoftmaxlayer110/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitylayer110/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^hidden_layer_1/BiasAdd/ReadVariableOp%^hidden_layer_1/MatMul/ReadVariableOp&^hidden_layer_2/BiasAdd/ReadVariableOp%^hidden_layer_2/MatMul/ReadVariableOp&^hidden_layer_3/BiasAdd/ReadVariableOp%^hidden_layer_3/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp ^layer110/BiasAdd/ReadVariableOp^layer110/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2N
%hidden_layer_1/BiasAdd/ReadVariableOp%hidden_layer_1/BiasAdd/ReadVariableOp2L
$hidden_layer_1/MatMul/ReadVariableOp$hidden_layer_1/MatMul/ReadVariableOp2N
%hidden_layer_2/BiasAdd/ReadVariableOp%hidden_layer_2/BiasAdd/ReadVariableOp2L
$hidden_layer_2/MatMul/ReadVariableOp$hidden_layer_2/MatMul/ReadVariableOp2N
%hidden_layer_3/BiasAdd/ReadVariableOp%hidden_layer_3/BiasAdd/ReadVariableOp2L
$hidden_layer_3/MatMul/ReadVariableOp$hidden_layer_3/MatMul/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/MatMul/ReadVariableOplayer1/MatMul/ReadVariableOp2B
layer110/BiasAdd/ReadVariableOplayer110/BiasAdd/ReadVariableOp2@
layer110/MatMul/ReadVariableOplayer110/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7124

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_7297

inputs
layer1_7271:
layer1_7273:%
hidden_layer_1_7276:@!
hidden_layer_1_7278:@%
hidden_layer_2_7281:@ !
hidden_layer_2_7283: %
hidden_layer_3_7286: !
hidden_layer_3_7288:
layer110_7291:
layer110_7293:
identity��&hidden_layer_1/StatefulPartitionedCall�&hidden_layer_2/StatefulPartitionedCall�&hidden_layer_3/StatefulPartitionedCall�layer1/StatefulPartitionedCall� layer110/StatefulPartitionedCall�
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_7271layer1_7273*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_7107�
&hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0hidden_layer_1_7276hidden_layer_1_7278*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7124�
&hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_7281hidden_layer_2_7283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7141�
&hidden_layer_3/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_2/StatefulPartitionedCall:output:0hidden_layer_3_7286hidden_layer_3_7288*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7158�
 layer110/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_3/StatefulPartitionedCall:output:0layer110_7291layer110_7293*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_layer110_layer_call_and_return_conditional_losses_7175x
IdentityIdentity)layer110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^hidden_layer_1/StatefulPartitionedCall'^hidden_layer_2/StatefulPartitionedCall'^hidden_layer_3/StatefulPartitionedCall^layer1/StatefulPartitionedCall!^layer110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2P
&hidden_layer_1/StatefulPartitionedCall&hidden_layer_1/StatefulPartitionedCall2P
&hidden_layer_2/StatefulPartitionedCall&hidden_layer_2/StatefulPartitionedCall2P
&hidden_layer_3/StatefulPartitionedCall&hidden_layer_3/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2D
 layer110/StatefulPartitionedCall layer110/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
@__inference_layer1_layer_call_and_return_conditional_losses_7597

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_7243

inputs
layer1_7217:
layer1_7219:%
hidden_layer_1_7222:@!
hidden_layer_1_7224:@%
hidden_layer_2_7227:@ !
hidden_layer_2_7229: %
hidden_layer_3_7232: !
hidden_layer_3_7234:
layer110_7237:
layer110_7239:
identity��&hidden_layer_1/StatefulPartitionedCall�&hidden_layer_2/StatefulPartitionedCall�&hidden_layer_3/StatefulPartitionedCall�layer1/StatefulPartitionedCall� layer110/StatefulPartitionedCall�
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_7217layer1_7219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_7107�
&hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0hidden_layer_1_7222hidden_layer_1_7224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7124�
&hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_7227hidden_layer_2_7229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7141�
&hidden_layer_3/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_2/StatefulPartitionedCall:output:0hidden_layer_3_7232hidden_layer_3_7234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7158�
 layer110/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_3/StatefulPartitionedCall:output:0layer110_7237layer110_7239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_layer110_layer_call_and_return_conditional_losses_7175x
IdentityIdentity)layer110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^hidden_layer_1/StatefulPartitionedCall'^hidden_layer_2/StatefulPartitionedCall'^hidden_layer_3/StatefulPartitionedCall^layer1/StatefulPartitionedCall!^layer110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2P
&hidden_layer_1/StatefulPartitionedCall&hidden_layer_1/StatefulPartitionedCall2P
&hidden_layer_2/StatefulPartitionedCall&hidden_layer_2/StatefulPartitionedCall2P
&hidden_layer_3/StatefulPartitionedCall&hidden_layer_3/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2D
 layer110/StatefulPartitionedCall layer110/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7158

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_7182
layer1_input
layer1_7108:
layer1_7110:%
hidden_layer_1_7125:@!
hidden_layer_1_7127:@%
hidden_layer_2_7142:@ !
hidden_layer_2_7144: %
hidden_layer_3_7159: !
hidden_layer_3_7161:
layer110_7176:
layer110_7178:
identity��&hidden_layer_1/StatefulPartitionedCall�&hidden_layer_2/StatefulPartitionedCall�&hidden_layer_3/StatefulPartitionedCall�layer1/StatefulPartitionedCall� layer110/StatefulPartitionedCall�
layer1/StatefulPartitionedCallStatefulPartitionedCalllayer1_inputlayer1_7108layer1_7110*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_7107�
&hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0hidden_layer_1_7125hidden_layer_1_7127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7124�
&hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_7142hidden_layer_2_7144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7141�
&hidden_layer_3/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_2/StatefulPartitionedCall:output:0hidden_layer_3_7159hidden_layer_3_7161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7158�
 layer110/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_3/StatefulPartitionedCall:output:0layer110_7176layer110_7178*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_layer110_layer_call_and_return_conditional_losses_7175x
IdentityIdentity)layer110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^hidden_layer_1/StatefulPartitionedCall'^hidden_layer_2/StatefulPartitionedCall'^hidden_layer_3/StatefulPartitionedCall^layer1/StatefulPartitionedCall!^layer110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2P
&hidden_layer_1/StatefulPartitionedCall&hidden_layer_1/StatefulPartitionedCall2P
&hidden_layer_2/StatefulPartitionedCall&hidden_layer_2/StatefulPartitionedCall2P
&hidden_layer_3/StatefulPartitionedCall&hidden_layer_3/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2D
 layer110/StatefulPartitionedCall layer110/StatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelayer1_input
�

�
B__inference_layer110_layer_call_and_return_conditional_losses_7677

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_sequential_layer_call_and_return_conditional_losses_7211
layer1_input
layer1_7185:
layer1_7187:%
hidden_layer_1_7190:@!
hidden_layer_1_7192:@%
hidden_layer_2_7195:@ !
hidden_layer_2_7197: %
hidden_layer_3_7200: !
hidden_layer_3_7202:
layer110_7205:
layer110_7207:
identity��&hidden_layer_1/StatefulPartitionedCall�&hidden_layer_2/StatefulPartitionedCall�&hidden_layer_3/StatefulPartitionedCall�layer1/StatefulPartitionedCall� layer110/StatefulPartitionedCall�
layer1/StatefulPartitionedCallStatefulPartitionedCalllayer1_inputlayer1_7185layer1_7187*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_layer1_layer_call_and_return_conditional_losses_7107�
&hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0hidden_layer_1_7190hidden_layer_1_7192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7124�
&hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_7195hidden_layer_2_7197*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7141�
&hidden_layer_3/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_2/StatefulPartitionedCall:output:0hidden_layer_3_7200hidden_layer_3_7202*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7158�
 layer110/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_3/StatefulPartitionedCall:output:0layer110_7205layer110_7207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_layer110_layer_call_and_return_conditional_losses_7175x
IdentityIdentity)layer110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^hidden_layer_1/StatefulPartitionedCall'^hidden_layer_2/StatefulPartitionedCall'^hidden_layer_3/StatefulPartitionedCall^layer1/StatefulPartitionedCall!^layer110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2P
&hidden_layer_1/StatefulPartitionedCall&hidden_layer_1/StatefulPartitionedCall2P
&hidden_layer_2/StatefulPartitionedCall&hidden_layer_2/StatefulPartitionedCall2P
&hidden_layer_3/StatefulPartitionedCall&hidden_layer_3/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2D
 layer110/StatefulPartitionedCall layer110/StatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelayer1_input
�

�
)__inference_sequential_layer_call_fn_7474

inputs
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_hidden_layer_2_layer_call_fn_7626

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7141o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7141

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
)__inference_sequential_layer_call_fn_7320
layer1_input
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllayer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7297o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelayer1_input
�

�
)__inference_sequential_layer_call_fn_7266
layer1_input
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllayer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:���������
&
_user_specified_namelayer1_input
�8
�	
__inference__wrapped_model_7092
layer1_inputB
0sequential_layer1_matmul_readvariableop_resource:?
1sequential_layer1_biasadd_readvariableop_resource:J
8sequential_hidden_layer_1_matmul_readvariableop_resource:@G
9sequential_hidden_layer_1_biasadd_readvariableop_resource:@J
8sequential_hidden_layer_2_matmul_readvariableop_resource:@ G
9sequential_hidden_layer_2_biasadd_readvariableop_resource: J
8sequential_hidden_layer_3_matmul_readvariableop_resource: G
9sequential_hidden_layer_3_biasadd_readvariableop_resource:D
2sequential_layer110_matmul_readvariableop_resource:A
3sequential_layer110_biasadd_readvariableop_resource:
identity��0sequential/hidden_layer_1/BiasAdd/ReadVariableOp�/sequential/hidden_layer_1/MatMul/ReadVariableOp�0sequential/hidden_layer_2/BiasAdd/ReadVariableOp�/sequential/hidden_layer_2/MatMul/ReadVariableOp�0sequential/hidden_layer_3/BiasAdd/ReadVariableOp�/sequential/hidden_layer_3/MatMul/ReadVariableOp�(sequential/layer1/BiasAdd/ReadVariableOp�'sequential/layer1/MatMul/ReadVariableOp�*sequential/layer110/BiasAdd/ReadVariableOp�)sequential/layer110/MatMul/ReadVariableOp�
'sequential/layer1/MatMul/ReadVariableOpReadVariableOp0sequential_layer1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential/layer1/MatMulMatMullayer1_input/sequential/layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(sequential/layer1/BiasAdd/ReadVariableOpReadVariableOp1sequential_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/layer1/BiasAddBiasAdd"sequential/layer1/MatMul:product:00sequential/layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
sequential/layer1/ReluRelu"sequential/layer1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
/sequential/hidden_layer_1/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
 sequential/hidden_layer_1/MatMulMatMul$sequential/layer1/Relu:activations:07sequential/hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0sequential/hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!sequential/hidden_layer_1/BiasAddBiasAdd*sequential/hidden_layer_1/MatMul:product:08sequential/hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
sequential/hidden_layer_1/ReluRelu*sequential/hidden_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
/sequential/hidden_layer_2/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
 sequential/hidden_layer_2/MatMulMatMul,sequential/hidden_layer_1/Relu:activations:07sequential/hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
0sequential/hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!sequential/hidden_layer_2/BiasAddBiasAdd*sequential/hidden_layer_2/MatMul:product:08sequential/hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
sequential/hidden_layer_2/ReluRelu*sequential/hidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
/sequential/hidden_layer_3/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
 sequential/hidden_layer_3/MatMulMatMul,sequential/hidden_layer_2/Relu:activations:07sequential/hidden_layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0sequential/hidden_layer_3/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!sequential/hidden_layer_3/BiasAddBiasAdd*sequential/hidden_layer_3/MatMul:product:08sequential/hidden_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential/hidden_layer_3/ReluRelu*sequential/hidden_layer_3/BiasAdd:output:0*
T0*'
_output_shapes
:����������
)sequential/layer110/MatMul/ReadVariableOpReadVariableOp2sequential_layer110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential/layer110/MatMulMatMul,sequential/hidden_layer_3/Relu:activations:01sequential/layer110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*sequential/layer110/BiasAdd/ReadVariableOpReadVariableOp3sequential_layer110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential/layer110/BiasAddBiasAdd$sequential/layer110/MatMul:product:02sequential/layer110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
sequential/layer110/SoftmaxSoftmax$sequential/layer110/BiasAdd:output:0*
T0*'
_output_shapes
:���������t
IdentityIdentity%sequential/layer110/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^sequential/hidden_layer_1/BiasAdd/ReadVariableOp0^sequential/hidden_layer_1/MatMul/ReadVariableOp1^sequential/hidden_layer_2/BiasAdd/ReadVariableOp0^sequential/hidden_layer_2/MatMul/ReadVariableOp1^sequential/hidden_layer_3/BiasAdd/ReadVariableOp0^sequential/hidden_layer_3/MatMul/ReadVariableOp)^sequential/layer1/BiasAdd/ReadVariableOp(^sequential/layer1/MatMul/ReadVariableOp+^sequential/layer110/BiasAdd/ReadVariableOp*^sequential/layer110/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2d
0sequential/hidden_layer_1/BiasAdd/ReadVariableOp0sequential/hidden_layer_1/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer_1/MatMul/ReadVariableOp/sequential/hidden_layer_1/MatMul/ReadVariableOp2d
0sequential/hidden_layer_2/BiasAdd/ReadVariableOp0sequential/hidden_layer_2/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer_2/MatMul/ReadVariableOp/sequential/hidden_layer_2/MatMul/ReadVariableOp2d
0sequential/hidden_layer_3/BiasAdd/ReadVariableOp0sequential/hidden_layer_3/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer_3/MatMul/ReadVariableOp/sequential/hidden_layer_3/MatMul/ReadVariableOp2T
(sequential/layer1/BiasAdd/ReadVariableOp(sequential/layer1/BiasAdd/ReadVariableOp2R
'sequential/layer1/MatMul/ReadVariableOp'sequential/layer1/MatMul/ReadVariableOp2X
*sequential/layer110/BiasAdd/ReadVariableOp*sequential/layer110/BiasAdd/ReadVariableOp2V
)sequential/layer110/MatMul/ReadVariableOp)sequential/layer110/MatMul/ReadVariableOp:U Q
'
_output_shapes
:���������
&
_user_specified_namelayer1_input
�
�!
__inference__traced_save_7916
file_prefix6
$read_disablecopyonread_layer1_kernel:2
$read_1_disablecopyonread_layer1_bias:@
.read_2_disablecopyonread_hidden_layer_1_kernel:@:
,read_3_disablecopyonread_hidden_layer_1_bias:@@
.read_4_disablecopyonread_hidden_layer_2_kernel:@ :
,read_5_disablecopyonread_hidden_layer_2_bias: @
.read_6_disablecopyonread_hidden_layer_3_kernel: :
,read_7_disablecopyonread_hidden_layer_3_bias::
(read_8_disablecopyonread_layer110_kernel:4
&read_9_disablecopyonread_layer110_bias:-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: @
.read_12_disablecopyonread_adam_m_layer1_kernel:@
.read_13_disablecopyonread_adam_v_layer1_kernel::
,read_14_disablecopyonread_adam_m_layer1_bias::
,read_15_disablecopyonread_adam_v_layer1_bias:H
6read_16_disablecopyonread_adam_m_hidden_layer_1_kernel:@H
6read_17_disablecopyonread_adam_v_hidden_layer_1_kernel:@B
4read_18_disablecopyonread_adam_m_hidden_layer_1_bias:@B
4read_19_disablecopyonread_adam_v_hidden_layer_1_bias:@H
6read_20_disablecopyonread_adam_m_hidden_layer_2_kernel:@ H
6read_21_disablecopyonread_adam_v_hidden_layer_2_kernel:@ B
4read_22_disablecopyonread_adam_m_hidden_layer_2_bias: B
4read_23_disablecopyonread_adam_v_hidden_layer_2_bias: H
6read_24_disablecopyonread_adam_m_hidden_layer_3_kernel: H
6read_25_disablecopyonread_adam_v_hidden_layer_3_kernel: B
4read_26_disablecopyonread_adam_m_hidden_layer_3_bias:B
4read_27_disablecopyonread_adam_v_hidden_layer_3_bias:B
0read_28_disablecopyonread_adam_m_layer110_kernel:B
0read_29_disablecopyonread_adam_v_layer110_kernel:<
.read_30_disablecopyonread_adam_m_layer110_bias:<
.read_31_disablecopyonread_adam_v_layer110_bias:+
!read_32_disablecopyonread_total_1: +
!read_33_disablecopyonread_count_1: )
read_34_disablecopyonread_total: )
read_35_disablecopyonread_count: 
savev2_const
identity_73��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_layer1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_layer1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_layer1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_layer1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead.read_2_disablecopyonread_hidden_layer_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp.read_2_disablecopyonread_hidden_layer_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_3/DisableCopyOnReadDisableCopyOnRead,read_3_disablecopyonread_hidden_layer_1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp,read_3_disablecopyonread_hidden_layer_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_4/DisableCopyOnReadDisableCopyOnRead.read_4_disablecopyonread_hidden_layer_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp.read_4_disablecopyonread_hidden_layer_2_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_5/DisableCopyOnReadDisableCopyOnRead,read_5_disablecopyonread_hidden_layer_2_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp,read_5_disablecopyonread_hidden_layer_2_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_6/DisableCopyOnReadDisableCopyOnRead.read_6_disablecopyonread_hidden_layer_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp.read_6_disablecopyonread_hidden_layer_3_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_7/DisableCopyOnReadDisableCopyOnRead,read_7_disablecopyonread_hidden_layer_3_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp,read_7_disablecopyonread_hidden_layer_3_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_layer110_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_layer110_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_layer110_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_layer110_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
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
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
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
: �
Read_12/DisableCopyOnReadDisableCopyOnRead.read_12_disablecopyonread_adam_m_layer1_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp.read_12_disablecopyonread_adam_m_layer1_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_13/DisableCopyOnReadDisableCopyOnRead.read_13_disablecopyonread_adam_v_layer1_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp.read_13_disablecopyonread_adam_v_layer1_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_14/DisableCopyOnReadDisableCopyOnRead,read_14_disablecopyonread_adam_m_layer1_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp,read_14_disablecopyonread_adam_m_layer1_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead,read_15_disablecopyonread_adam_v_layer1_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp,read_15_disablecopyonread_adam_v_layer1_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead6read_16_disablecopyonread_adam_m_hidden_layer_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp6read_16_disablecopyonread_adam_m_hidden_layer_1_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_17/DisableCopyOnReadDisableCopyOnRead6read_17_disablecopyonread_adam_v_hidden_layer_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp6read_17_disablecopyonread_adam_v_hidden_layer_1_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_18/DisableCopyOnReadDisableCopyOnRead4read_18_disablecopyonread_adam_m_hidden_layer_1_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp4read_18_disablecopyonread_adam_m_hidden_layer_1_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_19/DisableCopyOnReadDisableCopyOnRead4read_19_disablecopyonread_adam_v_hidden_layer_1_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp4read_19_disablecopyonread_adam_v_hidden_layer_1_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_adam_m_hidden_layer_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_adam_m_hidden_layer_2_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_21/DisableCopyOnReadDisableCopyOnRead6read_21_disablecopyonread_adam_v_hidden_layer_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp6read_21_disablecopyonread_adam_v_hidden_layer_2_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_22/DisableCopyOnReadDisableCopyOnRead4read_22_disablecopyonread_adam_m_hidden_layer_2_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp4read_22_disablecopyonread_adam_m_hidden_layer_2_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_23/DisableCopyOnReadDisableCopyOnRead4read_23_disablecopyonread_adam_v_hidden_layer_2_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp4read_23_disablecopyonread_adam_v_hidden_layer_2_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_24/DisableCopyOnReadDisableCopyOnRead6read_24_disablecopyonread_adam_m_hidden_layer_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp6read_24_disablecopyonread_adam_m_hidden_layer_3_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_25/DisableCopyOnReadDisableCopyOnRead6read_25_disablecopyonread_adam_v_hidden_layer_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp6read_25_disablecopyonread_adam_v_hidden_layer_3_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_26/DisableCopyOnReadDisableCopyOnRead4read_26_disablecopyonread_adam_m_hidden_layer_3_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp4read_26_disablecopyonread_adam_m_hidden_layer_3_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_27/DisableCopyOnReadDisableCopyOnRead4read_27_disablecopyonread_adam_v_hidden_layer_3_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp4read_27_disablecopyonread_adam_v_hidden_layer_3_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_28/DisableCopyOnReadDisableCopyOnRead0read_28_disablecopyonread_adam_m_layer110_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp0read_28_disablecopyonread_adam_m_layer110_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_adam_v_layer110_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_adam_v_layer110_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_adam_m_layer110_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_adam_m_layer110_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead.read_31_disablecopyonread_adam_v_layer110_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp.read_31_disablecopyonread_adam_v_layer110_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_32/DisableCopyOnReadDisableCopyOnRead!read_32_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp!read_32_disablecopyonread_total_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_33/DisableCopyOnReadDisableCopyOnRead!read_33_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp!read_33_disablecopyonread_count_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_34/DisableCopyOnReadDisableCopyOnReadread_34_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOpread_34_disablecopyonread_total^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_35/DisableCopyOnReadDisableCopyOnReadread_35_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOpread_35_disablecopyonread_count^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_72Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_73IdentityIdentity_72:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_73Identity_73:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:%

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�
 __inference__traced_restore_8034
file_prefix0
assignvariableop_layer1_kernel:,
assignvariableop_1_layer1_bias::
(assignvariableop_2_hidden_layer_1_kernel:@4
&assignvariableop_3_hidden_layer_1_bias:@:
(assignvariableop_4_hidden_layer_2_kernel:@ 4
&assignvariableop_5_hidden_layer_2_bias: :
(assignvariableop_6_hidden_layer_3_kernel: 4
&assignvariableop_7_hidden_layer_3_bias:4
"assignvariableop_8_layer110_kernel:.
 assignvariableop_9_layer110_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: :
(assignvariableop_12_adam_m_layer1_kernel::
(assignvariableop_13_adam_v_layer1_kernel:4
&assignvariableop_14_adam_m_layer1_bias:4
&assignvariableop_15_adam_v_layer1_bias:B
0assignvariableop_16_adam_m_hidden_layer_1_kernel:@B
0assignvariableop_17_adam_v_hidden_layer_1_kernel:@<
.assignvariableop_18_adam_m_hidden_layer_1_bias:@<
.assignvariableop_19_adam_v_hidden_layer_1_bias:@B
0assignvariableop_20_adam_m_hidden_layer_2_kernel:@ B
0assignvariableop_21_adam_v_hidden_layer_2_kernel:@ <
.assignvariableop_22_adam_m_hidden_layer_2_bias: <
.assignvariableop_23_adam_v_hidden_layer_2_bias: B
0assignvariableop_24_adam_m_hidden_layer_3_kernel: B
0assignvariableop_25_adam_v_hidden_layer_3_kernel: <
.assignvariableop_26_adam_m_hidden_layer_3_bias:<
.assignvariableop_27_adam_v_hidden_layer_3_bias:<
*assignvariableop_28_adam_m_layer110_kernel:<
*assignvariableop_29_adam_v_layer110_kernel:6
(assignvariableop_30_adam_m_layer110_bias:6
(assignvariableop_31_adam_v_layer110_bias:%
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: 
identity_37��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_layer1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp(assignvariableop_2_hidden_layer_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp&assignvariableop_3_hidden_layer_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp(assignvariableop_4_hidden_layer_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp&assignvariableop_5_hidden_layer_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp(assignvariableop_6_hidden_layer_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp&assignvariableop_7_hidden_layer_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_layer110_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_layer110_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_m_layer1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp(assignvariableop_13_adam_v_layer1_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_m_layer1_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_v_layer1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp0assignvariableop_16_adam_m_hidden_layer_1_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp0assignvariableop_17_adam_v_hidden_layer_1_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_m_hidden_layer_1_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp.assignvariableop_19_adam_v_hidden_layer_1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_m_hidden_layer_2_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_v_hidden_layer_2_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_m_hidden_layer_2_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_v_hidden_layer_2_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_m_hidden_layer_3_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adam_v_hidden_layer_3_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_m_hidden_layer_3_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_v_hidden_layer_3_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_layer110_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_layer110_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_layer110_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_layer110_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�/
�
D__inference_sequential_layer_call_and_return_conditional_losses_7577

inputs7
%layer1_matmul_readvariableop_resource:4
&layer1_biasadd_readvariableop_resource:?
-hidden_layer_1_matmul_readvariableop_resource:@<
.hidden_layer_1_biasadd_readvariableop_resource:@?
-hidden_layer_2_matmul_readvariableop_resource:@ <
.hidden_layer_2_biasadd_readvariableop_resource: ?
-hidden_layer_3_matmul_readvariableop_resource: <
.hidden_layer_3_biasadd_readvariableop_resource:9
'layer110_matmul_readvariableop_resource:6
(layer110_biasadd_readvariableop_resource:
identity��%hidden_layer_1/BiasAdd/ReadVariableOp�$hidden_layer_1/MatMul/ReadVariableOp�%hidden_layer_2/BiasAdd/ReadVariableOp�$hidden_layer_2/MatMul/ReadVariableOp�%hidden_layer_3/BiasAdd/ReadVariableOp�$hidden_layer_3/MatMul/ReadVariableOp�layer1/BiasAdd/ReadVariableOp�layer1/MatMul/ReadVariableOp�layer110/BiasAdd/ReadVariableOp�layer110/MatMul/ReadVariableOp�
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0w
layer1/MatMulMatMulinputs$layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������^
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
$hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
hidden_layer_1/MatMulMatMullayer1/Relu:activations:0,hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
%hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
hidden_layer_1/BiasAddBiasAddhidden_layer_1/MatMul:product:0-hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
hidden_layer_1/ReluReluhidden_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
$hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
hidden_layer_2/MatMulMatMul!hidden_layer_1/Relu:activations:0,hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
%hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
hidden_layer_2/BiasAddBiasAddhidden_layer_2/MatMul:product:0-hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� n
hidden_layer_2/ReluReluhidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
$hidden_layer_3/MatMul/ReadVariableOpReadVariableOp-hidden_layer_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
hidden_layer_3/MatMulMatMul!hidden_layer_2/Relu:activations:0,hidden_layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%hidden_layer_3/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
hidden_layer_3/BiasAddBiasAddhidden_layer_3/MatMul:product:0-hidden_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
hidden_layer_3/ReluReluhidden_layer_3/BiasAdd:output:0*
T0*'
_output_shapes
:����������
layer110/MatMul/ReadVariableOpReadVariableOp'layer110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
layer110/MatMulMatMul!hidden_layer_3/Relu:activations:0&layer110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
layer110/BiasAdd/ReadVariableOpReadVariableOp(layer110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layer110/BiasAddBiasAddlayer110/MatMul:product:0'layer110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
layer110/SoftmaxSoftmaxlayer110/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitylayer110/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^hidden_layer_1/BiasAdd/ReadVariableOp%^hidden_layer_1/MatMul/ReadVariableOp&^hidden_layer_2/BiasAdd/ReadVariableOp%^hidden_layer_2/MatMul/ReadVariableOp&^hidden_layer_3/BiasAdd/ReadVariableOp%^hidden_layer_3/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/MatMul/ReadVariableOp ^layer110/BiasAdd/ReadVariableOp^layer110/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 2N
%hidden_layer_1/BiasAdd/ReadVariableOp%hidden_layer_1/BiasAdd/ReadVariableOp2L
$hidden_layer_1/MatMul/ReadVariableOp$hidden_layer_1/MatMul/ReadVariableOp2N
%hidden_layer_2/BiasAdd/ReadVariableOp%hidden_layer_2/BiasAdd/ReadVariableOp2L
$hidden_layer_2/MatMul/ReadVariableOp$hidden_layer_2/MatMul/ReadVariableOp2N
%hidden_layer_3/BiasAdd/ReadVariableOp%hidden_layer_3/BiasAdd/ReadVariableOp2L
$hidden_layer_3/MatMul/ReadVariableOp$hidden_layer_3/MatMul/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/MatMul/ReadVariableOplayer1/MatMul/ReadVariableOp2B
layer110/BiasAdd/ReadVariableOplayer110/BiasAdd/ReadVariableOp2@
layer110/MatMul/ReadVariableOplayer110/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
)__inference_sequential_layer_call_fn_7499

inputs
unknown:
	unknown_0:
	unknown_1:@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7297o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
B__inference_layer110_layer_call_and_return_conditional_losses_7175

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7657

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7617

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_hidden_layer_3_layer_call_fn_7646

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7158o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
'__inference_layer110_layer_call_fn_7666

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_layer110_layer_call_and_return_conditional_losses_7175o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7637

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
@__inference_layer1_layer_call_and_return_conditional_losses_7107

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
layer1_input5
serving_default_layer1_input:0���������<
layer1100
StatefulPartitionedCall:0���������tensorflow/serving/predict:ʖ
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
f
0
1
2
3
%4
&5
-6
.7
58
69"
trackable_list_wrapper
f
0
1
2
3
%4
&5
-6
.7
58
69"
trackable_list_wrapper
 "
trackable_list_wrapper
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
<trace_0
=trace_1
>trace_2
?trace_32�
)__inference_sequential_layer_call_fn_7266
)__inference_sequential_layer_call_fn_7320
)__inference_sequential_layer_call_fn_7474
)__inference_sequential_layer_call_fn_7499�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z<trace_0z=trace_1z>trace_2z?trace_3
�
@trace_0
Atrace_1
Btrace_2
Ctrace_32�
D__inference_sequential_layer_call_and_return_conditional_losses_7182
D__inference_sequential_layer_call_and_return_conditional_losses_7211
D__inference_sequential_layer_call_and_return_conditional_losses_7538
D__inference_sequential_layer_call_and_return_conditional_losses_7577�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z@trace_0zAtrace_1zBtrace_2zCtrace_3
�B�
__inference__wrapped_model_7092layer1_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
D
_variables
E_iterations
F_learning_rate
G_index_dict
H
_momentums
I_velocities
J_update_step_xla"
experimentalOptimizer
,
Kserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Qtrace_02�
%__inference_layer1_layer_call_fn_7586�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zQtrace_0
�
Rtrace_02�
@__inference_layer1_layer_call_and_return_conditional_losses_7597�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zRtrace_0
:2layer1/kernel
:2layer1/bias
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
�
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Xtrace_02�
-__inference_hidden_layer_1_layer_call_fn_7606�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zXtrace_0
�
Ytrace_02�
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7617�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zYtrace_0
':%@2hidden_layer_1/kernel
!:@2hidden_layer_1/bias
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
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
_trace_02�
-__inference_hidden_layer_2_layer_call_fn_7626�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z_trace_0
�
`trace_02�
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7637�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z`trace_0
':%@ 2hidden_layer_2/kernel
!: 2hidden_layer_2/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
ftrace_02�
-__inference_hidden_layer_3_layer_call_fn_7646�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0
�
gtrace_02�
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7657�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zgtrace_0
':% 2hidden_layer_3/kernel
!:2hidden_layer_3/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
mtrace_02�
'__inference_layer110_layer_call_fn_7666�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zmtrace_0
�
ntrace_02�
B__inference_layer110_layer_call_and_return_conditional_losses_7677�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0
!:2layer110/kernel
:2layer110/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_sequential_layer_call_fn_7266layer1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_sequential_layer_call_fn_7320layer1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_sequential_layer_call_fn_7474inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_sequential_layer_call_fn_7499inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_sequential_layer_call_and_return_conditional_losses_7182layer1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_sequential_layer_call_and_return_conditional_losses_7211layer1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_sequential_layer_call_and_return_conditional_losses_7538inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_sequential_layer_call_and_return_conditional_losses_7577inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
E0
q1
r2
s3
t4
u5
v6
w7
x8
y9
z10
{11
|12
}13
~14
15
�16
�17
�18
�19
�20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
h
q0
s1
u2
w3
y4
{5
}6
7
�8
�9"
trackable_list_wrapper
i
r0
t1
v2
x3
z4
|5
~6
�7
�8
�9"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
"__inference_signature_wrapper_7449layer1_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
%__inference_layer1_layer_call_fn_7586inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_layer1_layer_call_and_return_conditional_losses_7597inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_hidden_layer_1_layer_call_fn_7606inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7617inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_hidden_layer_2_layer_call_fn_7626inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7637inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
-__inference_hidden_layer_3_layer_call_fn_7646inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7657inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
'__inference_layer110_layer_call_fn_7666inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_layer110_layer_call_and_return_conditional_losses_7677inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
$:"2Adam/m/layer1/kernel
$:"2Adam/v/layer1/kernel
:2Adam/m/layer1/bias
:2Adam/v/layer1/bias
,:*@2Adam/m/hidden_layer_1/kernel
,:*@2Adam/v/hidden_layer_1/kernel
&:$@2Adam/m/hidden_layer_1/bias
&:$@2Adam/v/hidden_layer_1/bias
,:*@ 2Adam/m/hidden_layer_2/kernel
,:*@ 2Adam/v/hidden_layer_2/kernel
&:$ 2Adam/m/hidden_layer_2/bias
&:$ 2Adam/v/hidden_layer_2/bias
,:* 2Adam/m/hidden_layer_3/kernel
,:* 2Adam/v/hidden_layer_3/kernel
&:$2Adam/m/hidden_layer_3/bias
&:$2Adam/v/hidden_layer_3/bias
&:$2Adam/m/layer110/kernel
&:$2Adam/v/layer110/kernel
 :2Adam/m/layer110/bias
 :2Adam/v/layer110/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
__inference__wrapped_model_7092x
%&-.565�2
+�(
&�#
layer1_input���������
� "3�0
.
layer110"�
layer110����������
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_7617c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������@
� �
-__inference_hidden_layer_1_layer_call_fn_7606X/�,
%�"
 �
inputs���������
� "!�
unknown���������@�
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_7637c%&/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0��������� 
� �
-__inference_hidden_layer_2_layer_call_fn_7626X%&/�,
%�"
 �
inputs���������@
� "!�
unknown��������� �
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_7657c-./�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������
� �
-__inference_hidden_layer_3_layer_call_fn_7646X-./�,
%�"
 �
inputs��������� 
� "!�
unknown����������
B__inference_layer110_layer_call_and_return_conditional_losses_7677c56/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
'__inference_layer110_layer_call_fn_7666X56/�,
%�"
 �
inputs���������
� "!�
unknown����������
@__inference_layer1_layer_call_and_return_conditional_losses_7597c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
%__inference_layer1_layer_call_fn_7586X/�,
%�"
 �
inputs���������
� "!�
unknown����������
D__inference_sequential_layer_call_and_return_conditional_losses_7182y
%&-.56=�:
3�0
&�#
layer1_input���������
p

 
� ",�)
"�
tensor_0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_7211y
%&-.56=�:
3�0
&�#
layer1_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_7538s
%&-.567�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
D__inference_sequential_layer_call_and_return_conditional_losses_7577s
%&-.567�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
)__inference_sequential_layer_call_fn_7266n
%&-.56=�:
3�0
&�#
layer1_input���������
p

 
� "!�
unknown����������
)__inference_sequential_layer_call_fn_7320n
%&-.56=�:
3�0
&�#
layer1_input���������
p 

 
� "!�
unknown����������
)__inference_sequential_layer_call_fn_7474h
%&-.567�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
)__inference_sequential_layer_call_fn_7499h
%&-.567�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
"__inference_signature_wrapper_7449�
%&-.56E�B
� 
;�8
6
layer1_input&�#
layer1_input���������"3�0
.
layer110"�
layer110���������