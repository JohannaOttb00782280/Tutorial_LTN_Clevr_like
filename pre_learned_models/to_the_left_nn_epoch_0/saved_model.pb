ʫ
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
;
Elu
features"T
activations"T"
Ttype:
2
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
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8��
�
8simple_keras_with_concatentation_left_of_2/dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8simple_keras_with_concatentation_left_of_2/dense_11/bias
�
Lsimple_keras_with_concatentation_left_of_2/dense_11/bias/Read/ReadVariableOpReadVariableOp8simple_keras_with_concatentation_left_of_2/dense_11/bias*
_output_shapes
:*
dtype0
�
:simple_keras_with_concatentation_left_of_2/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*K
shared_name<:simple_keras_with_concatentation_left_of_2/dense_11/kernel
�
Nsimple_keras_with_concatentation_left_of_2/dense_11/kernel/Read/ReadVariableOpReadVariableOp:simple_keras_with_concatentation_left_of_2/dense_11/kernel*
_output_shapes

:*
dtype0
�
8simple_keras_with_concatentation_left_of_2/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8simple_keras_with_concatentation_left_of_2/dense_10/bias
�
Lsimple_keras_with_concatentation_left_of_2/dense_10/bias/Read/ReadVariableOpReadVariableOp8simple_keras_with_concatentation_left_of_2/dense_10/bias*
_output_shapes
:*
dtype0
�
:simple_keras_with_concatentation_left_of_2/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*K
shared_name<:simple_keras_with_concatentation_left_of_2/dense_10/kernel
�
Nsimple_keras_with_concatentation_left_of_2/dense_10/kernel/Read/ReadVariableOpReadVariableOp:simple_keras_with_concatentation_left_of_2/dense_10/kernel*
_output_shapes

:*
dtype0
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
serving_default_input_2Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2:simple_keras_with_concatentation_left_of_2/dense_10/kernel8simple_keras_with_concatentation_left_of_2/dense_10/bias:simple_keras_with_concatentation_left_of_2/dense_11/kernel8simple_keras_with_concatentation_left_of_2/dense_11/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_371910

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
flatten

	dense1


dense2

signatures*
 
0
1
2
3*
 
0
1
2
3*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

kernel
bias*

+serving_default* 
zt
VARIABLE_VALUE:simple_keras_with_concatentation_left_of_2/dense_10/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8simple_keras_with_concatentation_left_of_2/dense_10/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:simple_keras_with_concatentation_left_of_2/dense_11/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8simple_keras_with_concatentation_left_of_2/dense_11/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1

2*
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
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

1trace_0* 

2trace_0* 

0
1*

0
1*
* 
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

8trace_0* 

9trace_0* 

0
1*

0
1*
* 
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

?trace_0* 

@trace_0* 
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameNsimple_keras_with_concatentation_left_of_2/dense_10/kernel/Read/ReadVariableOpLsimple_keras_with_concatentation_left_of_2/dense_10/bias/Read/ReadVariableOpNsimple_keras_with_concatentation_left_of_2/dense_11/kernel/Read/ReadVariableOpLsimple_keras_with_concatentation_left_of_2/dense_11/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_372038
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename:simple_keras_with_concatentation_left_of_2/dense_10/kernel8simple_keras_with_concatentation_left_of_2/dense_10/bias:simple_keras_with_concatentation_left_of_2/dense_11/kernel8simple_keras_with_concatentation_left_of_2/dense_11/bias*
Tin	
2*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_372060��
�	
�
$__inference_signature_wrapper_371910
input_1
input_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_371763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:XT
/
_output_shapes
:���������
!
_user_specified_name	input_2
�

�
D__inference_dense_11_layer_call_and_return_conditional_losses_372002

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
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
)__inference_dense_11_layer_call_fn_371991

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_371814o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
�
�
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371894
input_1
input_2!
dense_10_371883:
dense_10_371885:!
dense_11_371888:
dense_11_371890:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCallN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ci
truedivRealDivinput_1truediv/y:output:0*
T0*/
_output_shapes
:���������P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Cm
	truediv_1RealDivinput_2truediv_1/y:output:0*
T0*/
_output_shapes
:���������V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2truediv:z:0truediv_1:z:0concat/axis:output:0*
N*
T0*/
_output_shapes
:����������
flatten_5/PartitionedCallPartitionedCallconcat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_371784�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_10_371883dense_10_371885*
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
GPU 2J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_371797�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_371888dense_11_371890*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_371814x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������:���������: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:XT
/
_output_shapes
:���������
!
_user_specified_name	input_2
�
�
__inference__traced_save_372038
file_prefixY
Usavev2_simple_keras_with_concatentation_left_of_2_dense_10_kernel_read_readvariableopW
Ssavev2_simple_keras_with_concatentation_left_of_2_dense_10_bias_read_readvariableopY
Usavev2_simple_keras_with_concatentation_left_of_2_dense_11_kernel_read_readvariableopW
Ssavev2_simple_keras_with_concatentation_left_of_2_dense_11_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHw
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Usavev2_simple_keras_with_concatentation_left_of_2_dense_10_kernel_read_readvariableopSsavev2_simple_keras_with_concatentation_left_of_2_dense_10_bias_read_readvariableopUsavev2_simple_keras_with_concatentation_left_of_2_dense_11_kernel_read_readvariableopSsavev2_simple_keras_with_concatentation_left_of_2_dense_11_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*7
_input_shapes&
$: ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
�

�
D__inference_dense_10_layer_call_and_return_conditional_losses_371982

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:���������N
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentityElu:activations:0^NoOp*
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
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_10_layer_call_and_return_conditional_losses_371797

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:���������N
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentityElu:activations:0^NoOp*
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
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_371962

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_dense_10_layer_call_fn_371971

inputs
unknown:
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
GPU 2J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_371797o
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
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
"__inference__traced_restore_372060
file_prefix]
Kassignvariableop_simple_keras_with_concatentation_left_of_2_dense_10_kernel:Y
Kassignvariableop_1_simple_keras_with_concatentation_left_of_2_dense_10_bias:_
Massignvariableop_2_simple_keras_with_concatentation_left_of_2_dense_11_kernel:Y
Kassignvariableop_3_simple_keras_with_concatentation_left_of_2_dense_11_bias:

identity_5��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHz
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpKassignvariableop_simple_keras_with_concatentation_left_of_2_dense_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpKassignvariableop_1_simple_keras_with_concatentation_left_of_2_dense_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpMassignvariableop_2_simple_keras_with_concatentation_left_of_2_dense_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpKassignvariableop_3_simple_keras_with_concatentation_left_of_2_dense_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371951	
inp_0	
inp_19
'dense_10_matmul_readvariableop_resource:6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�dense_11/MatMul/ReadVariableOpN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Cg
truedivRealDivinp_0truediv/y:output:0*
T0*/
_output_shapes
:���������P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ck
	truediv_1RealDivinp_1truediv_1/y:output:0*
T0*/
_output_shapes
:���������V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2truediv:z:0truediv_1:z:0concat/axis:output:0*
N*
T0*/
_output_shapes
:���������`
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   y
flatten_5/ReshapeReshapeconcat:output:0flatten_5/Const:output:0*
T0*'
_output_shapes
:����������
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_10/MatMulMatMulflatten_5/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_10/EluEludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:����������
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_11/MatMulMatMuldense_10/Elu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������:���������: : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp:V R
/
_output_shapes
:���������

_user_specified_nameinp/0:VR
/
_output_shapes
:���������

_user_specified_nameinp/1
�	
�
K__inference_simple_keras_with_concatentation_left_of_2_layer_call_fn_371924	
inp_0	
inp_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinp_0inp_1unknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *o
fjRh
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371821o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:���������

_user_specified_nameinp/0:VR
/
_output_shapes
:���������

_user_specified_nameinp/1
�
F
*__inference_flatten_5_layer_call_fn_371956

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_371784`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_371784

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
D__inference_dense_11_layer_call_and_return_conditional_losses_371814

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
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
�
�
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371821
inp	
inp_1!
dense_10_371798:
dense_10_371800:!
dense_11_371815:
dense_11_371817:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCallN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ce
truedivRealDivinptruediv/y:output:0*
T0*/
_output_shapes
:���������P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ck
	truediv_1RealDivinp_1truediv_1/y:output:0*
T0*/
_output_shapes
:���������V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2truediv:z:0truediv_1:z:0concat/axis:output:0*
N*
T0*/
_output_shapes
:����������
flatten_5/PartitionedCallPartitionedCallconcat:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_371784�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_10_371798dense_10_371800*
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
GPU 2J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_371797�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_371815dense_11_371817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_371814x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������:���������: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:T P
/
_output_shapes
:���������

_user_specified_nameinp:TP
/
_output_shapes
:���������

_user_specified_nameinp
�	
�
K__inference_simple_keras_with_concatentation_left_of_2_layer_call_fn_371832
input_1
input_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *o
fjRh
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371821o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:XT
/
_output_shapes
:���������
!
_user_specified_name	input_2
�/
�
!__inference__wrapped_model_371763
input_1
input_2d
Rsimple_keras_with_concatentation_left_of_2_dense_10_matmul_readvariableop_resource:a
Ssimple_keras_with_concatentation_left_of_2_dense_10_biasadd_readvariableop_resource:d
Rsimple_keras_with_concatentation_left_of_2_dense_11_matmul_readvariableop_resource:a
Ssimple_keras_with_concatentation_left_of_2_dense_11_biasadd_readvariableop_resource:
identity��Jsimple_keras_with_concatentation_left_of_2/dense_10/BiasAdd/ReadVariableOp�Isimple_keras_with_concatentation_left_of_2/dense_10/MatMul/ReadVariableOp�Jsimple_keras_with_concatentation_left_of_2/dense_11/BiasAdd/ReadVariableOp�Isimple_keras_with_concatentation_left_of_2/dense_11/MatMul/ReadVariableOpy
4simple_keras_with_concatentation_left_of_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C�
2simple_keras_with_concatentation_left_of_2/truedivRealDivinput_1=simple_keras_with_concatentation_left_of_2/truediv/y:output:0*
T0*/
_output_shapes
:���������{
6simple_keras_with_concatentation_left_of_2/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C�
4simple_keras_with_concatentation_left_of_2/truediv_1RealDivinput_2?simple_keras_with_concatentation_left_of_2/truediv_1/y:output:0*
T0*/
_output_shapes
:����������
6simple_keras_with_concatentation_left_of_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
1simple_keras_with_concatentation_left_of_2/concatConcatV26simple_keras_with_concatentation_left_of_2/truediv:z:08simple_keras_with_concatentation_left_of_2/truediv_1:z:0?simple_keras_with_concatentation_left_of_2/concat/axis:output:0*
N*
T0*/
_output_shapes
:����������
:simple_keras_with_concatentation_left_of_2/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
<simple_keras_with_concatentation_left_of_2/flatten_5/ReshapeReshape:simple_keras_with_concatentation_left_of_2/concat:output:0Csimple_keras_with_concatentation_left_of_2/flatten_5/Const:output:0*
T0*'
_output_shapes
:����������
Isimple_keras_with_concatentation_left_of_2/dense_10/MatMul/ReadVariableOpReadVariableOpRsimple_keras_with_concatentation_left_of_2_dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
:simple_keras_with_concatentation_left_of_2/dense_10/MatMulMatMulEsimple_keras_with_concatentation_left_of_2/flatten_5/Reshape:output:0Qsimple_keras_with_concatentation_left_of_2/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Jsimple_keras_with_concatentation_left_of_2/dense_10/BiasAdd/ReadVariableOpReadVariableOpSsimple_keras_with_concatentation_left_of_2_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
;simple_keras_with_concatentation_left_of_2/dense_10/BiasAddBiasAddDsimple_keras_with_concatentation_left_of_2/dense_10/MatMul:product:0Rsimple_keras_with_concatentation_left_of_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
7simple_keras_with_concatentation_left_of_2/dense_10/EluEluDsimple_keras_with_concatentation_left_of_2/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:����������
Isimple_keras_with_concatentation_left_of_2/dense_11/MatMul/ReadVariableOpReadVariableOpRsimple_keras_with_concatentation_left_of_2_dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
:simple_keras_with_concatentation_left_of_2/dense_11/MatMulMatMulEsimple_keras_with_concatentation_left_of_2/dense_10/Elu:activations:0Qsimple_keras_with_concatentation_left_of_2/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Jsimple_keras_with_concatentation_left_of_2/dense_11/BiasAdd/ReadVariableOpReadVariableOpSsimple_keras_with_concatentation_left_of_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
;simple_keras_with_concatentation_left_of_2/dense_11/BiasAddBiasAddDsimple_keras_with_concatentation_left_of_2/dense_11/MatMul:product:0Rsimple_keras_with_concatentation_left_of_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
;simple_keras_with_concatentation_left_of_2/dense_11/SigmoidSigmoidDsimple_keras_with_concatentation_left_of_2/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity?simple_keras_with_concatentation_left_of_2/dense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpK^simple_keras_with_concatentation_left_of_2/dense_10/BiasAdd/ReadVariableOpJ^simple_keras_with_concatentation_left_of_2/dense_10/MatMul/ReadVariableOpK^simple_keras_with_concatentation_left_of_2/dense_11/BiasAdd/ReadVariableOpJ^simple_keras_with_concatentation_left_of_2/dense_11/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:���������:���������: : : : 2�
Jsimple_keras_with_concatentation_left_of_2/dense_10/BiasAdd/ReadVariableOpJsimple_keras_with_concatentation_left_of_2/dense_10/BiasAdd/ReadVariableOp2�
Isimple_keras_with_concatentation_left_of_2/dense_10/MatMul/ReadVariableOpIsimple_keras_with_concatentation_left_of_2/dense_10/MatMul/ReadVariableOp2�
Jsimple_keras_with_concatentation_left_of_2/dense_11/BiasAdd/ReadVariableOpJsimple_keras_with_concatentation_left_of_2/dense_11/BiasAdd/ReadVariableOp2�
Isimple_keras_with_concatentation_left_of_2/dense_11/MatMul/ReadVariableOpIsimple_keras_with_concatentation_left_of_2/dense_11/MatMul/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:XT
/
_output_shapes
:���������
!
_user_specified_name	input_2"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������
C
input_28
serving_default_input_2:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�W
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
flatten

	dense1


dense2

signatures"
_tf_keras_model
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_12�
K__inference_simple_keras_with_concatentation_left_of_2_layer_call_fn_371832
K__inference_simple_keras_with_concatentation_left_of_2_layer_call_fn_371924�
���
FullArgSpec
args�
jself
jinp
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_0
trace_12�
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371951
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371894�
���
FullArgSpec
args�
jself
jinp
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�B�
!__inference__wrapped_model_371763input_1input_2"�
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
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
,
+serving_default"
signature_map
L:J2:simple_keras_with_concatentation_left_of_2/dense_10/kernel
F:D28simple_keras_with_concatentation_left_of_2/dense_10/bias
L:J2:simple_keras_with_concatentation_left_of_2/dense_11/kernel
F:D28simple_keras_with_concatentation_left_of_2/dense_11/bias
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
K__inference_simple_keras_with_concatentation_left_of_2_layer_call_fn_371832input_1input_2"�
���
FullArgSpec
args�
jself
jinp
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_simple_keras_with_concatentation_left_of_2_layer_call_fn_371924inp/0inp/1"�
���
FullArgSpec
args�
jself
jinp
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371951inp/0inp/1"�
���
FullArgSpec
args�
jself
jinp
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371894input_1input_2"�
���
FullArgSpec
args�
jself
jinp
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
1trace_02�
*__inference_flatten_5_layer_call_fn_371956�
���
FullArgSpec
args�
jself
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
annotations� *
 z1trace_0
�
2trace_02�
E__inference_flatten_5_layer_call_and_return_conditional_losses_371962�
���
FullArgSpec
args�
jself
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
annotations� *
 z2trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
8trace_02�
)__inference_dense_10_layer_call_fn_371971�
���
FullArgSpec
args�
jself
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
annotations� *
 z8trace_0
�
9trace_02�
D__inference_dense_10_layer_call_and_return_conditional_losses_371982�
���
FullArgSpec
args�
jself
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
annotations� *
 z9trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
?trace_02�
)__inference_dense_11_layer_call_fn_371991�
���
FullArgSpec
args�
jself
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
annotations� *
 z?trace_0
�
@trace_02�
D__inference_dense_11_layer_call_and_return_conditional_losses_372002�
���
FullArgSpec
args�
jself
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
annotations� *
 z@trace_0
�B�
$__inference_signature_wrapper_371910input_1input_2"�
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
*__inference_flatten_5_layer_call_fn_371956inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
E__inference_flatten_5_layer_call_and_return_conditional_losses_371962inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
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
)__inference_dense_10_layer_call_fn_371971inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
D__inference_dense_10_layer_call_and_return_conditional_losses_371982inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
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
)__inference_dense_11_layer_call_fn_371991inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
D__inference_dense_11_layer_call_and_return_conditional_losses_372002inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 �
!__inference__wrapped_model_371763�h�e
^�[
Y�V
)�&
input_1���������
)�&
input_2���������
� "3�0
.
output_1"�
output_1����������
D__inference_dense_10_layer_call_and_return_conditional_losses_371982\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
)__inference_dense_10_layer_call_fn_371971O/�,
%�"
 �
inputs���������
� "�����������
D__inference_dense_11_layer_call_and_return_conditional_losses_372002\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� |
)__inference_dense_11_layer_call_fn_371991O/�,
%�"
 �
inputs���������
� "�����������
E__inference_flatten_5_layer_call_and_return_conditional_losses_371962`7�4
-�*
(�%
inputs���������
� "%�"
�
0���������
� �
*__inference_flatten_5_layer_call_fn_371956S7�4
-�*
(�%
inputs���������
� "�����������
$__inference_signature_wrapper_371910�y�v
� 
o�l
4
input_1)�&
input_1���������
4
input_2)�&
input_2���������"3�0
.
output_1"�
output_1����������
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371894�h�e
^�[
Y�V
)�&
input_1���������
)�&
input_2���������
� "%�"
�
0���������
� �
f__inference_simple_keras_with_concatentation_left_of_2_layer_call_and_return_conditional_losses_371951�d�a
Z�W
U�R
'�$
inp/0���������
'�$
inp/1���������
� "%�"
�
0���������
� �
K__inference_simple_keras_with_concatentation_left_of_2_layer_call_fn_371832�h�e
^�[
Y�V
)�&
input_1���������
)�&
input_2���������
� "�����������
K__inference_simple_keras_with_concatentation_left_of_2_layer_call_fn_371924�d�a
Z�W
U�R
'�$
inp/0���������
'�$
inp/1���������
� "����������