?	R?Hڍ?4@R?Hڍ?4@!R?Hڍ?4@	Y|?Z???Y|?Z???!Y|?Z???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6R?Hڍ?4@@?ի03@1?? ??A*?Z^?ޮ?I?DeÚJ??Y???Ϲ??*	R??noo@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??#nk??! P?Ӈ0B@)??ui??1?7?=?@@:Preprocessing2U
Iterator::Model::ParallelMapV2???n??!!?Ro?2@)???n??1!?Ro?2@:Preprocessing2F
Iterator::Model1[?*?M??!???RA@)|V?j-??1X?^?W/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceh ?????!5?ƙ?$@)h ?????15?ƙ?$@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????켭?!?5L?7@)`????ӕ?1?s???? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?R	??!?u??VP@)VG?tF??1???)J?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??5??Ң?!`4֟?=-@)??a?'??1U?"5@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?I?????!܅?by?@)?I?????1܅?by?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9Y|?Z???I7<? |eX@Q???%?y??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	@?ի03@@?ի03@!@?ի03@      ??!       "	?? ???? ??!?? ??*      ??!       2	*?Z^?ޮ?*?Z^?ޮ?!*?Z^?ޮ?:	?DeÚJ???DeÚJ??!?DeÚJ??B      ??!       J	???Ϲ?????Ϲ??!???Ϲ??R      ??!       Z	???Ϲ?????Ϲ??!???Ϲ??b      ??!       JGPUYY|?Z???b q7<? |eX@y???%?y???"?
gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits??.???!??.???"<
sequential/hiddenLayer1/MatMulMatMul?ۮ 2???!?h.6???0";
sequential/outputLayer/SoftmaxSoftmaxȯ??U???!<????'??";
sequential/outputLayer/MatMulMatMul?7??0???!$??????0"<
sequential/hiddenLayer2/MatMulMatMul??TATr??!A?qVG??0"J
,gradient_tape/sequential/hiddenLayer2/MatMulMatMul?W~????!????0"I
-gradient_tape/sequential/outputLayer/MatMul_1MatMul?A??.)??!E?v????"I
+gradient_tape/sequential/outputLayer/MatMulMatMul6?^??֡?!̨b??$??0"J
.gradient_tape/sequential/hiddenLayer2/MatMul_1MatMulI. Q????!KW?XR??"-
IteratorGetNext/_1_Send?&??ƞ?!? ?????Q      Y@Y      8@a      S@qް????H@y??=?????"?
both?Your program is POTENTIALLY input-bound because 92.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?49.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 