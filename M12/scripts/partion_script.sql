CREATE EXTERNAL TABLE IF NOT EXISTS manudatabase.manutable990 (
  `return_id` bigint,
  `filing_type` string,
  `ein` bigint,
  `tax_period` bigint,
  `sub_date` string,
  `taxpayer_name` string,
  `dln` bigint,
  `object_id` bigint
) PARTITIONED BY (
  return_type string 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = ',',
  'field.delim' = ','
) LOCATION 's3://yuehao-irs-990/partition'
TBLPROPERTIES ('has_encrypted_data'='false', 
  'skip.header.line.count'='1');

MSCK REPAIR TABLE manutable990;
