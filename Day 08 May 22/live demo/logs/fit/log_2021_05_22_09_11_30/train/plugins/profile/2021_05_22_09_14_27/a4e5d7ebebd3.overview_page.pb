?	????Ь&@????Ь&@!????Ь&@	8?f?>??8?f?>??!8?f?>??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6????Ь&@?a???R#@1#i7????A?k??[??I;?i??~??Y??9@0G??*	?p=
??d@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate29?3Lm??!÷????=@)?Z? m???1???Z?4@:Preprocessing2F
Iterator::Model?s?f????!?t?_U?<@)?I*S?A??1???"3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat}	^??!<???u4@)`?Eж??1??m,V/@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapu??[??!?T_0d?E@)o??\????1???C?y*@:Preprocessing2U
Iterator::Model::ParallelMapV2aTR'????!#G8ef#@)aTR'????1#G8ef#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice1y?|??!h?K?/3"@)1y?|??1h?K?/3"@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?ֈ`\??!??
???Q@)5|?Ƌ?1#T?}?J @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensord?????}?!W??d@)d?????}?1W??d@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 85.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?9.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no98?f?>??I?rc*?W@Qg????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?a???R#@?a???R#@!?a???R#@      ??!       "	#i7????#i7????!#i7????*      ??!       2	?k??[???k??[??!?k??[??:	;?i??~??;?i??~??!;?i??~??B      ??!       J	??9@0G????9@0G??!??9@0G??R      ??!       Z	??9@0G????9@0G??!??9@0G??b      ??!       JGPUY8?f?>??b q?rc*?W@yg????@?"?
gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?N??!?N??"<
sequential/hiddenLayer1/MatMulMatMul%??bM??!$???.??0";
sequential/outputLayer/MatMulMatMul?P?ϥ?!?`w?@Q??0";
sequential/outputLayer/SoftmaxSoftmaxu???r??!<?tɂ???"<
sequential/hiddenLayer2/MatMulMatMul???Ŀˣ?!?J??x??0"J
,gradient_tape/sequential/hiddenLayer2/MatMulMatMul䂜??Z??!XۣRS???0"I
+gradient_tape/sequential/outputLayer/MatMulMatMul*҅????!? ^?G!??0"I
-gradient_tape/sequential/outputLayer/MatMul_1MatMuls")?Uݡ?!?DX?\??"J
.gradient_tape/sequential/hiddenLayer2/MatMul_1MatMul?UU?9Ǡ?!??6??:??"-
IteratorGetNext/_1_SendZ???8_??!??F??%??Q      Y@Y      8@a      S@qSov?RP@y{u'????"?
both?Your program is POTENTIALLY input-bound because 85.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?9.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 