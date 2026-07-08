CREATE SCHEMA IF NOT EXISTS iceberg.test_schema
WITH (location = 's3://warehouse/test_schema/');

CREATE TABLE IF NOT EXISTS iceberg.test_schema.employees (
    id INTEGER,
    name VARCHAR,
    department VARCHAR,
    salary DOUBLE,
    hire_date DATE
)
WITH (
    format = 'PARQUET',
    partitioning = ARRAY['department']
);