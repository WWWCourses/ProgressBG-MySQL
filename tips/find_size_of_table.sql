SELECT column_name,
       character_maximum_length
FROM   information_schema.columns
WHERE  table_schema = 'test_db'
       AND table_name = 'string_datatypes'
       AND column_name = 'title'
