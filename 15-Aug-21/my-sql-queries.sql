-- delete from word_update_log;
-- commit;

call insertBackdatedWordUpdateLog_updated();

select count(*) from word_update_log;

select count(*) from t_word;

UPDATE
  t_word
SET
  unique_name = UPPER(unique_name), word = UPPER(word);
  
--=============================================
  
select Action_date,count,Action from
	(
		(
		SELECT Date(changedate) as Action_date, count(distinct(word_id)) as count ,'updated' as Action
		FROM word_update_log 
		Where action='update'
		group by Action_date
		order by  Action_date desc
		) as A
		union all
		(
		SELECT Date(created_on) as Action_date, count(distinct(id)) as count ,'created' as Action
		FROM t_word 
		group by created_on
		order by  created_on desc
		) as B
	)

--=============================================


SELECT Date(changedate) as Action_date, count(distinct(word_id)) as count ,'updated' as Action
FROM word_update_log 
Where action='update'
group by Action_date
order by  Action_date desc

union all

SELECT Date(created_on) as Action_date, count(distinct(id)) as count ,'created' as Action
FROM t_word 
group by created_on
order by  created_on desc
		
--=============================================

SELECT Date(created_on) as Action_date, count(distinct(id)) as count , 'created' as Action
FROM t_word 
group by Action_date
order by  created_on desc

--===============================================

INSERT INTO word_update_log SET action = 'read', word_id = OLD.id, changedate = NOW()

--===============================================

SELECT tc.cat_id,tc.cat_name,tc.creation_date,tc.last_updation_date,tc.rating,last_read_date, 
(SELECT COUNT(*) FROM t_catg_ques tcq WHERE tcq.linked_cat_id=cat_id) AS 'totalQuestionsCount' 
FROM t_category tc WHERE cat_id='1'

----------------------------

INSERT INTO `parent_child_relation_topics`.`t_views` 
(`title`, 	`parent_id` 	)
VALUES
('AWS',5 	) -- 33
,('Jenkins',5 	)-- 34
,('Jira',5) -- 35
,('Version Control',5) -- 36
,('Deployment',5 	)-- 37
,('OS/File Transfer',5) -- 38
,('Other Programming Language',5) -- 39
,('Agile',5 	)-- 40
;

INSERT INTO `parent_child_relation_topics`.`t_views` 
(`title`, 	`parent_id` 	)
VALUES
('GIT',36 	) -- 41
,('SVN',36 	) -- 42
,('Tomcat',37 	) -- 43
,('Weblogic',37 	) -- 44
,('WebSphere',37 	) -- 45
,('Putty',38 	) -- 46
,('WinSCP',38 	) -- 47
,('Linux',38 	) -- 48
,('Windows',38 	) -- 49
,('Python',30 	) -- 50
,('Ruby',39 	) -- 51
;

-----------------------

SELECT
    id, title
FROM
    t_views
WHERE
    parent_id IS NULL;
    
    
SELECT
    id, title
FROM
    t_views
WHERE
    parent_id = 1;
	
--------


WITH RECURSIVE category_path (id, title,parent_id, PATH) AS
(
  SELECT id, title,parent_id, title AS PATH
    FROM t_views
    WHERE parent_id IS NULL
  UNION ALL
  SELECT c.id, c.title,c.parent_id, CONCAT(cp.path, ' > ', c.title)
    FROM category_path AS cp JOIN t_views AS c
      ON cp.id = c.parent_id
)
SELECT * FROM category_path
ORDER BY PATH;

-----------------------

SELECT id, title,parent_id, title AS PATH
    FROM t_views
    WHERE parent_id IS NULL
	
-----------------------


INSERT INTO `coding_ex_db`.`t_employee` 
	(`EmployeeID`, 
	`EmployeeName`, 
	`Title`, 
	`BusinessUnit`, 
	`Place`, 
	`SupervisorID`, 
	`Competencies`, 
	`Salary`
	)
	VALUES
	('19', 
	'Emp16', 
	'Mrs.', 
	'BU2', 
	'Gurgaon', 
	2, 
	'COMP2', 
	'135000'
	),
	('20', 
	'Emp17', 
	'Mrs.', 
	'BU2', 
	'Gurgaon', 
	2, 
	'COMP2', 
	'125000'
	)
------------------------------

--===================================================
SELECT tc.cat_id,tc.cat_name,tc.creation_date,tc.last_updation_date,tc.rating,last_read_date, 
(SELECT COUNT(*) FROM t_catg_ques tcq WHERE tcq.linked_cat_id=cat_id) AS 'totalQuestionsCount' 
FROM t_category tc WHERE cat_id='1'

----------------------------

INSERT INTO `parent_child_relation_topics`.`t_views` 
(`title`, 	`parent_id` 	)
VALUES
('AWS',5 	) -- 33
,('Jenkins',5 	)-- 34
,('Jira',5) -- 35
,('Version Control',5) -- 36
,('Deployment',5 	)-- 37
,('OS/File Transfer',5) -- 38
,('Other Programming Language',5) -- 39
,('Agile',5 	)-- 40
;

INSERT INTO `parent_child_relation_topics`.`t_views` 
(`title`, 	`parent_id` 	)
VALUES
('GIT',36 	) -- 41
,('SVN',36 	) -- 42
,('Tomcat',37 	) -- 43
,('Weblogic',37 	) -- 44
,('WebSphere',37 	) -- 45
,('Putty',38 	) -- 46
,('WinSCP',38 	) -- 47
,('Linux',38 	) -- 48
,('Windows',38 	) -- 49
,('Python',30 	) -- 50
,('Ruby',39 	) -- 51
;

-----------------------

SELECT
    id, title
FROM
    t_views
WHERE
    parent_id IS NULL;
    
    
SELECT
    id, title
FROM
    t_views
WHERE
    parent_id = 1;
	
--------


WITH RECURSIVE category_path (id, title,parent_id, PATH) AS
(
  SELECT id, title,parent_id, title AS PATH
    FROM t_views
    WHERE parent_id IS NULL
  UNION ALL
  SELECT c.id, c.title,c.parent_id, CONCAT(cp.path, ' > ', c.title)
    FROM category_path AS cp JOIN t_views AS c
      ON cp.id = c.parent_id
)
SELECT * FROM category_path
ORDER BY PATH;

-----------------------

SELECT id, title,parent_id, title AS PATH
    FROM t_views
    WHERE parent_id IS NULL
	
-----------------------


INSERT INTO `coding_ex_db`.`t_employee` 
	(`EmployeeID`, 
	`EmployeeName`, 
	`Title`, 
	`BusinessUnit`, 
	`Place`, 
	`SupervisorID`, 
	`Competencies`, 
	`Salary`
	)
	VALUES
	('19', 
	'Emp16', 
	'Mrs.', 
	'BU2', 
	'Gurgaon', 
	2, 
	'COMP2', 
	'135000'
	),
	('20', 
	'Emp17', 
	'Mrs.', 
	'BU2', 
	'Gurgaon', 
	2, 
	'COMP2', 
	'125000'
	)
------------------------------
--=======================================