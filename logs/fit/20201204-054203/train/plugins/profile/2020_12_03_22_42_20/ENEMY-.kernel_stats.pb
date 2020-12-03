
•
(volta_scudnn_128x64_stridedB_small_nn_v1*28€ž@€žH€žXbOgradient_tape/sequential/time_distributed_3/conv1d_3/conv1d/Conv2DBackpropInputh
 
2volta_scudnn_128x64_stridedB_splitK_interior_nn_v1*28 „@ „H „XbPgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropFilterh
’
(volta_scudnn_128x64_stridedB_small_nn_v1*28Àg@ÀgHÀgXbOgradient_tape/sequential/time_distributed_2/conv1d_2/conv1d/Conv2DBackpropInputh
’
(volta_scudnn_128x64_stridedB_small_nn_v1*28€[@€[H€[XbOgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropInputh
m
'volta_scudnn_128x32_relu_interior_nn_v1*28àX@àXHàXb-sequential/time_distributed_1/conv1d_1/conv1dh
â
w_ZN5cudnn6detail17wgrad_alg1_engineIfLi512ELi6ELi5ELi3ELi3ELi3ELb1ELb0EEEviiiPKT_iPfS4_18kernel_grad_paramsiffiiPiS7_ii*28€H@€HH€HXbPgradient_tape/sequential/time_distributed_3/conv1d_3/conv1d/Conv2DBackpropFilterh
Þ
w_ZN5cudnn6detail17wgrad_alg1_engineIfLi512ELi6ELi5ELi3ELi3ELi3ELb1ELb0EEEviiiPKT_iPfS4_18kernel_grad_paramsiffiiPiS7_ii*28À@@À@HÀ@XbLgradient_tape/sequential/time_distributed/conv1d/conv1d/Conv2DBackpropFilterh
â
w_ZN5cudnn6detail17wgrad_alg1_engineIfLi512ELi6ELi5ELi3ELi3ELi3ELb1ELb0EEEviiiPKT_iPfS4_18kernel_grad_paramsiffiiPiS7_ii*28 @@ @H @XbPgradient_tape/sequential/time_distributed_2/conv1d_2/conv1d/Conv2DBackpropFilterh
o
volta_sgemm_32x32_sliced1x4_tn*28 <@ <H <Xb6gradient_tape/sequential/dense/Tensordot/MatMul/MatMulh
¥
__Z15im2col4d_kernelIfiEv15im2col4d_params22cudnnConvolutionStruct19cudnnTensor4dStructPKT_PS3_i*28 9@ 9H 9b-sequential/time_distributed_3/conv1d_3/conv1dh
R
volta_sgemm_32x32_sliced1x4_nn*28 4@ 4H 4Xbsequential/dense_1/MatMulh
Z
volta_sgemm_32x32_sliced1x4_nn*28 2@ 2H 2Xb!sequential/dense/Tensordot/MatMulh
Ç
€_ZN5cudnn6detail23explicit_convolve_sgemmIfiLi128ELi5ELi5ELi3ELi3ELi3ELi0ELb1EEEviiiPKT_iS4_iPS2_18kernel_conv_paramsiiffiS5_S5_*28à1@à1Hà1b-sequential/time_distributed_3/conv1d_3/conv1dh
Ã
€_ZN5cudnn6detail23explicit_convolve_sgemmIfiLi128ELi5ELi5ELi3ELi3ELi3ELi0ELb1EEEviiiPKT_iS4_iPS2_18kernel_conv_paramsiiffiS5_S5_*28€/@€/H€/b)sequential/time_distributed/conv1d/conv1dh
`
volta_sgemm_32x32_sliced1x4_nt*28À-@À-HÀ-b)gradient_tape/sequential/dense_1/MatMul_1h
Ç
€_ZN5cudnn6detail23explicit_convolve_sgemmIfiLi128ELi5ELi5ELi3ELi3ELi3ELi0ELb1EEEviiiPKT_iS4_iPS2_18kernel_conv_paramsiiffiS5_S5_*28À+@À+HÀ+b-sequential/time_distributed_2/conv1d_2/conv1dh
¥
__Z15im2col4d_kernelIfiEv15im2col4d_params22cudnnConvolutionStruct19cudnnTensor4dStructPKT_PS3_i*28À*@À*HÀ*b-sequential/time_distributed_2/conv1d_2/conv1dh
ì
¤_ZN10tensorflow67_GLOBAL__N__43_dynamic_stitch_op_gpu_cu_compute_70_cpp1_ii_28d06a6319DynamicStitchKernelIiEEviiNS_20GpuDeviceArrayStructIiLi8EEENS2_IPKT_Li8EEEPS4_*28€)@€)H€)b.gradient_tape/mean_squared_error/DynamicStitchh
o
volta_sgemm_32x32_sliced1x4_nt*28à(@à(Hà(b8gradient_tape/sequential/dense/Tensordot/MatMul/MatMul_1h
¡
__Z15im2col4d_kernelIfiEv15im2col4d_params22cudnnConvolutionStruct19cudnnTensor4dStructPKT_PS3_i*28à%@à%Hà%b)sequential/time_distributed/conv1d/conv1dh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28€%@€%H€%b$Adam/Adam/update_9/ResourceApplyAdamh
W
volta_sgemm_32x128_tn*28€%@€%H€%Xb'gradient_tape/sequential/dense_1/MatMulh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28À#@À#HÀ#b$Adam/Adam/update_8/ResourceApplyAdamh
—
:_ZN10tensorflow26BiasGradNHWC_SharedAtomicsIfEEviPKT_PS1_i*28€#@€#H€#bDgradient_tape/sequential/time_distributed/conv1d/BiasAdd/BiasAddGradh
‡
:_ZN10tensorflow26BiasGradNHWC_SharedAtomicsIfEEviPKT_PS1_i*28 "@ "H "b4gradient_tape/sequential/dense_1/BiasAdd/BiasAddGradh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28 "@ "H "b$Adam/Adam/update_5/ResourceApplyAdamh
Í
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28 "@ "H "XbPgradient_tape/sequential/time_distributed_3/conv1d_3/conv1d/Conv2DBackpropFilterh
›
:_ZN10tensorflow26BiasGradNHWC_SharedAtomicsIfEEviPKT_PS1_i*28à!@à!Hà!bHgradient_tape/sequential/time_distributed_1/conv1d_1/BiasAdd/BiasAddGradh
‡
<_ZN10tensorflow26BiasGradNCHW_SharedAtomicsIfEEvPKT_PS1_iiii*28À!@À!HÀ!b2gradient_tape/sequential/dense/BiasAdd/BiasAddGradh

O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28À!@À!HÀ!b%Adam/Adam/update_10/ResourceApplyAdamh

O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28À!@À!HÀ!b%Adam/Adam/update_11/ResourceApplyAdamh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28À!@À!HÀ!b$Adam/Adam/update_3/ResourceApplyAdamh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28À!@À!HÀ!b$Adam/Adam/update_6/ResourceApplyAdamh
Á
Ÿ_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIxLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_sum_opIxxEEKNS4_INS5_IKxLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À!@À!HÀ!bAdam/addh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28à @à Hà b$Adam/Adam/update_7/ResourceApplyAdamh
›
:_ZN10tensorflow26BiasGradNHWC_SharedAtomicsIfEEviPKT_PS1_i*28À@ÀHÀbHgradient_tape/sequential/time_distributed_2/conv1d_2/BiasAdd/BiasAddGradh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28à@àHàb$Adam/Adam/update_4/ResourceApplyAdamh
›
:_ZN10tensorflow26BiasGradNHWC_SharedAtomicsIfEEviPKT_PS1_i*28 @ H bHgradient_tape/sequential/time_distributed_3/conv1d_3/BiasAdd/BiasAddGradh
Š
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28€@€H€b"Adam/Adam/update/ResourceApplyAdamh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28€@€H€b$Adam/Adam/update_2/ResourceApplyAdamh
½
÷_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi2ELi1EiEELi16ENS_11MakePointerEEEKNS_20TensorBroadcastingOpIKNS_5arrayIiLy2EEEKNS4_INS5_IKfLi2ELi1EiEELi16ES7_EEEEEENS_9GpuDeviceEEEiEEvT_T0_*28€@€H€b,gradient_tape/mean_squared_error/BroadcastToh
À
 _ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIxLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_20TensorTupleReducerOpINS0_18ArgMaxTupleReducerINS_5TupleIxfEEEEKNS_5arrayIxLy1EEEKNS4_INS5_IKfLi2ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀbArgMaxh
¤
A_ZN10tensorflow3S2BIfLi1ELb1EEEviPT_NS_13S2BParametersIXT0_EEES2_*28 @ H bJgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/BatchToSpaceNDh
¤
A_ZN10tensorflow3S2BIfLi1ELb0EEEviPT_NS_13S2BParametersIXT0_EEES2_*28€@€H€bJgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/SpaceToBatchNDh
¨
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28€@€H€b-sequential/time_distributed_3/conv1d_3/conv1dh
Œ
O_ZN10tensorflow7functor15ApplyAdamKernelIfEEviPT_S3_S3_PKS2_S5_S5_S5_S5_S5_S5_b*28à@àHàb$Adam/Adam/update_1/ResourceApplyAdamh
¨
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28à@àHàb-sequential/time_distributed_2/conv1d_2/conv1dh
Æ
÷_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_20TensorBroadcastingOpIKNS_5arrayIiLy1EEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEEEEENS_9GpuDeviceEEEiEEvT_T0_*28€@€H€b5gradient_tape/mean_squared_error/weighted_loss/Tile_1h
±
„_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_sum_opIKfSB_EEKS8_KNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€bAssignAddVariableOph
¤
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28à@àHàb)sequential/time_distributed/conv1d/conv1dh
Ä
ž_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13div_no_nan_opIfEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28à@àHàbdiv_no_nan_1h
Þ
_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_17scalar_product_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_18TensorConversionOpIfKNS9_INS0_13scalar_cmp_opISB_SB_LNS0_14ComparisonNameE5EEESF_KNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀb'gradient_tape/sequential/dense/ReluGradh
Â
 _ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIxLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_20TensorTupleReducerOpINS0_18ArgMaxTupleReducerINS_5TupleIxfEEEEKNS_5arrayIxLy1EEEKNS4_INS5_IKfLi2ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀbArgMax_1h
Á
Ÿ_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_pow_opIffEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28 @ H bAdam/Powh
À
£_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_17scalar_product_opIffEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€bMulh
x
1_ZN10tensorflow14BiasNHWCKernelIfEEviPKT_S3_PS1_i*28à@àHàb.sequential/time_distributed_1/conv1d_1/BiasAddh
–
A_ZN10tensorflow3S2BIfLi1ELb0EEEviPT_NS_13S2BParametersIXT0_EEES2_*28à@àHàb<sequential/time_distributed_1/conv1d_1/conv1d/SpaceToBatchNDh
Ì
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28À@ÀHÀXbOgradient_tape/sequential/time_distributed_3/conv1d_3/conv1d/Conv2DBackpropInputh
ƒ
¾_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_max_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28 @ H b+sequential/time_distributed_1/conv1d_1/Reluh
³
„_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIxLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_sum_opIKxSB_EEKS8_KNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28 @ H bAssignAddVariableOp_4h
³
„_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_sum_opIKfSB_EEKS8_KNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€bAssignAddVariableOp_1h
c
2_ZN10tensorflow14BiasNCHWKernelIfEEviPKT_S3_PS1_ii*28à@àHàbsequential/dense/BiasAddh
ü
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIjLi0ELi2ELi1ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28À@ÀHÀb€gradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropFilter-0-TransposeNHWCToNCHW-LayoutOptimizer:Transposeh
Ý
›_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_18TensorCwiseUnaryOpINS0_12scalar_rightIffNS0_18scalar_quotient_opIffEELb0EEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEEEEENS_9GpuDeviceEEEiEEvT_T0_*28À@ÀHÀb(gradient_tape/mean_squared_error/truedivh
­
u_ZN10tensorflow7functor17BlockReduceKernelIPiS2_Li256ENS0_4ProdIiEEEEvT_T0_iT2_NSt15iterator_traitsIS5_E10value_typeE*28 @ H bsequential/dense/Tensordot/Prodh
¶
K_ZN5cudnn4gemm31computeWgradSplitKOffsetsKernelENS0_20ComputeOffsetsParamsE*28 @ H XbPgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropFilterh
ý
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIjLi0ELi2ELi1ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28€@€H€bgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropInput-0-0-TransposeNCHWToNHWC-LayoutOptimizer:Transposeh
Ã
Ÿ_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_pow_opIffEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€b
Adam/Pow_1h
ª
@_ZN5cudnn4gemm20computeOffsetsKernelENS0_20ComputeOffsetsParamsE*28€@€H€XbOgradient_tape/sequential/time_distributed_2/conv1d_2/conv1d/Conv2DBackpropInputh
¨
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28à@àHàb-sequential/time_distributed_1/conv1d_1/conv1dh
v
:_ZN10tensorflow14GatherOpKernelIiiLb1EEEvPKT_PKT0_PS1_xxxx*28¿@¿H¿b#sequential/dense/Tensordot/GatherV2h
Ç
£_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIbLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_21scalar_boolean_and_opEKNS4_INS5_IKbLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28 @ H b
LogicalAndh
ƒ
¾_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_max_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28 @ H b+sequential/time_distributed_3/conv1d_3/Reluh
ô
_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_17scalar_product_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_18TensorConversionOpIfKNS9_INS0_13scalar_cmp_opISB_SB_LNS0_14ComparisonNameE5EEESF_KNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEEEEEENS_9GpuDeviceEEExEEvT_T0_*28 @ H b=gradient_tape/sequential/time_distributed_3/conv1d_3/ReluGradh
÷
ž_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13div_no_nan_opIfEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€b?gradient_tape/mean_squared_error/weighted_loss/value/div_no_nanh
t
1_ZN10tensorflow14BiasNHWCKernelIfEEviPKT_S3_PS1_i*28à@àHàb*sequential/time_distributed/conv1d/BiasAddh
Â
ž_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13div_no_nan_opIfEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀb
div_no_nanh
í
¾_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_max_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀbsequential/dense/Reluh
–
A_ZN10tensorflow3S2BIfLi1ELb1EEEviPT_NS_13S2BParametersIXT0_EEES2_*28 @ H b<sequential/time_distributed_1/conv1d_1/conv1d/BatchToSpaceNDh
ä
¦_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_20scalar_difference_opIffEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€b$gradient_tape/mean_squared_error/subh
„
ä_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_18TensorConversionOpIfKNS4_INS5_IKbLi1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28à@àHàbCast_1h
ô
_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_17scalar_product_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_18TensorConversionOpIfKNS9_INS0_13scalar_cmp_opISB_SB_LNS0_14ComparisonNameE5EEESF_KNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEEEEEENS_9GpuDeviceEEExEEvT_T0_*28à@àHàb=gradient_tape/sequential/time_distributed_2/conv1d_2/ReluGradh
x
:_ZN10tensorflow14GatherOpKernelIiiLb1EEEvPKT_PKT0_PS1_xxxx*28À@ÀHÀb%sequential/dense/Tensordot/GatherV2_1h
ÿ
¾_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_max_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀb'sequential/time_distributed/conv1d/Reluh
×
™_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_18TensorCwiseUnaryOpINS0_11scalar_leftIffNS0_17scalar_product_opIffEELb0EEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEEEEENS_9GpuDeviceEEEiEEvT_T0_*28 @ H b$gradient_tape/mean_squared_error/Mulh
ë
­_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_28scalar_squared_difference_opIfEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28 @ H b$mean_squared_error/SquaredDifferenceh
x
1_ZN10tensorflow14BiasNHWCKernelIfEEviPKT_S3_PS1_i*28€@€H€b.sequential/time_distributed_3/conv1d_3/BiasAddh
Þ
ž_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13div_no_nan_opIfEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€b&mean_squared_error/weighted_loss/valueh
ã
£_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_17scalar_product_opIffEEKNS4_INS5_IKfLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€b&gradient_tape/mean_squared_error/mul_1h
x
1_ZN10tensorflow14BiasNHWCKernelIfEEviPKT_S3_PS1_i*28à@àHàb.sequential/time_distributed_2/conv1d_2/BiasAddh
Ð
Ÿ_ZN10tensorflow7functor15RowReduceKernelIPfNS_23TransformOutputIteratorIffNS0_9DividesByIffEExEENS0_3SumIfEEEEvT_T0_iiT1_NSt15iterator_traitsIS9_E10value_typeE*28à@àHàbmean_squared_error/Meanh
’
t_ZN10tensorflow7functor17BlockReduceKernelIPfS2_Li256ENS0_3SumIfEEEEvT_T0_iT2_NSt15iterator_traitsIS5_E10value_typeE*28à@àHàbSum_2h
Í
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28à@àHàXbPgradient_tape/sequential/time_distributed_2/conv1d_2/conv1d/Conv2DBackpropFilterh
‚
ä_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_18TensorConversionOpIfKNS4_INS5_IKiLi1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28à@àHàbCasth
É
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28À@ÀHÀXbLgradient_tape/sequential/time_distributed/conv1d/conv1d/Conv2DBackpropFilterh
Í
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28À@ÀHÀXbPgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropFilterh
³
„_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_sum_opIKfSB_EEKS8_KNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀbAssignAddVariableOp_2h
Ì
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28 @ H XbOgradient_tape/sequential/time_distributed_2/conv1d_2/conv1d/Conv2DBackpropInputh
d
1_ZN10tensorflow14BiasNHWCKernelIfEEviPKT_S3_PS1_i*28€@€H€bsequential/dense_1/BiasAddh
±
t_ZN10tensorflow7functor17BlockReduceKernelIPfS2_Li256ENS0_3SumIfEEEEvT_T0_iT2_NSt15iterator_traitsIS5_E10value_typeE*28€@€H€b$mean_squared_error/weighted_loss/Sumh
·
˜_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIbLi1ELi1EiEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_8equal_toIxEEKNS4_INS5_IKxLi1ELi1EiEELi16ES7_EEKNS4_INS5_ISC_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28à@àHàbEqualh
‰
ä_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_18TensorConversionOpIfKNS4_INS5_IKxLi1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28à@àHàbAdam/Cast_1h
³
„_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_sum_opIKfSB_EEKS8_KNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28à@àHàbAssignAddVariableOp_3h
ô
_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_17scalar_product_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_18TensorConversionOpIfKNS9_INS0_13scalar_cmp_opISB_SB_LNS0_14ComparisonNameE5EEESF_KNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEEEEEENS_9GpuDeviceEEExEEvT_T0_*28à@àHàb=gradient_tape/sequential/time_distributed_1/conv1d_1/ReluGradh
†
@_ZN5cudnn4gemm20computeOffsetsKernelENS0_20ComputeOffsetsParamsE*28à@àHàb-sequential/time_distributed_1/conv1d_1/conv1dh
¬
B_ZN5cudnn4gemm21computeBOffsetsKernelENS0_21ComputeBOffsetsParamsE*28à@àHàXbOgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropInputh
Ì
b_ZN10tensorflow7functor22ShuffleInTensor3SimpleIfLi2ELi1ELi0ELb0EEEviPKT_NS0_9DimensionILi3EEEPS2_*28À@ÀHÀXbOgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropInputh
ƒ
¾_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_max_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀb+sequential/time_distributed_2/conv1d_2/Reluh
ð
_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_17scalar_product_opIKfSB_EEKNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEKNS_18TensorConversionOpIfKNS9_INS0_13scalar_cmp_opISB_SB_LNS0_14ComparisonNameE5EEESF_KNS_20TensorCwiseNullaryOpINS0_18scalar_constant_opISB_EESF_EEEEEEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀb9gradient_tape/sequential/time_distributed/conv1d/ReluGradh
»
„_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIxLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_19TensorCwiseBinaryOpINS0_13scalar_sum_opIKxSB_EEKS8_KNS4_INS5_ISB_Li1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28À@ÀHÀbAdam/Adam/AssignAddVariableOph
ª
@_ZN5cudnn4gemm20computeOffsetsKernelENS0_20ComputeOffsetsParamsE*28€@€H€XbOgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropInputh
ª
@_ZN5cudnn4gemm20computeOffsetsKernelENS0_20ComputeOffsetsParamsE*28À@ÀHÀXbOgradient_tape/sequential/time_distributed_3/conv1d_3/conv1d/Conv2DBackpropInputh
°
ä_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_18TensorConversionOpIfKNS4_INS5_IKiLi1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28¿@¿H¿b2mean_squared_error/weighted_loss/num_elements/Casth
²
G_ZN5cudnn4gemm26computeWgradBOffsetsKernelENS0_21ComputeBOffsetsParamsE*28 @ H XbPgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropFilterh
„
ä_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_18TensorConversionOpIfKNS4_INS5_IKiLi1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€bCast_2h
£
ä_ZN5Eigen8internal15EigenMetaKernelINS_15TensorEvaluatorIKNS_14TensorAssignOpINS_9TensorMapINS_6TensorIfLi1ELi1ExEELi16ENS_11MakePointerEEEKNS_18TensorConversionOpIfKNS4_INS5_IKiLi1ELi1ExEELi16ES7_EEEEEENS_9GpuDeviceEEExEEvT_T0_*28€@€H€b%gradient_tape/mean_squared_error/Casth
¬
B_ZN5cudnn4gemm21computeBOffsetsKernelENS0_21ComputeBOffsetsParamsE*28à@àHàXbOgradient_tape/sequential/time_distributed_2/conv1d_2/conv1d/Conv2DBackpropInputh
¬
B_ZN5cudnn4gemm21computeBOffsetsKernelENS0_21ComputeBOffsetsParamsE*28à@àHàXbOgradient_tape/sequential/time_distributed_3/conv1d_3/conv1d/Conv2DBackpropInputh
§
<_Z24scalePackedTensor_kernelIffEv19cudnnTensor4dStructPT_T0_*28 @ H XbPgradient_tape/sequential/time_distributed_1/conv1d_1/conv1d/Conv2DBackpropFilterh