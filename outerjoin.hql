 select mult_src.num, mult_src.part, simple.a from mult_src
 	left outer join simple
	on (mult_src.num = simple.a);
