	insert overwrite local directory '/home/hadoop/hive/build/dist/mult_src_output_v0_0'
		select num from mult_src where (part='src0');
	insert overwrite local directory '/home/hadoop/hive/build/dist/mult_src_output_v0_1'
		select num from mult_src where (part='src1');
