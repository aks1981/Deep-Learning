?	gHū?@gHū?@!gHū?@	??z???????z?????!??z?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6gHū?@?j-?B[@1?&?????A?zk`???I]?@?b??Y??5&ĸ?*	??(\??a@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate-	PS?֪?!?')?aB@)??j?j???1?㏁(X9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatg???d??!?????;@)??{G?	??1h?g?V7@:Preprocessing2F
Iterator::Model?drjg???!k?h?y9@)׈`\:??1?_?2?r.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceJ?ʽ????!?Z|???&@)J?ʽ????1?Z|???&@:Preprocessing2U
Iterator::Model::ParallelMapV2؀q????!K?$@)؀q????1K?$@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap;?/K;5??!w,&`E@)9?~߿y??1z?'?W?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorX<?H??z?!?6??1e@)X<?H??z?1?6??1e@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip׿?3??!e?? ??R@)w-!?lv?1?7?q7?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 78.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?14.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??z?????I?K?X?W@Q?H.?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?j-?B[@?j-?B[@!?j-?B[@      ??!       "	?&??????&?????!?&?????*      ??!       2	?zk`????zk`???!?zk`???:	]?@?b??]?@?b??!]?@?b??B      ??!       J	??5&ĸ???5&ĸ?!??5&ĸ?R      ??!       Z	??5&ĸ???5&ĸ?!??5&ĸ?b      ??!       JGPUY??z?????b q?K?X?W@y?H.?@?"?
gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?yh???!?yh???"<
sequential/hiddenLayer1/MatMulMatMulDA??5??!????G??0";
sequential/outputLayer/SoftmaxSoftmax?}Mԥ?!'??q?;??";
sequential/outputLayer/MatMulMatMul??/?Uw??!??(????0"J
,gradient_tape/sequential/hiddenLayer2/MatMulMatMul?4H5???!!??~R??0"<
sequential/hiddenLayer2/MatMulMatMulV~ꉌ*??!?pcз??0"I
+gradient_tape/sequential/outputLayer/MatMulMatMult??C???!ze??X??0"I
-gradient_tape/sequential/outputLayer/MatMul_1MatMul2?և???! 6?JyD??"J
.gradient_tape/sequential/hiddenLayer2/MatMul_1MatMuli?????!?1$?"??"-
IteratorGetNext/_1_Send?(U?EK??!?ھL???Q      Y@Y      8@a      S@ql?9"$?D@y???!b ??"?
both?Your program is POTENTIALLY input-bound because 78.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?14.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?41.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 