яд
¬Ч
.
Abs
x"T
y"T"
Ttype:

2	
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
В
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8ЂҐ
Д
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
: *
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
: *
dtype0
Д
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
: *
dtype0
Д
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0
Д
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0
Е
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_22/kernel
~
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*'
_output_shapes
:@А*
dtype0
u
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_22/bias
n
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_23/kernel

$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_23/bias
n
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_24/kernel

$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_24/bias
n
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes	
:А*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АHА*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
АHА*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:А*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	А*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
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
Ь
RMSprop/conv2d_18/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameRMSprop/conv2d_18/kernel/rms
Х
0RMSprop/conv2d_18/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_18/kernel/rms*&
_output_shapes
: *
dtype0
М
RMSprop/conv2d_18/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameRMSprop/conv2d_18/bias/rms
Е
.RMSprop/conv2d_18/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_18/bias/rms*
_output_shapes
: *
dtype0
Ь
RMSprop/conv2d_19/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *-
shared_nameRMSprop/conv2d_19/kernel/rms
Х
0RMSprop/conv2d_19/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_19/kernel/rms*&
_output_shapes
:  *
dtype0
М
RMSprop/conv2d_19/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameRMSprop/conv2d_19/bias/rms
Е
.RMSprop/conv2d_19/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_19/bias/rms*
_output_shapes
: *
dtype0
Ь
RMSprop/conv2d_20/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*-
shared_nameRMSprop/conv2d_20/kernel/rms
Х
0RMSprop/conv2d_20/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_20/kernel/rms*&
_output_shapes
: @*
dtype0
М
RMSprop/conv2d_20/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameRMSprop/conv2d_20/bias/rms
Е
.RMSprop/conv2d_20/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_20/bias/rms*
_output_shapes
:@*
dtype0
Ь
RMSprop/conv2d_21/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*-
shared_nameRMSprop/conv2d_21/kernel/rms
Х
0RMSprop/conv2d_21/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_21/kernel/rms*&
_output_shapes
:@@*
dtype0
М
RMSprop/conv2d_21/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameRMSprop/conv2d_21/bias/rms
Е
.RMSprop/conv2d_21/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_21/bias/rms*
_output_shapes
:@*
dtype0
Э
RMSprop/conv2d_22/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*-
shared_nameRMSprop/conv2d_22/kernel/rms
Ц
0RMSprop/conv2d_22/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_22/kernel/rms*'
_output_shapes
:@А*
dtype0
Н
RMSprop/conv2d_22/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_22/bias/rms
Ж
.RMSprop/conv2d_22/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_22/bias/rms*
_output_shapes	
:А*
dtype0
Ю
RMSprop/conv2d_23/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*-
shared_nameRMSprop/conv2d_23/kernel/rms
Ч
0RMSprop/conv2d_23/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_23/kernel/rms*(
_output_shapes
:АА*
dtype0
Н
RMSprop/conv2d_23/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_23/bias/rms
Ж
.RMSprop/conv2d_23/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_23/bias/rms*
_output_shapes	
:А*
dtype0
Ю
RMSprop/conv2d_24/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*-
shared_nameRMSprop/conv2d_24/kernel/rms
Ч
0RMSprop/conv2d_24/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_24/kernel/rms*(
_output_shapes
:АА*
dtype0
Н
RMSprop/conv2d_24/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/conv2d_24/bias/rms
Ж
.RMSprop/conv2d_24/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_24/bias/rms*
_output_shapes	
:А*
dtype0
Т
RMSprop/dense_6/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АHА*+
shared_nameRMSprop/dense_6/kernel/rms
Л
.RMSprop/dense_6/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_6/kernel/rms* 
_output_shapes
:
АHА*
dtype0
Й
RMSprop/dense_6/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameRMSprop/dense_6/bias/rms
В
,RMSprop/dense_6/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_6/bias/rms*
_output_shapes	
:А*
dtype0
С
RMSprop/dense_7/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*+
shared_nameRMSprop/dense_7/kernel/rms
К
.RMSprop/dense_7/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_7/kernel/rms*
_output_shapes
:	А*
dtype0
И
RMSprop/dense_7/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameRMSprop/dense_7/bias/rms
Б
,RMSprop/dense_7/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_7/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
”^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*О^
valueД^BБ^ Bъ]
Ќ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
R
%	variables
&regularization_losses
'trainable_variables
(	keras_api
h

)kernel
*bias
+	variables
,regularization_losses
-trainable_variables
.	keras_api
h

/kernel
0bias
1	variables
2regularization_losses
3trainable_variables
4	keras_api
R
5	variables
6regularization_losses
7trainable_variables
8	keras_api
R
9	variables
:regularization_losses
;trainable_variables
<	keras_api
h

=kernel
>bias
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
h

Ckernel
Dbias
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
R
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
R
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
h

Qkernel
Rbias
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
R
W	variables
Xregularization_losses
Ytrainable_variables
Z	keras_api
R
[	variables
\regularization_losses
]trainable_variables
^	keras_api
R
_	variables
`regularization_losses
atrainable_variables
b	keras_api
h

ckernel
dbias
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
R
i	variables
jregularization_losses
ktrainable_variables
l	keras_api
h

mkernel
nbias
o	variables
pregularization_losses
qtrainable_variables
r	keras_api
Ч
siter
	tdecay
ulearning_rate
vmomentum
wrho
rmsв
rmsг
rmsд
 rmsе
)rmsж
*rmsз
/rmsи
0rmsй
=rmsк
>rmsл
Crmsм
Drmsн
Qrmsо
Rrmsп
crmsр
drmsс
mrmsт
nrmsу
Ж
0
1
2
 3
)4
*5
/6
07
=8
>9
C10
D11
Q12
R13
c14
d15
m16
n17
 
Ж
0
1
2
 3
)4
*5
/6
07
=8
>9
C10
D11
Q12
R13
c14
d15
m16
n17
≠
	variables
xlayer_regularization_losses
ymetrics
zlayer_metrics
{non_trainable_variables
regularization_losses
trainable_variables

|layers
 
\Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
ѓ
	variables
}layer_regularization_losses
~metrics
layer_metrics
Аnon_trainable_variables
regularization_losses
trainable_variables
Бlayers
\Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1
 

0
 1
≤
!	variables
 Вlayer_regularization_losses
Гmetrics
Дlayer_metrics
Еnon_trainable_variables
"regularization_losses
#trainable_variables
Жlayers
 
 
 
≤
%	variables
 Зlayer_regularization_losses
Иmetrics
Йlayer_metrics
Кnon_trainable_variables
&regularization_losses
'trainable_variables
Лlayers
\Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
 

)0
*1
≤
+	variables
 Мlayer_regularization_losses
Нmetrics
Оlayer_metrics
Пnon_trainable_variables
,regularization_losses
-trainable_variables
Рlayers
\Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01
 

/0
01
≤
1	variables
 Сlayer_regularization_losses
Тmetrics
Уlayer_metrics
Фnon_trainable_variables
2regularization_losses
3trainable_variables
Хlayers
 
 
 
≤
5	variables
 Цlayer_regularization_losses
Чmetrics
Шlayer_metrics
Щnon_trainable_variables
6regularization_losses
7trainable_variables
Ъlayers
 
 
 
≤
9	variables
 Ыlayer_regularization_losses
Ьmetrics
Эlayer_metrics
Юnon_trainable_variables
:regularization_losses
;trainable_variables
Яlayers
\Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1
 

=0
>1
≤
?	variables
 †layer_regularization_losses
°metrics
Ґlayer_metrics
£non_trainable_variables
@regularization_losses
Atrainable_variables
§layers
\Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
 

C0
D1
≤
E	variables
 •layer_regularization_losses
¶metrics
Іlayer_metrics
®non_trainable_variables
Fregularization_losses
Gtrainable_variables
©layers
 
 
 
≤
I	variables
 ™layer_regularization_losses
Ђmetrics
ђlayer_metrics
≠non_trainable_variables
Jregularization_losses
Ktrainable_variables
Ѓlayers
 
 
 
≤
M	variables
 ѓlayer_regularization_losses
∞metrics
±layer_metrics
≤non_trainable_variables
Nregularization_losses
Otrainable_variables
≥layers
\Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

Q0
R1
 

Q0
R1
≤
S	variables
 іlayer_regularization_losses
µmetrics
ґlayer_metrics
Јnon_trainable_variables
Tregularization_losses
Utrainable_variables
Єlayers
 
 
 
≤
W	variables
 єlayer_regularization_losses
Їmetrics
їlayer_metrics
Љnon_trainable_variables
Xregularization_losses
Ytrainable_variables
љlayers
 
 
 
≤
[	variables
 Њlayer_regularization_losses
њmetrics
јlayer_metrics
Ѕnon_trainable_variables
\regularization_losses
]trainable_variables
¬layers
 
 
 
≤
_	variables
 √layer_regularization_losses
ƒmetrics
≈layer_metrics
∆non_trainable_variables
`regularization_losses
atrainable_variables
«layers
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

c0
d1
 

c0
d1
≤
e	variables
 »layer_regularization_losses
…metrics
 layer_metrics
Ћnon_trainable_variables
fregularization_losses
gtrainable_variables
ћlayers
 
 
 
≤
i	variables
 Ќlayer_regularization_losses
ќmetrics
ѕlayer_metrics
–non_trainable_variables
jregularization_losses
ktrainable_variables
—layers
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

m0
n1
 

m0
n1
≤
o	variables
 “layer_regularization_losses
”metrics
‘layer_metrics
’non_trainable_variables
pregularization_losses
qtrainable_variables
÷layers
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
 

„0
Ў1
 
 
Ж
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
9
10
11
12
13
14
15
16
17
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

ўtotal

Џcount
џ	variables
№	keras_api
I

Ёtotal

ёcount
я
_fn_kwargs
а	variables
б	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ў0
Џ1

џ	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ё0
ё1

а	variables
ЗД
VARIABLE_VALUERMSprop/conv2d_18/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_18/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_19/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_19/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_20/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_20/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_21/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_21/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_22/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_22/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_23/kernel/rmsTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_23/bias/rmsRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUERMSprop/conv2d_24/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUERMSprop/conv2d_24/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUERMSprop/dense_6/kernel/rmsTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUERMSprop/dense_6/bias/rmsRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUERMSprop/dense_7/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUERMSprop/dense_7/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Т
serving_default_conv2d_18_inputPlaceholder*/
_output_shapes
:€€€€€€€€€dd*
dtype0*$
shape:€€€€€€€€€dd
Т
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_18_inputconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  АD8В *,
f'R%
#__inference_signature_wrapper_95774
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
х
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0RMSprop/conv2d_18/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_18/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_19/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_19/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_20/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_20/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_21/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_21/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_22/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_22/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_23/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_23/bias/rms/Read/ReadVariableOp0RMSprop/conv2d_24/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_24/bias/rms/Read/ReadVariableOp.RMSprop/dense_6/kernel/rms/Read/ReadVariableOp,RMSprop/dense_6/bias/rms/Read/ReadVariableOp.RMSprop/dense_7/kernel/rms/Read/ReadVariableOp,RMSprop/dense_7/bias/rms/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *'
f"R 
__inference__traced_save_96604
м	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_18/kernel/rmsRMSprop/conv2d_18/bias/rmsRMSprop/conv2d_19/kernel/rmsRMSprop/conv2d_19/bias/rmsRMSprop/conv2d_20/kernel/rmsRMSprop/conv2d_20/bias/rmsRMSprop/conv2d_21/kernel/rmsRMSprop/conv2d_21/bias/rmsRMSprop/conv2d_22/kernel/rmsRMSprop/conv2d_22/bias/rmsRMSprop/conv2d_23/kernel/rmsRMSprop/conv2d_23/bias/rmsRMSprop/conv2d_24/kernel/rmsRMSprop/conv2d_24/bias/rmsRMSprop/dense_6/kernel/rmsRMSprop/dense_6/bias/rmsRMSprop/dense_7/kernel/rmsRMSprop/dense_7/bias/rms*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В **
f%R#
!__inference__traced_restore_96749Џ«
™
Б
,__inference_sequential_3_layer_call_fn_95590
conv2d_18_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€: *4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  АD8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_955502
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€dd
)
_user_specified_nameconv2d_18_input
¶
d
E__inference_dropout_15_layer_call_and_return_conditional_losses_95330

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape—
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0*
seed±€е)*
seed2{2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yњ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
„

Ё
D__inference_conv2d_23_layer_call_and_return_conditional_losses_96228

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
МШ
Њ
 __inference__wrapped_model_94897
conv2d_18_input9
5sequential_3_conv2d_18_conv2d_readvariableop_resource:
6sequential_3_conv2d_18_biasadd_readvariableop_resource9
5sequential_3_conv2d_19_conv2d_readvariableop_resource:
6sequential_3_conv2d_19_biasadd_readvariableop_resource9
5sequential_3_conv2d_20_conv2d_readvariableop_resource:
6sequential_3_conv2d_20_biasadd_readvariableop_resource9
5sequential_3_conv2d_21_conv2d_readvariableop_resource:
6sequential_3_conv2d_21_biasadd_readvariableop_resource9
5sequential_3_conv2d_22_conv2d_readvariableop_resource:
6sequential_3_conv2d_22_biasadd_readvariableop_resource9
5sequential_3_conv2d_23_conv2d_readvariableop_resource:
6sequential_3_conv2d_23_biasadd_readvariableop_resource9
5sequential_3_conv2d_24_conv2d_readvariableop_resource:
6sequential_3_conv2d_24_biasadd_readvariableop_resource7
3sequential_3_dense_6_matmul_readvariableop_resource8
4sequential_3_dense_6_biasadd_readvariableop_resource7
3sequential_3_dense_7_matmul_readvariableop_resource8
4sequential_3_dense_7_biasadd_readvariableop_resource
identityИҐ-sequential_3/conv2d_18/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_18/Conv2D/ReadVariableOpҐ-sequential_3/conv2d_19/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_19/Conv2D/ReadVariableOpҐ-sequential_3/conv2d_20/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_20/Conv2D/ReadVariableOpҐ-sequential_3/conv2d_21/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_21/Conv2D/ReadVariableOpҐ-sequential_3/conv2d_22/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_22/Conv2D/ReadVariableOpҐ-sequential_3/conv2d_23/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_23/Conv2D/ReadVariableOpҐ-sequential_3/conv2d_24/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_24/Conv2D/ReadVariableOpҐ+sequential_3/dense_6/BiasAdd/ReadVariableOpҐ*sequential_3/dense_6/MatMul/ReadVariableOpҐ+sequential_3/dense_7/BiasAdd/ReadVariableOpҐ*sequential_3/dense_7/MatMul/ReadVariableOpЏ
,sequential_3/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_3/conv2d_18/Conv2D/ReadVariableOpс
sequential_3/conv2d_18/Conv2DConv2Dconv2d_18_input4sequential_3/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
sequential_3/conv2d_18/Conv2D—
-sequential_3/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_3/conv2d_18/BiasAdd/ReadVariableOpд
sequential_3/conv2d_18/BiasAddBiasAdd&sequential_3/conv2d_18/Conv2D:output:05sequential_3/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2 
sequential_3/conv2d_18/BiasAdd•
sequential_3/conv2d_18/ReluRelu'sequential_3/conv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
sequential_3/conv2d_18/ReluЏ
,sequential_3/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_3/conv2d_19/Conv2D/ReadVariableOpЛ
sequential_3/conv2d_19/Conv2DConv2D)sequential_3/conv2d_18/Relu:activations:04sequential_3/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
sequential_3/conv2d_19/Conv2D—
-sequential_3/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_3/conv2d_19/BiasAdd/ReadVariableOpд
sequential_3/conv2d_19/BiasAddBiasAdd&sequential_3/conv2d_19/Conv2D:output:05sequential_3/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2 
sequential_3/conv2d_19/BiasAdd•
sequential_3/conv2d_19/ReluRelu'sequential_3/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
sequential_3/conv2d_19/Reluс
%sequential_3/max_pooling2d_12/MaxPoolMaxPool)sequential_3/conv2d_19/Relu:activations:0*/
_output_shapes
:€€€€€€€€€22 *
ksize
*
paddingVALID*
strides
2'
%sequential_3/max_pooling2d_12/MaxPoolЏ
,sequential_3/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_3/conv2d_20/Conv2D/ReadVariableOpР
sequential_3/conv2d_20/Conv2DConv2D.sequential_3/max_pooling2d_12/MaxPool:output:04sequential_3/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
sequential_3/conv2d_20/Conv2D—
-sequential_3/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_3/conv2d_20/BiasAdd/ReadVariableOpд
sequential_3/conv2d_20/BiasAddBiasAdd&sequential_3/conv2d_20/Conv2D:output:05sequential_3/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2 
sequential_3/conv2d_20/BiasAdd•
sequential_3/conv2d_20/ReluRelu'sequential_3/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
sequential_3/conv2d_20/ReluЏ
,sequential_3/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_3/conv2d_21/Conv2D/ReadVariableOpЛ
sequential_3/conv2d_21/Conv2DConv2D)sequential_3/conv2d_20/Relu:activations:04sequential_3/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
sequential_3/conv2d_21/Conv2D—
-sequential_3/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_3/conv2d_21/BiasAdd/ReadVariableOpд
sequential_3/conv2d_21/BiasAddBiasAdd&sequential_3/conv2d_21/Conv2D:output:05sequential_3/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2 
sequential_3/conv2d_21/BiasAdd•
sequential_3/conv2d_21/ReluRelu'sequential_3/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
sequential_3/conv2d_21/Reluс
%sequential_3/max_pooling2d_13/MaxPoolMaxPool)sequential_3/conv2d_21/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2'
%sequential_3/max_pooling2d_13/MaxPoolЇ
 sequential_3/dropout_12/IdentityIdentity.sequential_3/max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2"
 sequential_3/dropout_12/Identityџ
,sequential_3/conv2d_22/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02.
,sequential_3/conv2d_22/Conv2D/ReadVariableOpМ
sequential_3/conv2d_22/Conv2DConv2D)sequential_3/dropout_12/Identity:output:04sequential_3/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
sequential_3/conv2d_22/Conv2D“
-sequential_3/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_3/conv2d_22/BiasAdd/ReadVariableOpе
sequential_3/conv2d_22/BiasAddBiasAdd&sequential_3/conv2d_22/Conv2D:output:05sequential_3/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2 
sequential_3/conv2d_22/BiasAdd¶
sequential_3/conv2d_22/ReluRelu'sequential_3/conv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_3/conv2d_22/Relu№
,sequential_3/conv2d_23/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02.
,sequential_3/conv2d_23/Conv2D/ReadVariableOpМ
sequential_3/conv2d_23/Conv2DConv2D)sequential_3/conv2d_22/Relu:activations:04sequential_3/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
sequential_3/conv2d_23/Conv2D“
-sequential_3/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_3/conv2d_23/BiasAdd/ReadVariableOpе
sequential_3/conv2d_23/BiasAddBiasAdd&sequential_3/conv2d_23/Conv2D:output:05sequential_3/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2 
sequential_3/conv2d_23/BiasAdd¶
sequential_3/conv2d_23/ReluRelu'sequential_3/conv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_3/conv2d_23/Reluт
%sequential_3/max_pooling2d_14/MaxPoolMaxPool)sequential_3/conv2d_23/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2'
%sequential_3/max_pooling2d_14/MaxPoolї
 sequential_3/dropout_13/IdentityIdentity.sequential_3/max_pooling2d_14/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 sequential_3/dropout_13/Identity№
,sequential_3/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02.
,sequential_3/conv2d_24/Conv2D/ReadVariableOpМ
sequential_3/conv2d_24/Conv2DConv2D)sequential_3/dropout_13/Identity:output:04sequential_3/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
sequential_3/conv2d_24/Conv2D“
-sequential_3/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-sequential_3/conv2d_24/BiasAdd/ReadVariableOpе
sequential_3/conv2d_24/BiasAddBiasAdd&sequential_3/conv2d_24/Conv2D:output:05sequential_3/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2 
sequential_3/conv2d_24/BiasAdd¶
sequential_3/conv2d_24/ReluRelu'sequential_3/conv2d_24/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
sequential_3/conv2d_24/Reluт
%sequential_3/max_pooling2d_15/MaxPoolMaxPool)sequential_3/conv2d_24/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2'
%sequential_3/max_pooling2d_15/MaxPoolї
 sequential_3/dropout_14/IdentityIdentity.sequential_3/max_pooling2d_15/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 sequential_3/dropout_14/IdentityН
sequential_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ $  2
sequential_3/flatten_3/Const–
sequential_3/flatten_3/ReshapeReshape)sequential_3/dropout_14/Identity:output:0%sequential_3/flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АH2 
sequential_3/flatten_3/Reshapeќ
*sequential_3/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02,
*sequential_3/dense_6/MatMul/ReadVariableOp‘
sequential_3/dense_6/MatMulMatMul'sequential_3/flatten_3/Reshape:output:02sequential_3/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_6/MatMulћ
+sequential_3/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+sequential_3/dense_6/BiasAdd/ReadVariableOp÷
sequential_3/dense_6/BiasAddBiasAdd%sequential_3/dense_6/MatMul:product:03sequential_3/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_6/BiasAddШ
sequential_3/dense_6/ReluRelu%sequential_3/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_6/Reluњ
,sequential_3/dense_6/ActivityRegularizer/AbsAbs'sequential_3/dense_6/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2.
,sequential_3/dense_6/ActivityRegularizer/Abs±
.sequential_3/dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.sequential_3/dense_6/ActivityRegularizer/Constп
,sequential_3/dense_6/ActivityRegularizer/SumSum0sequential_3/dense_6/ActivityRegularizer/Abs:y:07sequential_3/dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2.
,sequential_3/dense_6/ActivityRegularizer/Sum•
.sequential_3/dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;20
.sequential_3/dense_6/ActivityRegularizer/mul/xф
,sequential_3/dense_6/ActivityRegularizer/mulMul7sequential_3/dense_6/ActivityRegularizer/mul/x:output:05sequential_3/dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,sequential_3/dense_6/ActivityRegularizer/mulЈ
.sequential_3/dense_6/ActivityRegularizer/ShapeShape'sequential_3/dense_6/Relu:activations:0*
T0*
_output_shapes
:20
.sequential_3/dense_6/ActivityRegularizer/Shape∆
<sequential_3/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_3/dense_6/ActivityRegularizer/strided_slice/stack 
>sequential_3/dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_3/dense_6/ActivityRegularizer/strided_slice/stack_1 
>sequential_3/dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_3/dense_6/ActivityRegularizer/strided_slice/stack_2Ў
6sequential_3/dense_6/ActivityRegularizer/strided_sliceStridedSlice7sequential_3/dense_6/ActivityRegularizer/Shape:output:0Esequential_3/dense_6/ActivityRegularizer/strided_slice/stack:output:0Gsequential_3/dense_6/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_3/dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential_3/dense_6/ActivityRegularizer/strided_slice„
-sequential_3/dense_6/ActivityRegularizer/CastCast?sequential_3/dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2/
-sequential_3/dense_6/ActivityRegularizer/Castх
0sequential_3/dense_6/ActivityRegularizer/truedivRealDiv0sequential_3/dense_6/ActivityRegularizer/mul:z:01sequential_3/dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 22
0sequential_3/dense_6/ActivityRegularizer/truedivђ
 sequential_3/dropout_15/IdentityIdentity'sequential_3/dense_6/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
 sequential_3/dropout_15/IdentityЌ
*sequential_3/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02,
*sequential_3/dense_7/MatMul/ReadVariableOp’
sequential_3/dense_7/MatMulMatMul)sequential_3/dropout_15/Identity:output:02sequential_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_7/MatMulЋ
+sequential_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_3/dense_7/BiasAdd/ReadVariableOp’
sequential_3/dense_7/BiasAddBiasAdd%sequential_3/dense_7/MatMul:product:03sequential_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_7/BiasAdd†
sequential_3/dense_7/SoftmaxSoftmax%sequential_3/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_7/Softmax…
IdentityIdentity&sequential_3/dense_7/Softmax:softmax:0.^sequential_3/conv2d_18/BiasAdd/ReadVariableOp-^sequential_3/conv2d_18/Conv2D/ReadVariableOp.^sequential_3/conv2d_19/BiasAdd/ReadVariableOp-^sequential_3/conv2d_19/Conv2D/ReadVariableOp.^sequential_3/conv2d_20/BiasAdd/ReadVariableOp-^sequential_3/conv2d_20/Conv2D/ReadVariableOp.^sequential_3/conv2d_21/BiasAdd/ReadVariableOp-^sequential_3/conv2d_21/Conv2D/ReadVariableOp.^sequential_3/conv2d_22/BiasAdd/ReadVariableOp-^sequential_3/conv2d_22/Conv2D/ReadVariableOp.^sequential_3/conv2d_23/BiasAdd/ReadVariableOp-^sequential_3/conv2d_23/Conv2D/ReadVariableOp.^sequential_3/conv2d_24/BiasAdd/ReadVariableOp-^sequential_3/conv2d_24/Conv2D/ReadVariableOp,^sequential_3/dense_6/BiasAdd/ReadVariableOp+^sequential_3/dense_6/MatMul/ReadVariableOp,^sequential_3/dense_7/BiasAdd/ReadVariableOp+^sequential_3/dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::2^
-sequential_3/conv2d_18/BiasAdd/ReadVariableOp-sequential_3/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_18/Conv2D/ReadVariableOp,sequential_3/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_19/BiasAdd/ReadVariableOp-sequential_3/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_19/Conv2D/ReadVariableOp,sequential_3/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_20/BiasAdd/ReadVariableOp-sequential_3/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_20/Conv2D/ReadVariableOp,sequential_3/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_21/BiasAdd/ReadVariableOp-sequential_3/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_21/Conv2D/ReadVariableOp,sequential_3/conv2d_21/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_22/BiasAdd/ReadVariableOp-sequential_3/conv2d_22/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_22/Conv2D/ReadVariableOp,sequential_3/conv2d_22/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_23/BiasAdd/ReadVariableOp-sequential_3/conv2d_23/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_23/Conv2D/ReadVariableOp,sequential_3/conv2d_23/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_24/BiasAdd/ReadVariableOp-sequential_3/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_24/Conv2D/ReadVariableOp,sequential_3/conv2d_24/Conv2D/ReadVariableOp2Z
+sequential_3/dense_6/BiasAdd/ReadVariableOp+sequential_3/dense_6/BiasAdd/ReadVariableOp2X
*sequential_3/dense_6/MatMul/ReadVariableOp*sequential_3/dense_6/MatMul/ReadVariableOp2Z
+sequential_3/dense_7/BiasAdd/ReadVariableOp+sequential_3/dense_7/BiasAdd/ReadVariableOp2X
*sequential_3/dense_7/MatMul/ReadVariableOp*sequential_3/dense_7/MatMul/ReadVariableOp:` \
/
_output_shapes
:€€€€€€€€€dd
)
_user_specified_nameconv2d_18_input
з
|
'__inference_dense_6_layer_call_fn_96366

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_952822
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€АH::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€АH
 
_user_specified_nameinputs
£
F
*__inference_dropout_15_layer_call_fn_96404

inputs
identityѕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_953352
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
нz
¶
G__inference_sequential_3_layer_call_and_return_conditional_losses_95389
conv2d_18_input
conv2d_18_94984
conv2d_18_94986
conv2d_19_95011
conv2d_19_95013
conv2d_20_95039
conv2d_20_95041
conv2d_21_95066
conv2d_21_95068
conv2d_22_95124
conv2d_22_95126
conv2d_23_95151
conv2d_23_95153
conv2d_24_95209
conv2d_24_95211
dense_6_95305
dense_6_95307
dense_7_95370
dense_7_95372
identity

identity_1ИҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐ!conv2d_23/StatefulPartitionedCallҐ!conv2d_24/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpҐdense_7/StatefulPartitionedCallҐ"dropout_12/StatefulPartitionedCallҐ"dropout_13/StatefulPartitionedCallҐ"dropout_14/StatefulPartitionedCallҐ"dropout_15/StatefulPartitionedCall≤
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_94984conv2d_18_94986*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_949732#
!conv2d_18/StatefulPartitionedCallЌ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_95011conv2d_19_95013*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_950002#
!conv2d_19/StatefulPartitionedCallҐ
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22 * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_949032"
 max_pooling2d_12/PartitionedCallћ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_20_95039conv2d_20_95041*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_950282#
!conv2d_20/StatefulPartitionedCallЌ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0conv2d_21_95066conv2d_21_95068*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_950552#
!conv2d_21/StatefulPartitionedCallҐ
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_949152"
 max_pooling2d_13/PartitionedCallІ
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_950842$
"dropout_12/StatefulPartitionedCallѕ
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0conv2d_22_95124conv2d_22_95126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_951132#
!conv2d_22/StatefulPartitionedCallќ
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0conv2d_23_95151conv2d_23_95153*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_951402#
!conv2d_23/StatefulPartitionedCall£
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_949272"
 max_pooling2d_14/PartitionedCallЌ
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_951692$
"dropout_13/StatefulPartitionedCallѕ
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0conv2d_24_95209conv2d_24_95211*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_951982#
!conv2d_24/StatefulPartitionedCall£
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_949392"
 max_pooling2d_15/PartitionedCallЌ
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_952272$
"dropout_14/StatefulPartitionedCallЗ
flatten_3/PartitionedCallPartitionedCall+dropout_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€АH* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_952512
flatten_3/PartitionedCallі
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_95305dense_6_95307*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_952822!
dense_6/StatefulPartitionedCallА
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *7
f2R0
.__inference_dense_6_activity_regularizer_949582-
+dense_6/ActivityRegularizer/PartitionedCallЮ
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/Shapeђ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stack∞
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1∞
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2К
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_slice∞
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/Cast“
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivƒ
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_953302$
"dropout_15/StatefulPartitionedCallЉ
dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0dense_7_95370dense_7_95372*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_953592!
dense_7/StatefulPartitionedCallі
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_95305* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul•
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOpdense_6_95307*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mul±
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity£

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€dd
)
_user_specified_nameconv2d_18_input
њ
F
*__inference_dropout_12_layer_call_fn_96197

inputs
identity÷
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_950892
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ћ
d
E__inference_dropout_13_layer_call_and_return_conditional_losses_96249

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_20_layer_call_and_return_conditional_losses_95028

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€22@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€22 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€22 
 
_user_specified_nameinputs
≥
H
.__inference_dense_6_activity_regularizer_94958
self
identity:
AbsAbsself*
T0*
_output_shapes
:2
Abs>
RankRankAbs:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
rangeK
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
::> :

_output_shapes
:

_user_specified_nameself
З
~
)__inference_conv2d_21_layer_call_fn_96170

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_950552
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€22@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€22@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€22@
 
_user_specified_nameinputs
П
ш
,__inference_sequential_3_layer_call_fn_96090

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€: *4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  АD8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_956712
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
Ћ
c
*__inference_dropout_12_layer_call_fn_96192

inputs
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_950842
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ѕ
c
*__inference_dropout_13_layer_call_fn_96259

inputs
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_951692
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
З
~
)__inference_conv2d_20_layer_call_fn_96150

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_950282
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€22@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€22 ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€22 
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_13_layer_call_fn_94921

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_949152
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_15_layer_call_fn_94945

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_949392
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94927

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_21_layer_call_and_return_conditional_losses_95055

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€22@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€22@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€22@
 
_user_specified_nameinputs
„

Ё
D__inference_conv2d_23_layer_call_and_return_conditional_losses_95140

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
яє
щ
G__inference_sequential_3_layer_call_and_return_conditional_losses_95904

inputs,
(conv2d_18_conv2d_readvariableop_resource-
)conv2d_18_biasadd_readvariableop_resource,
(conv2d_19_conv2d_readvariableop_resource-
)conv2d_19_biasadd_readvariableop_resource,
(conv2d_20_conv2d_readvariableop_resource-
)conv2d_20_biasadd_readvariableop_resource,
(conv2d_21_conv2d_readvariableop_resource-
)conv2d_21_biasadd_readvariableop_resource,
(conv2d_22_conv2d_readvariableop_resource-
)conv2d_22_biasadd_readvariableop_resource,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource,
(conv2d_24_conv2d_readvariableop_resource-
)conv2d_24_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identity

identity_1ИҐ conv2d_18/BiasAdd/ReadVariableOpҐconv2d_18/Conv2D/ReadVariableOpҐ conv2d_19/BiasAdd/ReadVariableOpҐconv2d_19/Conv2D/ReadVariableOpҐ conv2d_20/BiasAdd/ReadVariableOpҐconv2d_20/Conv2D/ReadVariableOpҐ conv2d_21/BiasAdd/ReadVariableOpҐconv2d_21/Conv2D/ReadVariableOpҐ conv2d_22/BiasAdd/ReadVariableOpҐconv2d_22/Conv2D/ReadVariableOpҐ conv2d_23/BiasAdd/ReadVariableOpҐconv2d_23/Conv2D/ReadVariableOpҐ conv2d_24/BiasAdd/ReadVariableOpҐconv2d_24/Conv2D/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOp≥
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_18/Conv2D/ReadVariableOpЅ
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
conv2d_18/Conv2D™
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp∞
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
conv2d_18/BiasAdd~
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
conv2d_18/Relu≥
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_19/Conv2D/ReadVariableOp„
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
conv2d_19/Conv2D™
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp∞
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
conv2d_19/Relu 
max_pooling2d_12/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:€€€€€€€€€22 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_12/MaxPool≥
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_20/Conv2D/ReadVariableOp№
conv2d_20/Conv2DConv2D!max_pooling2d_12/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
conv2d_20/Conv2D™
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp∞
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
conv2d_20/Relu≥
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_21/Conv2D/ReadVariableOp„
conv2d_21/Conv2DConv2Dconv2d_20/Relu:activations:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
conv2d_21/Conv2D™
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp∞
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
conv2d_21/Relu 
max_pooling2d_13/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPooly
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout_12/dropout/ConstЈ
dropout_12/dropout/MulMul!max_pooling2d_13/MaxPool:output:0!dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_12/dropout/MulЕ
dropout_12/dropout/ShapeShape!max_pooling2d_13/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_12/dropout/ShapeЁ
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype021
/dropout_12/dropout/random_uniform/RandomUniformЛ
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2#
!dropout_12/dropout/GreaterEqual/yт
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2!
dropout_12/dropout/GreaterEqual®
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout_12/dropout/CastЃ
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_12/dropout/Mul_1і
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_22/Conv2D/ReadVariableOpЎ
conv2d_22/Conv2DConv2Ddropout_12/dropout/Mul_1:z:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_22/Conv2DЂ
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp±
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_22/BiasAdd
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_22/Reluµ
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_23/Conv2D/ReadVariableOpЎ
conv2d_23/Conv2DConv2Dconv2d_22/Relu:activations:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_23/Conv2DЂ
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp±
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_23/BiasAdd
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_23/ReluЋ
max_pooling2d_14/MaxPoolMaxPoolconv2d_23/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPooly
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?2
dropout_13/dropout/ConstЄ
dropout_13/dropout/MulMul!max_pooling2d_14/MaxPool:output:0!dropout_13/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout_13/dropout/MulЕ
dropout_13/dropout/ShapeShape!max_pooling2d_14/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_13/dropout/Shapeё
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype021
/dropout_13/dropout/random_uniform/RandomUniformЛ
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>2#
!dropout_13/dropout/GreaterEqual/yу
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
dropout_13/dropout/GreaterEqual©
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout_13/dropout/Castѓ
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout_13/dropout/Mul_1µ
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_24/Conv2D/ReadVariableOpЎ
conv2d_24/Conv2DConv2Ddropout_13/dropout/Mul_1:z:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_24/Conv2DЂ
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp±
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_24/BiasAdd
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_24/ReluЋ
max_pooling2d_15/MaxPoolMaxPoolconv2d_24/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPooly
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?2
dropout_14/dropout/ConstЄ
dropout_14/dropout/MulMul!max_pooling2d_15/MaxPool:output:0!dropout_14/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout_14/dropout/MulЕ
dropout_14/dropout/ShapeShape!max_pooling2d_15/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_14/dropout/Shapeё
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype021
/dropout_14/dropout/random_uniform/RandomUniformЛ
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>2#
!dropout_14/dropout/GreaterEqual/yу
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
dropout_14/dropout/GreaterEqual©
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout_14/dropout/Castѓ
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout_14/dropout/Mul_1s
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ $  2
flatten_3/ConstЬ
flatten_3/ReshapeReshapedropout_14/dropout/Mul_1:z:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АH2
flatten_3/ReshapeІ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02
dense_6/MatMul/ReadVariableOp†
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/MatMul•
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_6/BiasAdd/ReadVariableOpҐ
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/ReluШ
dense_6/ActivityRegularizer/AbsAbsdense_6/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
dense_6/ActivityRegularizer/AbsЧ
!dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_6/ActivityRegularizer/Constї
dense_6/ActivityRegularizer/SumSum#dense_6/ActivityRegularizer/Abs:y:0*dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_6/ActivityRegularizer/SumЛ
!dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2#
!dense_6/ActivityRegularizer/mul/xј
dense_6/ActivityRegularizer/mulMul*dense_6/ActivityRegularizer/mul/x:output:0(dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_6/ActivityRegularizer/mulР
!dense_6/ActivityRegularizer/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/Shapeђ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stack∞
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1∞
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2К
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_slice∞
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/CastЅ
#dense_6/ActivityRegularizer/truedivRealDiv#dense_6/ActivityRegularizer/mul:z:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivy
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_15/dropout/Const©
dropout_15/dropout/MulMuldense_6/Relu:activations:0!dropout_15/dropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_15/dropout/Mul~
dropout_15/dropout/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:2
dropout_15/dropout/Shapeт
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0*
seed±€е)*
seed2{21
/dropout_15/dropout/random_uniform/RandomUniformЛ
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_15/dropout/GreaterEqual/yл
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
dropout_15/dropout/GreaterEqual°
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout_15/dropout/CastІ
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_15/dropout/Mul_1¶
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_7/MatMul/ReadVariableOp°
dense_7/MatMulMatMuldropout_15/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/MatMul§
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp°
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/SoftmaxЌ
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mulњ
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mul≥
IdentityIdentitydense_7/Softmax:softmax:0!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityі

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
¶
d
E__inference_dropout_15_layer_call_and_return_conditional_losses_96389

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape—
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0*
seed±€е)*
seed2{2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yњ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Л
~
)__inference_conv2d_23_layer_call_fn_96237

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_951402
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
и
c
E__inference_dropout_12_layer_call_and_return_conditional_losses_96187

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ѓ
Ц
__inference_loss_fn_1_964468
4dense_6_bias_regularizer_abs_readvariableop_resource
identityИҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpћ
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOp4dense_6_bias_regularizer_abs_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mulС
IdentityIdentity dense_6/bias/Regularizer/mul:z:0,^dense_6/bias/Regularizer/Abs/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp
ч	
џ
B__inference_dense_7_layer_call_and_return_conditional_losses_96415

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_12_layer_call_fn_94909

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_949032
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ч

ш
#__inference_signature_wrapper_95774
conv2d_18_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  АD8В *)
f$R"
 __inference__wrapped_model_948972
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€dd
)
_user_specified_nameconv2d_18_input
Є
L
0__inference_max_pooling2d_14_layer_call_fn_94933

inputs
identityч
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_949272
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
м
c
E__inference_dropout_14_layer_call_and_return_conditional_losses_96301

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
«Т
щ
G__inference_sequential_3_layer_call_and_return_conditional_losses_96006

inputs,
(conv2d_18_conv2d_readvariableop_resource-
)conv2d_18_biasadd_readvariableop_resource,
(conv2d_19_conv2d_readvariableop_resource-
)conv2d_19_biasadd_readvariableop_resource,
(conv2d_20_conv2d_readvariableop_resource-
)conv2d_20_biasadd_readvariableop_resource,
(conv2d_21_conv2d_readvariableop_resource-
)conv2d_21_biasadd_readvariableop_resource,
(conv2d_22_conv2d_readvariableop_resource-
)conv2d_22_biasadd_readvariableop_resource,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource,
(conv2d_24_conv2d_readvariableop_resource-
)conv2d_24_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identity

identity_1ИҐ conv2d_18/BiasAdd/ReadVariableOpҐconv2d_18/Conv2D/ReadVariableOpҐ conv2d_19/BiasAdd/ReadVariableOpҐconv2d_19/Conv2D/ReadVariableOpҐ conv2d_20/BiasAdd/ReadVariableOpҐconv2d_20/Conv2D/ReadVariableOpҐ conv2d_21/BiasAdd/ReadVariableOpҐconv2d_21/Conv2D/ReadVariableOpҐ conv2d_22/BiasAdd/ReadVariableOpҐconv2d_22/Conv2D/ReadVariableOpҐ conv2d_23/BiasAdd/ReadVariableOpҐconv2d_23/Conv2D/ReadVariableOpҐ conv2d_24/BiasAdd/ReadVariableOpҐconv2d_24/Conv2D/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOp≥
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_18/Conv2D/ReadVariableOpЅ
conv2d_18/Conv2DConv2Dinputs'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
conv2d_18/Conv2D™
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp∞
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
conv2d_18/BiasAdd~
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
conv2d_18/Relu≥
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_19/Conv2D/ReadVariableOp„
conv2d_19/Conv2DConv2Dconv2d_18/Relu:activations:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
conv2d_19/Conv2D™
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp∞
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
conv2d_19/Relu 
max_pooling2d_12/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:€€€€€€€€€22 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_12/MaxPool≥
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_20/Conv2D/ReadVariableOp№
conv2d_20/Conv2DConv2D!max_pooling2d_12/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
conv2d_20/Conv2D™
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp∞
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
conv2d_20/Relu≥
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_21/Conv2D/ReadVariableOp„
conv2d_21/Conv2DConv2Dconv2d_20/Relu:activations:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
conv2d_21/Conv2D™
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp∞
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
conv2d_21/Relu 
max_pooling2d_13/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPoolУ
dropout_12/IdentityIdentity!max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout_12/Identityі
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_22/Conv2D/ReadVariableOpЎ
conv2d_22/Conv2DConv2Ddropout_12/Identity:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_22/Conv2DЂ
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp±
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_22/BiasAdd
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_22/Reluµ
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_23/Conv2D/ReadVariableOpЎ
conv2d_23/Conv2DConv2Dconv2d_22/Relu:activations:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_23/Conv2DЂ
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp±
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_23/BiasAdd
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_23/ReluЋ
max_pooling2d_14/MaxPoolMaxPoolconv2d_23/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPoolФ
dropout_13/IdentityIdentity!max_pooling2d_14/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout_13/Identityµ
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_24/Conv2D/ReadVariableOpЎ
conv2d_24/Conv2DConv2Ddropout_13/Identity:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
conv2d_24/Conv2DЂ
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp±
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_24/BiasAdd
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_24/ReluЋ
max_pooling2d_15/MaxPoolMaxPoolconv2d_24/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPoolФ
dropout_14/IdentityIdentity!max_pooling2d_15/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout_14/Identitys
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ $  2
flatten_3/ConstЬ
flatten_3/ReshapeReshapedropout_14/Identity:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АH2
flatten_3/ReshapeІ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02
dense_6/MatMul/ReadVariableOp†
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/MatMul•
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_6/BiasAdd/ReadVariableOpҐ
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/ReluШ
dense_6/ActivityRegularizer/AbsAbsdense_6/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2!
dense_6/ActivityRegularizer/AbsЧ
!dense_6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_6/ActivityRegularizer/Constї
dense_6/ActivityRegularizer/SumSum#dense_6/ActivityRegularizer/Abs:y:0*dense_6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_6/ActivityRegularizer/SumЛ
!dense_6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2#
!dense_6/ActivityRegularizer/mul/xј
dense_6/ActivityRegularizer/mulMul*dense_6/ActivityRegularizer/mul/x:output:0(dense_6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_6/ActivityRegularizer/mulР
!dense_6/ActivityRegularizer/ShapeShapedense_6/Relu:activations:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/Shapeђ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stack∞
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1∞
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2К
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_slice∞
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/CastЅ
#dense_6/ActivityRegularizer/truedivRealDiv#dense_6/ActivityRegularizer/mul:z:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivЕ
dropout_15/IdentityIdentitydense_6/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout_15/Identity¶
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_7/MatMul/ReadVariableOp°
dense_7/MatMulMatMuldropout_15/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/MatMul§
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp°
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/SoftmaxЌ
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mulњ
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mul≥
IdentityIdentitydense_7/Softmax:softmax:0!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityі

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ћ
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_95335

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
З
~
)__inference_conv2d_19_layer_call_fn_96130

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_950002
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€dd 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd 
 
_user_specified_nameinputs
„

Ё
D__inference_conv2d_24_layer_call_and_return_conditional_losses_96275

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
√
d
E__inference_dropout_12_layer_call_and_return_conditional_losses_95084

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
‘

Ё
D__inference_conv2d_22_layer_call_and_return_conditional_losses_95113

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
€r
Й
G__inference_sequential_3_layer_call_and_return_conditional_losses_95671

inputs
conv2d_18_95595
conv2d_18_95597
conv2d_19_95600
conv2d_19_95602
conv2d_20_95606
conv2d_20_95608
conv2d_21_95611
conv2d_21_95613
conv2d_22_95618
conv2d_22_95620
conv2d_23_95623
conv2d_23_95625
conv2d_24_95630
conv2d_24_95632
dense_6_95638
dense_6_95640
dense_7_95652
dense_7_95654
identity

identity_1ИҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐ!conv2d_23/StatefulPartitionedCallҐ!conv2d_24/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpҐdense_7/StatefulPartitionedCall©
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_95595conv2d_18_95597*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_949732#
!conv2d_18/StatefulPartitionedCallЌ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_95600conv2d_19_95602*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_950002#
!conv2d_19/StatefulPartitionedCallҐ
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22 * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_949032"
 max_pooling2d_12/PartitionedCallћ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_20_95606conv2d_20_95608*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_950282#
!conv2d_20/StatefulPartitionedCallЌ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0conv2d_21_95611conv2d_21_95613*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_950552#
!conv2d_21/StatefulPartitionedCallҐ
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_949152"
 max_pooling2d_13/PartitionedCallП
dropout_12/PartitionedCallPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_950892
dropout_12/PartitionedCall«
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0conv2d_22_95618conv2d_22_95620*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_951132#
!conv2d_22/StatefulPartitionedCallќ
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0conv2d_23_95623conv2d_23_95625*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_951402#
!conv2d_23/StatefulPartitionedCall£
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_949272"
 max_pooling2d_14/PartitionedCallР
dropout_13/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_951742
dropout_13/PartitionedCall«
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0conv2d_24_95630conv2d_24_95632*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_951982#
!conv2d_24/StatefulPartitionedCall£
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_949392"
 max_pooling2d_15/PartitionedCallР
dropout_14/PartitionedCallPartitionedCall)max_pooling2d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_952322
dropout_14/PartitionedCall€
flatten_3/PartitionedCallPartitionedCall#dropout_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€АH* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_952512
flatten_3/PartitionedCallі
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_95638dense_6_95640*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_952822!
dense_6/StatefulPartitionedCallА
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *7
f2R0
.__inference_dense_6_activity_regularizer_949582-
+dense_6/ActivityRegularizer/PartitionedCallЮ
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/Shapeђ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stack∞
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1∞
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2К
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_slice∞
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/Cast“
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivЗ
dropout_15/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_953352
dropout_15/PartitionedCallі
dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_7_95652dense_7_95654*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_953592!
dense_7/StatefulPartitionedCallі
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_95638* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul•
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOpdense_6_95640*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mulЭ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityП

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_18_layer_call_and_return_conditional_losses_94973

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€dd 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_20_layer_call_and_return_conditional_losses_96141

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€22@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€22 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€22 
 
_user_specified_nameinputs
“z
Э
G__inference_sequential_3_layer_call_and_return_conditional_losses_95550

inputs
conv2d_18_95474
conv2d_18_95476
conv2d_19_95479
conv2d_19_95481
conv2d_20_95485
conv2d_20_95487
conv2d_21_95490
conv2d_21_95492
conv2d_22_95497
conv2d_22_95499
conv2d_23_95502
conv2d_23_95504
conv2d_24_95509
conv2d_24_95511
dense_6_95517
dense_6_95519
dense_7_95531
dense_7_95533
identity

identity_1ИҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐ!conv2d_23/StatefulPartitionedCallҐ!conv2d_24/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpҐdense_7/StatefulPartitionedCallҐ"dropout_12/StatefulPartitionedCallҐ"dropout_13/StatefulPartitionedCallҐ"dropout_14/StatefulPartitionedCallҐ"dropout_15/StatefulPartitionedCall©
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_18_95474conv2d_18_95476*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_949732#
!conv2d_18/StatefulPartitionedCallЌ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_95479conv2d_19_95481*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_950002#
!conv2d_19/StatefulPartitionedCallҐ
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22 * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_949032"
 max_pooling2d_12/PartitionedCallћ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_20_95485conv2d_20_95487*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_950282#
!conv2d_20/StatefulPartitionedCallЌ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0conv2d_21_95490conv2d_21_95492*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_950552#
!conv2d_21/StatefulPartitionedCallҐ
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_949152"
 max_pooling2d_13/PartitionedCallІ
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_950842$
"dropout_12/StatefulPartitionedCallѕ
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0conv2d_22_95497conv2d_22_95499*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_951132#
!conv2d_22/StatefulPartitionedCallќ
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0conv2d_23_95502conv2d_23_95504*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_951402#
!conv2d_23/StatefulPartitionedCall£
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_949272"
 max_pooling2d_14/PartitionedCallЌ
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_951692$
"dropout_13/StatefulPartitionedCallѕ
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0conv2d_24_95509conv2d_24_95511*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_951982#
!conv2d_24/StatefulPartitionedCall£
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_949392"
 max_pooling2d_15/PartitionedCallЌ
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_952272$
"dropout_14/StatefulPartitionedCallЗ
flatten_3/PartitionedCallPartitionedCall+dropout_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€АH* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_952512
flatten_3/PartitionedCallі
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_95517dense_6_95519*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_952822!
dense_6/StatefulPartitionedCallА
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *7
f2R0
.__inference_dense_6_activity_regularizer_949582-
+dense_6/ActivityRegularizer/PartitionedCallЮ
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/Shapeђ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stack∞
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1∞
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2К
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_slice∞
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/Cast“
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivƒ
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0#^dropout_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_953302$
"dropout_15/StatefulPartitionedCallЉ
dense_7/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0dense_7_95531dense_7_95533*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_953592!
dense_7/StatefulPartitionedCallі
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_95517* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul•
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOpdense_6_95519*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mul±
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity£

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
Й
~
)__inference_conv2d_22_layer_call_fn_96217

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_951132
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
‘

Ё
D__inference_conv2d_22_layer_call_and_return_conditional_losses_96208

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√
F
*__inference_dropout_14_layer_call_fn_96311

inputs
identity„
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_952322
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94915

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Л
~
)__inference_conv2d_24_layer_call_fn_96284

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_951982
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ч
†
__inference_loss_fn_0_96435=
9dense_6_kernel_regularizer_square_readvariableop_resource
identityИҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpа
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_6_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mulШ
IdentityIdentity"dense_6/kernel/Regularizer/mul:z:01^dense_6/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp
ќ

Ё
D__inference_conv2d_21_layer_call_and_return_conditional_losses_96161

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€22@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€22@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€22@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€22@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€22@
 
_user_specified_nameinputs
™
Б
,__inference_sequential_3_layer_call_fn_95711
conv2d_18_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€: *4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  АD8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_956712
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€dd
)
_user_specified_nameconv2d_18_input
Ћ
d
E__inference_dropout_14_layer_call_and_return_conditional_losses_96296

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
П
ш
,__inference_sequential_3_layer_call_fn_96048

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€: *4
_read_only_resource_inputs
	
*8
config_proto(&

CPU

GPU2*0J

  АD8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_955502
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
Ћ
d
E__inference_dropout_14_layer_call_and_return_conditional_losses_95227

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
м
c
E__inference_dropout_13_layer_call_and_return_conditional_losses_96254

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
±
E
)__inference_flatten_3_layer_call_fn_96322

inputs
identityќ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€АH* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_952512
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€АH2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
т
Љ
B__inference_dense_6_layer_call_and_return_conditional_losses_96357

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relu≈
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mulЈ
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mulщ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€АH::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€АH
 
_user_specified_nameinputs
»љ
е
!__inference__traced_restore_96749
file_prefix%
!assignvariableop_conv2d_18_kernel%
!assignvariableop_1_conv2d_18_bias'
#assignvariableop_2_conv2d_19_kernel%
!assignvariableop_3_conv2d_19_bias'
#assignvariableop_4_conv2d_20_kernel%
!assignvariableop_5_conv2d_20_bias'
#assignvariableop_6_conv2d_21_kernel%
!assignvariableop_7_conv2d_21_bias'
#assignvariableop_8_conv2d_22_kernel%
!assignvariableop_9_conv2d_22_bias(
$assignvariableop_10_conv2d_23_kernel&
"assignvariableop_11_conv2d_23_bias(
$assignvariableop_12_conv2d_24_kernel&
"assignvariableop_13_conv2d_24_bias&
"assignvariableop_14_dense_6_kernel$
 assignvariableop_15_dense_6_bias&
"assignvariableop_16_dense_7_kernel$
 assignvariableop_17_dense_7_bias$
 assignvariableop_18_rmsprop_iter%
!assignvariableop_19_rmsprop_decay-
)assignvariableop_20_rmsprop_learning_rate(
$assignvariableop_21_rmsprop_momentum#
assignvariableop_22_rmsprop_rho
assignvariableop_23_total
assignvariableop_24_count
assignvariableop_25_total_1
assignvariableop_26_count_14
0assignvariableop_27_rmsprop_conv2d_18_kernel_rms2
.assignvariableop_28_rmsprop_conv2d_18_bias_rms4
0assignvariableop_29_rmsprop_conv2d_19_kernel_rms2
.assignvariableop_30_rmsprop_conv2d_19_bias_rms4
0assignvariableop_31_rmsprop_conv2d_20_kernel_rms2
.assignvariableop_32_rmsprop_conv2d_20_bias_rms4
0assignvariableop_33_rmsprop_conv2d_21_kernel_rms2
.assignvariableop_34_rmsprop_conv2d_21_bias_rms4
0assignvariableop_35_rmsprop_conv2d_22_kernel_rms2
.assignvariableop_36_rmsprop_conv2d_22_bias_rms4
0assignvariableop_37_rmsprop_conv2d_23_kernel_rms2
.assignvariableop_38_rmsprop_conv2d_23_bias_rms4
0assignvariableop_39_rmsprop_conv2d_24_kernel_rms2
.assignvariableop_40_rmsprop_conv2d_24_bias_rms2
.assignvariableop_41_rmsprop_dense_6_kernel_rms0
,assignvariableop_42_rmsprop_dense_6_bias_rms2
.assignvariableop_43_rmsprop_dense_7_kernel_rms0
,assignvariableop_44_rmsprop_dense_7_bias_rms
identity_46ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ї
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*«
valueљBЇ.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesк
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesФ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity†
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2®
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_19_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_19_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4®
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_20_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_20_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6®
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_21_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_21_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_22_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_22_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ђ
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_23_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11™
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_23_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12ђ
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_24_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13™
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_24_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14™
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_6_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15®
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_6_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16™
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_7_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17®
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_7_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_18®
AssignVariableOp_18AssignVariableOp assignvariableop_18_rmsprop_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19©
AssignVariableOp_19AssignVariableOp!assignvariableop_19_rmsprop_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20±
AssignVariableOp_20AssignVariableOp)assignvariableop_20_rmsprop_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21ђ
AssignVariableOp_21AssignVariableOp$assignvariableop_21_rmsprop_momentumIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22І
AssignVariableOp_22AssignVariableOpassignvariableop_22_rmsprop_rhoIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23°
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25£
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26£
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Є
AssignVariableOp_27AssignVariableOp0assignvariableop_27_rmsprop_conv2d_18_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28ґ
AssignVariableOp_28AssignVariableOp.assignvariableop_28_rmsprop_conv2d_18_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Є
AssignVariableOp_29AssignVariableOp0assignvariableop_29_rmsprop_conv2d_19_kernel_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30ґ
AssignVariableOp_30AssignVariableOp.assignvariableop_30_rmsprop_conv2d_19_bias_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Є
AssignVariableOp_31AssignVariableOp0assignvariableop_31_rmsprop_conv2d_20_kernel_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32ґ
AssignVariableOp_32AssignVariableOp.assignvariableop_32_rmsprop_conv2d_20_bias_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Є
AssignVariableOp_33AssignVariableOp0assignvariableop_33_rmsprop_conv2d_21_kernel_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34ґ
AssignVariableOp_34AssignVariableOp.assignvariableop_34_rmsprop_conv2d_21_bias_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Є
AssignVariableOp_35AssignVariableOp0assignvariableop_35_rmsprop_conv2d_22_kernel_rmsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36ґ
AssignVariableOp_36AssignVariableOp.assignvariableop_36_rmsprop_conv2d_22_bias_rmsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Є
AssignVariableOp_37AssignVariableOp0assignvariableop_37_rmsprop_conv2d_23_kernel_rmsIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ґ
AssignVariableOp_38AssignVariableOp.assignvariableop_38_rmsprop_conv2d_23_bias_rmsIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Є
AssignVariableOp_39AssignVariableOp0assignvariableop_39_rmsprop_conv2d_24_kernel_rmsIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40ґ
AssignVariableOp_40AssignVariableOp.assignvariableop_40_rmsprop_conv2d_24_bias_rmsIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41ґ
AssignVariableOp_41AssignVariableOp.assignvariableop_41_rmsprop_dense_6_kernel_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42і
AssignVariableOp_42AssignVariableOp,assignvariableop_42_rmsprop_dense_6_bias_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43ґ
AssignVariableOp_43AssignVariableOp.assignvariableop_43_rmsprop_dense_7_kernel_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44і
AssignVariableOp_44AssignVariableOp,assignvariableop_44_rmsprop_dense_7_bias_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЉ
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45ѓ
Identity_46IdentityIdentity_45:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_46"#
identity_46Identity_46:output:0*Ћ
_input_shapesє
ґ: :::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
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
Њ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_95251

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ $  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АH2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€АH2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_19_layer_call_and_return_conditional_losses_96121

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€dd 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd 
 
_user_specified_nameinputs
ѓ
c
*__inference_dropout_15_layer_call_fn_96399

inputs
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_953302
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
„

Ё
D__inference_conv2d_24_layer_call_and_return_conditional_losses_95198

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
м
c
E__inference_dropout_14_layer_call_and_return_conditional_losses_95232

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ћ
d
E__inference_dropout_13_layer_call_and_return_conditional_losses_95169

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeљ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>2
dropout/GreaterEqual/y«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualИ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€А2
dropout/CastГ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_18_layer_call_and_return_conditional_losses_96101

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€dd 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_94903

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
т
Љ
B__inference_dense_6_layer_call_and_return_conditional_losses_95282

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relu≈
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mulЈ
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mulщ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€АH::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€АH
 
_user_specified_nameinputs
√
F
*__inference_dropout_13_layer_call_fn_96264

inputs
identity„
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_951742
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Њ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_96317

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ $  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АH2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€АH2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
е
|
'__inference_dense_7_layer_call_fn_96424

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_953592
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94939

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
∆^
э
__inference__traced_save_96604
file_prefix/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_rmsprop_conv2d_18_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_18_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_19_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_19_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_20_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_20_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_21_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_21_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_22_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_22_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_23_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_23_bias_rms_read_readvariableop;
7savev2_rmsprop_conv2d_24_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_24_bias_rms_read_readvariableop9
5savev2_rmsprop_dense_6_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_6_bias_rms_read_readvariableop9
5savev2_rmsprop_dense_7_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_7_bias_rms_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameµ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*«
valueљBЇ.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesд
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices≈
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_rmsprop_conv2d_18_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_18_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_19_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_19_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_20_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_20_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_21_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_21_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_22_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_22_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_23_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_23_bias_rms_read_readvariableop7savev2_rmsprop_conv2d_24_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_24_bias_rms_read_readvariableop5savev2_rmsprop_dense_6_kernel_rms_read_readvariableop3savev2_rmsprop_dense_6_bias_rms_read_readvariableop5savev2_rmsprop_dense_7_kernel_rms_read_readvariableop3savev2_rmsprop_dense_7_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*”
_input_shapesЅ
Њ: : : :  : : @:@:@@:@:@А:А:АА:А:АА:А:
АHА:А:	А:: : : : : : : : : : : :  : : @:@:@@:@:@А:А:АА:А:АА:А:
АHА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-	)
'
_output_shapes
:@А:!


_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АHА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :, (
&
_output_shapes
: @: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:-$)
'
_output_shapes
:@А:!%

_output_shapes	
:А:.&*
(
_output_shapes
:АА:!'

_output_shapes	
:А:.(*
(
_output_shapes
:АА:!)

_output_shapes	
:А:&*"
 
_output_shapes
:
АHА:!+

_output_shapes	
:А:%,!

_output_shapes
:	А: -

_output_shapes
::.

_output_shapes
: 
З
~
)__inference_conv2d_18_layer_call_fn_96110

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_949732
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€dd 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€dd
 
_user_specified_nameinputs
ш

Ђ
F__inference_dense_6_layer_call_and_return_all_conditional_losses_96377

inputs
unknown
	unknown_0
identity

identity_1ИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_952822
StatefulPartitionedCallј
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *7
f2R0
.__inference_dense_6_activity_regularizer_949582
PartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*/
_input_shapes
:€€€€€€€€€АH::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€АH
 
_user_specified_nameinputs
и
c
E__inference_dropout_12_layer_call_and_return_conditional_losses_95089

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_19_layer_call_and_return_conditional_losses_95000

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€dd 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€dd 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€dd ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€dd 
 
_user_specified_nameinputs
ѕ
c
*__inference_dropout_14_layer_call_fn_96306

inputs
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_952272
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ћ
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_96394

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
√
d
E__inference_dropout_12_layer_call_and_return_conditional_losses_96182

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeЉ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>2
dropout/GreaterEqual/y∆
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqualЗ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@2
dropout/CastВ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ъs
Т
G__inference_sequential_3_layer_call_and_return_conditional_losses_95468
conv2d_18_input
conv2d_18_95392
conv2d_18_95394
conv2d_19_95397
conv2d_19_95399
conv2d_20_95403
conv2d_20_95405
conv2d_21_95408
conv2d_21_95410
conv2d_22_95415
conv2d_22_95417
conv2d_23_95420
conv2d_23_95422
conv2d_24_95427
conv2d_24_95429
dense_6_95435
dense_6_95437
dense_7_95449
dense_7_95451
identity

identity_1ИҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐ!conv2d_22/StatefulPartitionedCallҐ!conv2d_23/StatefulPartitionedCallҐ!conv2d_24/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ+dense_6/bias/Regularizer/Abs/ReadVariableOpҐ0dense_6/kernel/Regularizer/Square/ReadVariableOpҐdense_7/StatefulPartitionedCall≤
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_95392conv2d_18_95394*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_949732#
!conv2d_18/StatefulPartitionedCallЌ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0conv2d_19_95397conv2d_19_95399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€dd *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_950002#
!conv2d_19/StatefulPartitionedCallҐ
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22 * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_949032"
 max_pooling2d_12/PartitionedCallћ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_20_95403conv2d_20_95405*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_950282#
!conv2d_20/StatefulPartitionedCallЌ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0conv2d_21_95408conv2d_21_95410*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€22@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_950552#
!conv2d_21/StatefulPartitionedCallҐ
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_949152"
 max_pooling2d_13/PartitionedCallП
dropout_12/PartitionedCallPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_12_layer_call_and_return_conditional_losses_950892
dropout_12/PartitionedCall«
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0conv2d_22_95415conv2d_22_95417*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_951132#
!conv2d_22/StatefulPartitionedCallќ
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0conv2d_23_95420conv2d_23_95422*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_951402#
!conv2d_23/StatefulPartitionedCall£
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_949272"
 max_pooling2d_14/PartitionedCallР
dropout_13/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_13_layer_call_and_return_conditional_losses_951742
dropout_13/PartitionedCall«
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0conv2d_24_95427conv2d_24_95429*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_conv2d_24_layer_call_and_return_conditional_losses_951982#
!conv2d_24/StatefulPartitionedCall£
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_949392"
 max_pooling2d_15/PartitionedCallР
dropout_14/PartitionedCallPartitionedCall)max_pooling2d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_14_layer_call_and_return_conditional_losses_952322
dropout_14/PartitionedCall€
flatten_3/PartitionedCallPartitionedCall#dropout_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€АH* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_952512
flatten_3/PartitionedCallі
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_95435dense_6_95437*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_952822!
dense_6/StatefulPartitionedCallА
+dense_6/ActivityRegularizer/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *7
f2R0
.__inference_dense_6_activity_regularizer_949582-
+dense_6/ActivityRegularizer/PartitionedCallЮ
!dense_6/ActivityRegularizer/ShapeShape(dense_6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_6/ActivityRegularizer/Shapeђ
/dense_6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_6/ActivityRegularizer/strided_slice/stack∞
1dense_6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_1∞
1dense_6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_6/ActivityRegularizer/strided_slice/stack_2К
)dense_6/ActivityRegularizer/strided_sliceStridedSlice*dense_6/ActivityRegularizer/Shape:output:08dense_6/ActivityRegularizer/strided_slice/stack:output:0:dense_6/ActivityRegularizer/strided_slice/stack_1:output:0:dense_6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_6/ActivityRegularizer/strided_slice∞
 dense_6/ActivityRegularizer/CastCast2dense_6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_6/ActivityRegularizer/Cast“
#dense_6/ActivityRegularizer/truedivRealDiv4dense_6/ActivityRegularizer/PartitionedCall:output:0$dense_6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_6/ActivityRegularizer/truedivЗ
dropout_15/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  АD8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_953352
dropout_15/PartitionedCallі
dense_7/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_7_95449dense_7_95451*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  АD8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_953592!
dense_7/StatefulPartitionedCallі
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_95435* 
_output_shapes
:
АHА*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOpµ
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АHА2#
!dense_6/kernel/Regularizer/SquareХ
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/ConstЇ
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/SumЙ
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ<2"
 dense_6/kernel/Regularizer/mul/xЉ
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul•
+dense_6/bias/Regularizer/Abs/ReadVariableOpReadVariableOpdense_6_95437*
_output_shapes	
:А*
dtype02-
+dense_6/bias/Regularizer/Abs/ReadVariableOpЮ
dense_6/bias/Regularizer/AbsAbs3dense_6/bias/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
dense_6/bias/Regularizer/AbsК
dense_6/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_6/bias/Regularizer/Constѓ
dense_6/bias/Regularizer/SumSum dense_6/bias/Regularizer/Abs:y:0'dense_6/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/SumЕ
dense_6/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *¶Ыƒ;2 
dense_6/bias/Regularizer/mul/xі
dense_6/bias/Regularizer/mulMul'dense_6/bias/Regularizer/mul/x:output:0%dense_6/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_6/bias/Regularizer/mulЭ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityП

Identity_1Identity'dense_6/ActivityRegularizer/truediv:z:0"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall,^dense_6/bias/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*v
_input_shapese
c:€€€€€€€€€dd::::::::::::::::::2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2Z
+dense_6/bias/Regularizer/Abs/ReadVariableOp+dense_6/bias/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€dd
)
_user_specified_nameconv2d_18_input
ч	
џ
B__inference_dense_7_layer_call_and_return_conditional_losses_95359

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
м
c
E__inference_dropout_13_layer_call_and_return_conditional_losses_95174

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¬
serving_defaultЃ
S
conv2d_18_input@
!serving_default_conv2d_18_input:0€€€€€€€€€dd;
dense_70
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:у¶
тИ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
ф__call__
х_default_save_signature
+ц&call_and_return_all_conditional_losses"«Г
_tf_keras_sequentialІГ{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_18_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.01600000075995922}}, "bias_regularizer": {"class_name": "L1", "config": {"l1": 0.006000000052154064}}, "activity_regularizer": {"class_name": "L1", "config": {"l1": 0.006000000052154064}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": 123}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_18_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.01600000075995922}}, "bias_regularizer": {"class_name": "L1", "config": {"l1": 0.006000000052154064}}, "activity_regularizer": {"class_name": "L1", "config": {"l1": 0.006000000052154064}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": 123}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
ы


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"‘	
_tf_keras_layerЇ	{"class_name": "Conv2D", "name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_18", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 100, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 3]}}
ш	

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"—
_tf_keras_layerЈ{"class_name": "Conv2D", "name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 100, 32]}}
Г
%	variables
&regularization_losses
'trainable_variables
(	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses"т
_tf_keras_layerЎ{"class_name": "MaxPooling2D", "name": "max_pooling2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ц	

)kernel
*bias
+	variables
,regularization_losses
-trainable_variables
.	keras_api
э__call__
+ю&call_and_return_all_conditional_losses"ѕ
_tf_keras_layerµ{"class_name": "Conv2D", "name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 32]}}
ц	

/kernel
0bias
1	variables
2regularization_losses
3trainable_variables
4	keras_api
€__call__
+А&call_and_return_all_conditional_losses"ѕ
_tf_keras_layerµ{"class_name": "Conv2D", "name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 64]}}
Г
5	variables
6regularization_losses
7trainable_variables
8	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"т
_tf_keras_layerЎ{"class_name": "MaxPooling2D", "name": "max_pooling2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
й
9	variables
:regularization_losses
;trainable_variables
<	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"Ў
_tf_keras_layerЊ{"class_name": "Dropout", "name": "dropout_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
ч	

=kernel
>bias
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"–
_tf_keras_layerґ{"class_name": "Conv2D", "name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25, 25, 64]}}
щ	

Ckernel
Dbias
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
З__call__
+И&call_and_return_all_conditional_losses"“
_tf_keras_layerЄ{"class_name": "Conv2D", "name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 25, 25, 128]}}
Г
I	variables
Jregularization_losses
Ktrainable_variables
L	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"т
_tf_keras_layerЎ{"class_name": "MaxPooling2D", "name": "max_pooling2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
й
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"Ў
_tf_keras_layerЊ{"class_name": "Dropout", "name": "dropout_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
щ	

Qkernel
Rbias
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
Н__call__
+О&call_and_return_all_conditional_losses"“
_tf_keras_layerЄ{"class_name": "Conv2D", "name": "conv2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 128]}}
Г
W	variables
Xregularization_losses
Ytrainable_variables
Z	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"т
_tf_keras_layerЎ{"class_name": "MaxPooling2D", "name": "max_pooling2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
й
[	variables
\regularization_losses
]trainable_variables
^	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"Ў
_tf_keras_layerЊ{"class_name": "Dropout", "name": "dropout_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
и
_	variables
`regularization_losses
atrainable_variables
b	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"„
_tf_keras_layerљ{"class_name": "Flatten", "name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ф	

ckernel
dbias
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses"Ќ
_tf_keras_layer≥{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.01600000075995922}}, "bias_regularizer": {"class_name": "L1", "config": {"l1": 0.006000000052154064}}, "activity_regularizer": {"class_name": "L1", "config": {"l1": 0.006000000052154064}}, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9216}}}, "activity_regularizer": {"class_name": "L1", "config": {"l1": 0.006000000052154064}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9216]}}
и
i	variables
jregularization_losses
ktrainable_variables
l	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"„
_tf_keras_layerљ{"class_name": "Dropout", "name": "dropout_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": 123}}
ц

mkernel
nbias
o	variables
pregularization_losses
qtrainable_variables
r	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"ѕ
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
™
siter
	tdecay
ulearning_rate
vmomentum
wrho
rmsв
rmsг
rmsд
 rmsе
)rmsж
*rmsз
/rmsи
0rmsй
=rmsк
>rmsл
Crmsм
Drmsн
Qrmsо
Rrmsп
crmsр
drmsс
mrmsт
nrmsу"
	optimizer
¶
0
1
2
 3
)4
*5
/6
07
=8
>9
C10
D11
Q12
R13
c14
d15
m16
n17"
trackable_list_wrapper
0
Ы0
Ь1"
trackable_list_wrapper
¶
0
1
2
 3
)4
*5
/6
07
=8
>9
C10
D11
Q12
R13
c14
d15
m16
n17"
trackable_list_wrapper
ќ
	variables
xlayer_regularization_losses
ymetrics
zlayer_metrics
{non_trainable_variables
regularization_losses
trainable_variables

|layers
ф__call__
х_default_save_signature
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
-
Эserving_default"
signature_map
*:( 2conv2d_18/kernel
: 2conv2d_18/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≤
	variables
}layer_regularization_losses
~metrics
layer_metrics
Аnon_trainable_variables
regularization_losses
trainable_variables
Бlayers
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_19/kernel
: 2conv2d_19/bias
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
µ
!	variables
 Вlayer_regularization_losses
Гmetrics
Дlayer_metrics
Еnon_trainable_variables
"regularization_losses
#trainable_variables
Жlayers
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
%	variables
 Зlayer_regularization_losses
Иmetrics
Йlayer_metrics
Кnon_trainable_variables
&regularization_losses
'trainable_variables
Лlayers
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_20/kernel
:@2conv2d_20/bias
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
µ
+	variables
 Мlayer_regularization_losses
Нmetrics
Оlayer_metrics
Пnon_trainable_variables
,regularization_losses
-trainable_variables
Рlayers
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_21/kernel
:@2conv2d_21/bias
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
µ
1	variables
 Сlayer_regularization_losses
Тmetrics
Уlayer_metrics
Фnon_trainable_variables
2regularization_losses
3trainable_variables
Хlayers
€__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
5	variables
 Цlayer_regularization_losses
Чmetrics
Шlayer_metrics
Щnon_trainable_variables
6regularization_losses
7trainable_variables
Ъlayers
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
9	variables
 Ыlayer_regularization_losses
Ьmetrics
Эlayer_metrics
Юnon_trainable_variables
:regularization_losses
;trainable_variables
Яlayers
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
+:)@А2conv2d_22/kernel
:А2conv2d_22/bias
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
µ
?	variables
 †layer_regularization_losses
°metrics
Ґlayer_metrics
£non_trainable_variables
@regularization_losses
Atrainable_variables
§layers
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_23/kernel
:А2conv2d_23/bias
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
µ
E	variables
 •layer_regularization_losses
¶metrics
Іlayer_metrics
®non_trainable_variables
Fregularization_losses
Gtrainable_variables
©layers
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
I	variables
 ™layer_regularization_losses
Ђmetrics
ђlayer_metrics
≠non_trainable_variables
Jregularization_losses
Ktrainable_variables
Ѓlayers
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
M	variables
 ѓlayer_regularization_losses
∞metrics
±layer_metrics
≤non_trainable_variables
Nregularization_losses
Otrainable_variables
≥layers
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_24/kernel
:А2conv2d_24/bias
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
µ
S	variables
 іlayer_regularization_losses
µmetrics
ґlayer_metrics
Јnon_trainable_variables
Tregularization_losses
Utrainable_variables
Єlayers
Н__call__
+О&call_and_return_all_conditional_losses
'О"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
W	variables
 єlayer_regularization_losses
Їmetrics
їlayer_metrics
Љnon_trainable_variables
Xregularization_losses
Ytrainable_variables
љlayers
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
[	variables
 Њlayer_regularization_losses
њmetrics
јlayer_metrics
Ѕnon_trainable_variables
\regularization_losses
]trainable_variables
¬layers
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
_	variables
 √layer_regularization_losses
ƒmetrics
≈layer_metrics
∆non_trainable_variables
`regularization_losses
atrainable_variables
«layers
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
": 
АHА2dense_6/kernel
:А2dense_6/bias
.
c0
d1"
trackable_list_wrapper
0
Ы0
Ь1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
”
e	variables
 »layer_regularization_losses
…metrics
 layer_metrics
Ћnon_trainable_variables
fregularization_losses
gtrainable_variables
ћlayers
Х__call__
Юactivity_regularizer_fn
+Ц&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
i	variables
 Ќlayer_regularization_losses
ќmetrics
ѕlayer_metrics
–non_trainable_variables
jregularization_losses
ktrainable_variables
—layers
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
!:	А2dense_7/kernel
:2dense_7/bias
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
µ
o	variables
 “layer_regularization_losses
”metrics
‘layer_metrics
’non_trainable_variables
pregularization_losses
qtrainable_variables
÷layers
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
 "
trackable_list_wrapper
0
„0
Ў1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
¶
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
9
10
11
12
13
14
15
16
17"
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
0
Ы0
Ь1"
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
њ

ўtotal

Џcount
џ	variables
№	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Д

Ёtotal

ёcount
я
_fn_kwargs
а	variables
б	keras_api"Є
_tf_keras_metricЭ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
ў0
Џ1"
trackable_list_wrapper
.
џ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ё0
ё1"
trackable_list_wrapper
.
а	variables"
_generic_user_object
4:2 2RMSprop/conv2d_18/kernel/rms
&:$ 2RMSprop/conv2d_18/bias/rms
4:2  2RMSprop/conv2d_19/kernel/rms
&:$ 2RMSprop/conv2d_19/bias/rms
4:2 @2RMSprop/conv2d_20/kernel/rms
&:$@2RMSprop/conv2d_20/bias/rms
4:2@@2RMSprop/conv2d_21/kernel/rms
&:$@2RMSprop/conv2d_21/bias/rms
5:3@А2RMSprop/conv2d_22/kernel/rms
':%А2RMSprop/conv2d_22/bias/rms
6:4АА2RMSprop/conv2d_23/kernel/rms
':%А2RMSprop/conv2d_23/bias/rms
6:4АА2RMSprop/conv2d_24/kernel/rms
':%А2RMSprop/conv2d_24/bias/rms
,:*
АHА2RMSprop/dense_6/kernel/rms
%:#А2RMSprop/dense_6/bias/rms
+:)	А2RMSprop/dense_7/kernel/rms
$:"2RMSprop/dense_7/bias/rms
ю2ы
,__inference_sequential_3_layer_call_fn_95711
,__inference_sequential_3_layer_call_fn_96090
,__inference_sequential_3_layer_call_fn_95590
,__inference_sequential_3_layer_call_fn_96048ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
о2л
 __inference__wrapped_model_94897∆
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *6Ґ3
1К.
conv2d_18_input€€€€€€€€€dd
к2з
G__inference_sequential_3_layer_call_and_return_conditional_losses_95389
G__inference_sequential_3_layer_call_and_return_conditional_losses_95904
G__inference_sequential_3_layer_call_and_return_conditional_losses_96006
G__inference_sequential_3_layer_call_and_return_conditional_losses_95468ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
”2–
)__inference_conv2d_18_layer_call_fn_96110Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_18_layer_call_and_return_conditional_losses_96101Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_conv2d_19_layer_call_fn_96130Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_19_layer_call_and_return_conditional_losses_96121Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2Х
0__inference_max_pooling2d_12_layer_call_fn_94909а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
≥2∞
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_94903а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
”2–
)__inference_conv2d_20_layer_call_fn_96150Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_20_layer_call_and_return_conditional_losses_96141Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_conv2d_21_layer_call_fn_96170Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_21_layer_call_and_return_conditional_losses_96161Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2Х
0__inference_max_pooling2d_13_layer_call_fn_94921а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
≥2∞
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94915а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_dropout_12_layer_call_fn_96197
*__inference_dropout_12_layer_call_fn_96192і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_12_layer_call_and_return_conditional_losses_96182
E__inference_dropout_12_layer_call_and_return_conditional_losses_96187і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
”2–
)__inference_conv2d_22_layer_call_fn_96217Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_22_layer_call_and_return_conditional_losses_96208Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_conv2d_23_layer_call_fn_96237Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_23_layer_call_and_return_conditional_losses_96228Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2Х
0__inference_max_pooling2d_14_layer_call_fn_94933а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
≥2∞
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94927а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_dropout_13_layer_call_fn_96259
*__inference_dropout_13_layer_call_fn_96264і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_13_layer_call_and_return_conditional_losses_96254
E__inference_dropout_13_layer_call_and_return_conditional_losses_96249і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
”2–
)__inference_conv2d_24_layer_call_fn_96284Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_conv2d_24_layer_call_and_return_conditional_losses_96275Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ш2Х
0__inference_max_pooling2d_15_layer_call_fn_94945а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
≥2∞
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94939а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Т2П
*__inference_dropout_14_layer_call_fn_96306
*__inference_dropout_14_layer_call_fn_96311і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_14_layer_call_and_return_conditional_losses_96296
E__inference_dropout_14_layer_call_and_return_conditional_losses_96301і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
”2–
)__inference_flatten_3_layer_call_fn_96322Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_flatten_3_layer_call_and_return_conditional_losses_96317Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_dense_6_layer_call_fn_96366Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
р2н
F__inference_dense_6_layer_call_and_return_all_conditional_losses_96377Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Т2П
*__inference_dropout_15_layer_call_fn_96399
*__inference_dropout_15_layer_call_fn_96404і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_15_layer_call_and_return_conditional_losses_96389
E__inference_dropout_15_layer_call_and_return_conditional_losses_96394і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
—2ќ
'__inference_dense_7_layer_call_fn_96424Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_dense_7_layer_call_and_return_conditional_losses_96415Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≤2ѓ
__inference_loss_fn_0_96435П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≤2ѓ
__inference_loss_fn_1_96446П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
“Bѕ
#__inference_signature_wrapper_95774conv2d_18_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ё2Џ
.__inference_dense_6_activity_regularizer_94958І
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
м2й
B__inference_dense_6_layer_call_and_return_conditional_losses_96357Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Ѓ
 __inference__wrapped_model_94897Й )*/0=>CDQRcdmn@Ґ=
6Ґ3
1К.
conv2d_18_input€€€€€€€€€dd
™ "1™.
,
dense_7!К
dense_7€€€€€€€€€і
D__inference_conv2d_18_layer_call_and_return_conditional_losses_96101l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd
™ "-Ґ*
#К 
0€€€€€€€€€dd 
Ъ М
)__inference_conv2d_18_layer_call_fn_96110_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd
™ " К€€€€€€€€€dd і
D__inference_conv2d_19_layer_call_and_return_conditional_losses_96121l 7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd 
™ "-Ґ*
#К 
0€€€€€€€€€dd 
Ъ М
)__inference_conv2d_19_layer_call_fn_96130_ 7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€dd 
™ " К€€€€€€€€€dd і
D__inference_conv2d_20_layer_call_and_return_conditional_losses_96141l)*7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€22 
™ "-Ґ*
#К 
0€€€€€€€€€22@
Ъ М
)__inference_conv2d_20_layer_call_fn_96150_)*7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€22 
™ " К€€€€€€€€€22@і
D__inference_conv2d_21_layer_call_and_return_conditional_losses_96161l/07Ґ4
-Ґ*
(К%
inputs€€€€€€€€€22@
™ "-Ґ*
#К 
0€€€€€€€€€22@
Ъ М
)__inference_conv2d_21_layer_call_fn_96170_/07Ґ4
-Ґ*
(К%
inputs€€€€€€€€€22@
™ " К€€€€€€€€€22@µ
D__inference_conv2d_22_layer_call_and_return_conditional_losses_96208m=>7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Н
)__inference_conv2d_22_layer_call_fn_96217`=>7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "!К€€€€€€€€€Аґ
D__inference_conv2d_23_layer_call_and_return_conditional_losses_96228nCD8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ О
)__inference_conv2d_23_layer_call_fn_96237aCD8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Аґ
D__inference_conv2d_24_layer_call_and_return_conditional_losses_96275nQR8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ О
)__inference_conv2d_24_layer_call_fn_96284aQR8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€А[
.__inference_dense_6_activity_regularizer_94958)Ґ
Ґ
К
self
™ "К ґ
F__inference_dense_6_layer_call_and_return_all_conditional_losses_96377lcd0Ґ-
&Ґ#
!К
inputs€€€€€€€€€АH
™ "4Ґ1
К
0€€€€€€€€€А
Ъ
К	
1/0 §
B__inference_dense_6_layer_call_and_return_conditional_losses_96357^cd0Ґ-
&Ґ#
!К
inputs€€€€€€€€€АH
™ "&Ґ#
К
0€€€€€€€€€А
Ъ |
'__inference_dense_6_layer_call_fn_96366Qcd0Ґ-
&Ґ#
!К
inputs€€€€€€€€€АH
™ "К€€€€€€€€€А£
B__inference_dense_7_layer_call_and_return_conditional_losses_96415]mn0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
'__inference_dense_7_layer_call_fn_96424Pmn0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€µ
E__inference_dropout_12_layer_call_and_return_conditional_losses_96182l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ µ
E__inference_dropout_12_layer_call_and_return_conditional_losses_96187l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
*__inference_dropout_12_layer_call_fn_96192_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@Н
*__inference_dropout_12_layer_call_fn_96197_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@Ј
E__inference_dropout_13_layer_call_and_return_conditional_losses_96249n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Ј
E__inference_dropout_13_layer_call_and_return_conditional_losses_96254n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
*__inference_dropout_13_layer_call_fn_96259a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€АП
*__inference_dropout_13_layer_call_fn_96264a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€АЈ
E__inference_dropout_14_layer_call_and_return_conditional_losses_96296n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Ј
E__inference_dropout_14_layer_call_and_return_conditional_losses_96301n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
*__inference_dropout_14_layer_call_fn_96306a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€АП
*__inference_dropout_14_layer_call_fn_96311a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€АІ
E__inference_dropout_15_layer_call_and_return_conditional_losses_96389^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ І
E__inference_dropout_15_layer_call_and_return_conditional_losses_96394^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_dropout_15_layer_call_fn_96399Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "К€€€€€€€€€А
*__inference_dropout_15_layer_call_fn_96404Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "К€€€€€€€€€А™
D__inference_flatten_3_layer_call_and_return_conditional_losses_96317b8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€АH
Ъ В
)__inference_flatten_3_layer_call_fn_96322U8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "К€€€€€€€€€АH:
__inference_loss_fn_0_96435cҐ

Ґ 
™ "К :
__inference_loss_fn_1_96446dҐ

Ґ 
™ "К о
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_94903ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_12_layer_call_fn_94909СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_94915ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_13_layer_call_fn_94921СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_94927ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_14_layer_call_fn_94933СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_94939ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_15_layer_call_fn_94945СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€я
G__inference_sequential_3_layer_call_and_return_conditional_losses_95389У )*/0=>CDQRcdmnHҐE
>Ґ;
1К.
conv2d_18_input€€€€€€€€€dd
p

 
™ "3Ґ0
К
0€€€€€€€€€
Ъ
К	
1/0 я
G__inference_sequential_3_layer_call_and_return_conditional_losses_95468У )*/0=>CDQRcdmnHҐE
>Ґ;
1К.
conv2d_18_input€€€€€€€€€dd
p 

 
™ "3Ґ0
К
0€€€€€€€€€
Ъ
К	
1/0 ÷
G__inference_sequential_3_layer_call_and_return_conditional_losses_95904К )*/0=>CDQRcdmn?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p

 
™ "3Ґ0
К
0€€€€€€€€€
Ъ
К	
1/0 ÷
G__inference_sequential_3_layer_call_and_return_conditional_losses_96006К )*/0=>CDQRcdmn?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p 

 
™ "3Ґ0
К
0€€€€€€€€€
Ъ
К	
1/0 ®
,__inference_sequential_3_layer_call_fn_95590x )*/0=>CDQRcdmnHҐE
>Ґ;
1К.
conv2d_18_input€€€€€€€€€dd
p

 
™ "К€€€€€€€€€®
,__inference_sequential_3_layer_call_fn_95711x )*/0=>CDQRcdmnHҐE
>Ґ;
1К.
conv2d_18_input€€€€€€€€€dd
p 

 
™ "К€€€€€€€€€Я
,__inference_sequential_3_layer_call_fn_96048o )*/0=>CDQRcdmn?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p

 
™ "К€€€€€€€€€Я
,__inference_sequential_3_layer_call_fn_96090o )*/0=>CDQRcdmn?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€dd
p 

 
™ "К€€€€€€€€€ƒ
#__inference_signature_wrapper_95774Ь )*/0=>CDQRcdmnSҐP
Ґ 
I™F
D
conv2d_18_input1К.
conv2d_18_input€€€€€€€€€dd"1™.
,
dense_7!К
dense_7€€€€€€€€€