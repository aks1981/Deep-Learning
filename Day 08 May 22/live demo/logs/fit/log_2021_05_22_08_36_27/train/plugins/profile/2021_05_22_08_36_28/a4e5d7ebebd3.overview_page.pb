?	,???@,???@!,???@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-,???@?b??^?@1,=)???A??{,G??I?j???*	???S?9g@2F
Iterator::Model뭁?,??!???C@)??a???1p?sy(6@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice,g~5??!??Y??0@),g~5??1??Y??0@:Preprocessing2U
Iterator::Model::ParallelMapV21?闈???!˚Q?$0@)1?闈???1˚Q?$0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat[??vN???!??R??1@)? ??n??1}-?h??+@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip]??e??!?PB??N@)??W9ҙ?1 9}GP$+@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??e?-??!_??٫>@)?????~??1[?M? @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?rg&Υ?!H?kz??6@)??????1d?G?J@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor:@0G??{?!??'??L@):@0G??{?1??'??L@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 68.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?22.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIG??#W@Q???g?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?b??^?@?b??^?@!?b??^?@      ??!       "	,=)???,=)???!,=)???*      ??!       2	??{,G????{,G??!??{,G??:	?j????j???!?j???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qG??#W@y???g?@?"?
gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits??~u3??!??~u3??"<
sequential/hiddenLayer1/MatMulMatMulQ?50׷?!?w??0";
sequential/outputLayer/SoftmaxSoftmaxa=h?q???!??9?L??";
sequential/outputLayer/MatMulMatMul?o?5??!q??l[???0"J
,gradient_tape/sequential/hiddenLayer2/MatMulMatMul?5?????!.??[^??0"<
sequential/hiddenLayer2/MatMulMatMul
 H??!/xn\???0"I
+gradient_tape/sequential/outputLayer/MatMulMatMul??G/[z??!?i?ӧ??0"I
-gradient_tape/sequential/outputLayer/MatMul_1MatMulpƤr?ա?!TN"bQ??"J
.gradient_tape/sequential/hiddenLayer2/MatMul_1MatMul?K????!?k??'??"-
IteratorGetNext/_2_Recv??$[g???!???X???Q      Y@Y      8@a      S@q??hQjJ@y?1?!??"?
both?Your program is POTENTIALLY input-bound because 68.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?22.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?52.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 