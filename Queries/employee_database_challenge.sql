-- Challenge SQL Queries Code
-- Create new table for retiring employees by title
SELECT e.emp_no,
e.first_name,
e.last_name,
tl.title,
tl.from_date,
tl.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as tl
ON (e.emp_no = tl.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Create new table for count of retiring employees by title
SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Create a Mentorship Eligibility Table
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')	
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- Create new table for count of mentor employees by title
SELECT COUNT (me.emp_no), me.title
INTO mentorship_titles
FROM mentorship_eligibilty as me
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT COUNT(emp_no) FROM unique_titles
SELECT COUNT(emp_no) FROM employees
SELECT COUNT(emp_no) FROM mentorship_eligibilty

-- Create new table for count of retiree genders
SELECT e.emp_no,
e.first_name,
e.last_name,
e.gender,
tl.title,
tl.from_date,
tl.to_date
INTO retirement_genders
FROM employees as e
INNER JOIN titles as tl
ON (e.emp_no = tl.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) rg.emp_no,
rg.first_name,
rg.last_name,
rg.gender,
rg.title
INTO gender_titles
FROM retirement_genders as rg
WHERE rg.to_date = ('9999-01-01')
ORDER BY rg.emp_no ASC, rg.to_date DESC;

-- Create new table for count of retiring employees by gender
SELECT COUNT (gt.emp_no), gt.gender
--INTO retiring_titles
FROM gender_titles as gt
GROUP BY gender
ORDER BY COUNT(gender)DESC;
