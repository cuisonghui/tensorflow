�[
��
A
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
executor_typestring �
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
 �"serve*2.4.02unknown8�G
|
initialized_variableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameinitialized_variable
u
(initialized_variable/Read/ReadVariableOpReadVariableOpinitialized_variable*
_output_shapes
: *
dtype0
�
uninitialized_variableVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameuninitialized_variable
{
*uninitialized_variable/Read/ReadVariableOpReadVariableOpuninitialized_variable*
_output_shapes
:*
dtype0
�
uninitialized_variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*)
shared_nameuninitialized_variable_1

,uninitialized_variable_1/Read/ReadVariableOpReadVariableOpuninitialized_variable_1*
_output_shapes
:*
dtype0	

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
V

sub_module
initialized_variable
uninitialized_variable

signatures

uninitialized_variable
YW
VARIABLE_VALUEinitialized_variable/initialized_variable/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEuninitialized_variable1uninitialized_variable/.ATTRIBUTES/VARIABLE_VALUE
 
jh
VARIABLE_VALUEuninitialized_variable_1<sub_module/uninitialized_variable/.ATTRIBUTES/VARIABLE_VALUE
V
serving_default_valuePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_valueinitialized_variable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference_signature_wrapper_30
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(initialized_variable/Read/ReadVariableOp*uninitialized_variable/Read/ReadVariableOp,uninitialized_variable_1/Read/ReadVariableOpConst*
Tin	
2	*
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
GPU 2J 8� *$
fR
__inference__traced_save_62
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameinitialized_variableuninitialized_variableuninitialized_variable_1*
Tin
2*
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
GPU 2J 8� *'
f"R 
__inference__traced_restore_81�3
�
e
 __inference_signature_wrapper_30	
value
unknown
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallvalueunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_compute_212
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: :22
StatefulPartitionedCallStatefulPartitionedCall:= 9

_output_shapes
: 

_user_specified_namevalue
�
Q
__inference_compute_21	
value
readvariableop_resource
identity�p
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpS
addAddV2ReadVariableOp:value:0value*
T0*
_output_shapes
: 2
addJ
IdentityIdentityadd:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: ::= 9

_output_shapes
: 

_user_specified_namevalue
�
�
__inference__traced_restore_81
file_prefix)
%assignvariableop_initialized_variable-
)assignvariableop_1_uninitialized_variable/
+assignvariableop_2_uninitialized_variable_1

identity_4��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B/initialized_variable/.ATTRIBUTES/VARIABLE_VALUEB1uninitialized_variable/.ATTRIBUTES/VARIABLE_VALUEB<sub_module/uninitialized_variable/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp%assignvariableop_initialized_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp)assignvariableop_1_uninitialized_variableIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp+assignvariableop_2_uninitialized_variable_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_29
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_3�

Identity_4IdentityIdentity_3:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2*
T0*
_output_shapes
: 2

Identity_4"!

identity_4Identity_4:output:0*!
_input_shapes
: :::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
__inference__traced_save_62
file_prefix3
/savev2_initialized_variable_read_readvariableop5
1savev2_uninitialized_variable_read_readvariableop7
3savev2_uninitialized_variable_1_read_readvariableop	
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Const�
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_775037d2c9e944a9829e4aa03d97299d/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B/initialized_variable/.ATTRIBUTES/VARIABLE_VALUEB1uninitialized_variable/.ATTRIBUTES/VARIABLE_VALUEB<sub_module/uninitialized_variable/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_initialized_variable_read_readvariableop1savev2_uninitialized_variable_read_readvariableop3savev2_uninitialized_variable_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*!
_input_shapes
: : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_defaultq
&
value
serving_default_value:0 +
output_0
StatefulPartitionedCall:0 tensorflow/serving/predict:�
�

sub_module
initialized_variable
uninitialized_variable

signatures
compute"
_generic_user_object
:
uninitialized_variable"
_generic_user_object
: 2initialized_variable
": 2uninitialized_variable
,
serving_default"
signature_map
": 	2uninitialized_variable
�2�
__inference_compute_21�
���
FullArgSpec
args�
jself
jvalue
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
-B+
 __inference_signature_wrapper_30valueE
__inference_compute_21+�
�
�
value 
� "� s
 __inference_signature_wrapper_30O&�#
� 
�

value�
value ""�

output_0�
output_0 