	?????};@?????};@!?????};@	?Y???'???Y???'??!?Y???'??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?????};@Vdt@?8@1??Z??AeM.????I???U-)@Y??i????*	m????ni@2F
Iterator::Model????????!?ǂ?!D@)_&?????1w^(??4@:Preprocessing2U
Iterator::Model::ParallelMapV2?x]?`7??! ?0??g3@)?x]?`7??1 ?0??g3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatea??L???!%????6@)}iƢ??1Hz????0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatD?1uWv??!??-.?0@)!%̴???1???U??*@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?Z(??ڱ?!??n#A@)????K???1+?k '@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipC?*q??!?S8}4?M@);?5Y???1??P]?d!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice'?y?3M??!A????S@)'?y?3M??1A????S@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???x??{?!??\?
@)???x??{?1??\?
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?Y???'??I??x??jX@Q+??????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Vdt@?8@Vdt@?8@!Vdt@?8@      ??!       "	??Z????Z??!??Z??*      ??!       2	eM.????eM.????!eM.????:	???U-)@???U-)@!???U-)@B      ??!       J	??i??????i????!??i????R      ??!       Z	??i??????i????!??i????b      ??!       JGPUY?Y???'??b q??x??jX@y+??????