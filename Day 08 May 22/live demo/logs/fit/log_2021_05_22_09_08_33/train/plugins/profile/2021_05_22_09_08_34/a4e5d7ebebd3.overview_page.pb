?	??W:>@??W:>@!??W:>@	?&???@?&???@!?&???@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??W:>@?xy:W	@1B??=?
??A:[@h=|??I?߄B??Yr????)??*	?????
?@2F
Iterator::Model	?I??G??!-?o?)U@)<?\?g??1????7S@:Preprocessing2U
Iterator::Model::ParallelMapV2?_"?:???!????Z@)?_"?:???1????Z@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??=?
??!?5Dm=@)?'eRC??1???Ir@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?6??͔?!>[??&@)?6??͔?1>[??&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?=???!????u@)?ôo?1?Ɨ?(?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap=)?ڨ?!?2?}w? @)P??H???1lŝm?W@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip:;%???!D?6???.@){?\?&?{?1.M?m2???:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?LN?S{?!=51??|??)?LN?S{?1=51??|??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 61.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?24.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?&???@IJ?Of?U@Q?+p?? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?xy:W	@?xy:W	@!?xy:W	@      ??!       "	B??=?
??B??=?
??!B??=?
??*      ??!       2	:[@h=|??:[@h=|??!:[@h=|??:	?߄B???߄B??!?߄B??B      ??!       J	r????)??r????)??!r????)??R      ??!       Z	r????)??r????)??!r????)??b      ??!       JGPUY?&???@b qJ?Of?U@y?+p?? @?"?
gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits??????!??????"<
sequential/hiddenLayer1/MatMulMatMul#$?Oa??! $gsDA??0";
sequential/outputLayer/MatMulMatMulXz?wvȥ?![???Y??0";
sequential/outputLayer/SoftmaxSoftmax?߅????!T]>?????"<
sequential/hiddenLayer2/MatMulMatMul񐹖?|??!r?/,k??0"J
,gradient_tape/sequential/hiddenLayer2/MatMulMatMulm]K????! ?????0"I
+gradient_tape/sequential/outputLayer/MatMulMatMul? ?؏??!:_a?	%??0"I
-gradient_tape/sequential/outputLayer/MatMul_1MatMul@??O֡?!p:??_??"J
.gradient_tape/sequential/hiddenLayer2/MatMul_1MatMulM??OP??!????D??"-
IteratorGetNext/_1_Send?Δv???!;D?z2??Q      Y@Y      8@a      S@q?h???K@yx?4?????"?
both?Your program is POTENTIALLY input-bound because 61.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?24.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?55.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 