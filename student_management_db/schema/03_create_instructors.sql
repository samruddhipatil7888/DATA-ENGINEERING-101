CREATE TABLE instructors (
  instructor_id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(50) UNIQUE NOT NULL,
  phone varchar(20),
  date_of_birth DATE,
  hire_date DATE DEFAULT CURRENT_DATE,
  salary NUMERIC(12,2),
  department_id int REFERENCES departments(department_id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);