-- \i seeds/assignments_seeds.sql --

SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id
------------------------------------------
-- bootcampx=# SELECT * FROM cohorts
-- bootcampx-# ;
--  id | name  | start_date |  end_date  
-- ----+-------+------------+------------
--   1 | FEB12 | 2018-02-12 | 2018-04-20
--   2 | MAR12 | 2018-03-12 | 2018-05-18
--   3 | APR09 | 2018-04-09 | 2018-06-15
--   4 | MAY07 | 2018-05-07 | 2018-07-13
--   5 | JUN04 | 2018-06-04 | 2018-08-10
--   6 | JUL02 | 2018-07-02 | 2018-09-07
--   7 | JUL30 | 2018-07-30 | 2018-10-05
--   8 | AUG27 | 2018-08-27 | 2018-11-02
--   9 | SEP24 | 2018-09-24 | 2018-11-30
--  10 | OCT22 | 2018-10-22 | 2018-12-28
--  11 | NOV19 | 2018-11-19 | 2019-01-25
--  12 | DEC17 | 2018-12-17 | 2019-02-22
-- (12 rows)
-------------------------------------------
-- bootcampx=# SELECT * FROM students
-- bootcampx-# ;
--  id  |           name           |               email               |    phone     |     github     | start_date |  end_date  | cohort_id 
-- -----+--------------------------+-----------------------------------+--------------+----------------+------------+------------+-----------
--    1 | Armand Hilll             | lera_hahn@dickens.org             | 778-349-3299 | aspernatur     | 2018-02-12 | 2018-04-20 |         1
--    2 | Stephanie Wolff          | darius.homenick@tod.ca            | 778-125-2216 | rem            | 2018-02-12 | 2018-04-20 |         1
--    3 | Stan Miller              | mcdermott.maxie@schoen.com        | 086-503-5484 | qui            | 2018-02-12 | 2018-04-20 |         1
--    4 | Elliot Dickinson         | derrick_pollich@gmail.com         | 778-848-9923 | dolore         | 2018-02-12 | 2018-04-20 |         1

--  Schema |          Name          | Type  | Owner 
-- --------+------------------------+-------+-------
--  public | assignment_submissions | table | abdul
--  public | assignments            | table | abdul
--  public | cohorts                | table | abdul
--  public | students               | table | abdul

-- bootcampx=# SELECT * FROM assignment_submissions
-- bootcampx-# ;
--   id   | assignment_id | student_id | duration | submission_date 
-- -------+---------------+------------+----------+-----------------
--      1 |             1 |          1 |       23 | 2018-02-12
--      2 |             2 |          1 |       60 | 2018-02-12
--      3 |             3 |          1 |       90 | 2018-02-12
--      4 |             4 |          1 |       60 | 2018-02-12
