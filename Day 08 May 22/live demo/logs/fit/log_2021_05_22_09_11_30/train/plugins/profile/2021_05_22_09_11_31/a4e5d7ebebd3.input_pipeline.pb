	WC?Ko@WC?Ko@!WC?Ko@	D?&#?*	@D?&#?*	@!D?&#?*	@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6WC?Ko@M.???@1??i??A?d?pu ??I>v()p??Y8?T????*	bX9?Tb@2F
Iterator::Model?:u??<??!??W??I@)X?ۼq??1Z?Q'?A@:Preprocessing2U
Iterator::Model::ParallelMapV2K?X?U??!M?愫0@)K?X?U??1M?愫0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?mR?X??!05K:	62@)Xr?ߔ?1MA????+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateմ?i?{??!?g ?/?3@)2 Tq???1?z?l)@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?(??/??!????:@)?.???ǅ?1???(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceDio??Ʉ?!x?F?~?@)Dio??Ʉ?1x?F?~?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorG????y?!&R?U>@)G????y?1&R?U>@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipS=??M??!KQ??aH@)1x????u?1??J@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 62.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?23.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9E?&#?*	@Inj?$?U@Q<?b޴"@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	M.???@M.???@!M.???@      ??!       "	??i????i??!??i??*      ??!       2	?d?pu ???d?pu ??!?d?pu ??:	>v()p??>v()p??!>v()p??B      ??!       J	8?T????8?T????!8?T????R      ??!       Z	8?T????8?T????!8?T????b      ??!       JGPUYE?&#?*	@b qnj?$?U@y<?b޴"@