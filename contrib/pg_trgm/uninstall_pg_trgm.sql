/* $PostgreSQL: pgsql/contrib/pg_trgm/uninstall_pg_trgm.sql,v 1.5 2007/11/13 04:24:28 momjian Exp $ */

-- Adjust this setting to control where the objects get dropped.
SET search_path = public;

DROP OPERATOR CLASS gist_trgm_ops USING gist;

DROP FUNCTION gtrgm_same(gtrgm, gtrgm, internal);

DROP FUNCTION gtrgm_union(bytea, internal);

DROP FUNCTION gtrgm_picksplit(internal, internal);

DROP FUNCTION gtrgm_penalty(internal,internal,internal);

DROP FUNCTION gtrgm_decompress(internal);

DROP FUNCTION gtrgm_compress(internal);
 
DROP FUNCTION gtrgm_consistent(gtrgm,internal,int4);

DROP TYPE gtrgm CASCADE;

DROP OPERATOR CLASS gin_trgm_ops USING gin;

DROP FUNCTION gin_extract_trgm(text, internal);

DROP FUNCTION gin_extract_trgm(text, internal, internal);

DROP FUNCTION gin_trgm_consistent(internal, internal, text);

DROP OPERATOR % (text, text);

DROP FUNCTION similarity_op(text,text);

DROP FUNCTION similarity(text,text);

DROP FUNCTION show_trgm(text);

DROP FUNCTION show_limit();

DROP FUNCTION set_limit(float4);
