
CREATE TABLE departments (
  department_id SERIAL PRIMARY KEY,
  name varchar(100) UNIQUE NOT NULL,
  building varchar(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  ;

