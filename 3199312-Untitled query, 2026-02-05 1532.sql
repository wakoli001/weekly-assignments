-- Create a dedicated schema and create the table inside it
-- Replace "my_schema" with a schema name you control if needed
CREATE SCHEMA IF NOT EXISTS my_schema;
SET search_path = my_schema, public;

CREATE TABLE IF NOT EXISTS my_schema.student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);