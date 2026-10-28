CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(50) UNIQUE NOT NULL,
  phone varchar(20),
  date_of_birth DATE,
  enrollment_date DATE DEFAULT CURRENT_DATE,
  department_id int REFERENCES departments(department_id),
  is_active boolean DEFAULT true,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
