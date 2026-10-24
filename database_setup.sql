-- 1. Create database (run in pgAdmin Query Tool or psql)
CREATE DATABASE college;

-- 2. Connect to the 'college' database and create the table:
CREATE TABLE IF NOT EXISTS student (
    regno INTEGER PRIMARY KEY,
    name VARCHAR(255),
    cgpa DOUBLE PRECISION
);

-- 3. Optional sample records (from lab manual demo):
INSERT INTO student (regno, name, cgpa) VALUES 
(102, 'Kumar', 8.5),
(108, 'Rajesh', 9.1),
(104, 'Bright', 5.4),
(110, 'Joel', 8.1),
(201, 'John', 8.1),
(979, 'David', 8.6)
ON CONFLICT (regno) DO NOTHING;
