-- Простой SELECT
SELECT * FROM iceberg.test_schema.employees;

-- Time Travel (на момент времени)
SELECT * FROM iceberg.test_schema.employees
FOR SYSTEM_TIME AS OF TIMESTAMP '2023-01-01 00:00:00';

-- Федеративный запрос (JOIN с системной таблицей)
SELECT e.name, e.department, e.salary
FROM iceberg.test_schema.employees e
JOIN iceberg.information_schema.tables t
  ON e.department = t.table_name;