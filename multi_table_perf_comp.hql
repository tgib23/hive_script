from mult_src
	insert overwrite local directory '/home/hadoop/hive/build/dist/mult_src_output_v1_0'
		select num where (part='src0')
	insert overwrite local directory '/home/hadoop/hive/build/dist/mult_src_output_v1_1'
		select num where (part='src1');
