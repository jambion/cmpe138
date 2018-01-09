DROP TABLE department;

CREATE TABLE department 
(

  dname        char(25) not null unique,
  
  dnumber      integer primary key,
  
  mgrssn       char(9) not null, 
  
  mgrstartdate date

);
