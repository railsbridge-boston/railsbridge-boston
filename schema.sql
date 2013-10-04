create table students (
  student_id serial primary key,
  name varchar null,
  ip varchar null,
  workshop varchar,
  created timestamp with time zone default now()
);

create table completions (
  completion_id serial primary key,
  student_id integer references students (student_id) on delete cascade,
  page varchar,
  created timestamp with time zone default now()
);
