drop table if exists ngram_ex;

create table ngram_ex (
	line string
	);

load data local inpath './ngram_data' into table ngram_ex;

select * from ngram_ex;

select ngrams(sentences(lower(line)),2, 10) from ngram_ex;
select context_ngrams(sentences(lower(line)), array(null,null), 10) from ngram_ex;
