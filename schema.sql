create table students (
  student_id serial primary key,
  name varchar not null,
  created timestamp with time zone default now()
);
