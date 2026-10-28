CREATE TABLE courses (
  course_id SERIAL PRIMARY KEY,
  course_code varchar(100) UNIQUE NOT NULL,
  name varchar(100) NOT NULL,
  description text,
  credits int check (credits > 0 AND credits <= 6),
  department_id int REFERENCES departments(department_id),
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);
