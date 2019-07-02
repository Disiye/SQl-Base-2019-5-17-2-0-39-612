use student_examination_sys;
create table student(
  id varchar(4) NOT NULL,
  name varchar(20) NOT NULL,
  age int(10) NOT NULL,
  sex enum('男','女') NOT NULL,
  PRIMARY KEY (id)
);
create table subject(
  id varchar(4) NOT NULL,
  subject varchar(20) NOT NULL,
  teacher varchar(20) NOT NULL,
  description varchar(200) NOT NULL,
  PRIMARY KEY (id)
);
create table score(
  id varchar(4) NOT NULL,
  student_id varchar(4) NOT NULL,
  subject_id varchar(4) NOT NULL,
  score double NOT NULL,
  PRIMARY KEY (id), KEY score_std (student_id), KEY score_sub (subject_id),
  CONSTRAINT score_std FOREIGN KEY (student_id) REFERENCES student (id),
  CONSTRAINT score_sub FOREIGN KEY (subject_id) REFERENCES subject (id)
)
