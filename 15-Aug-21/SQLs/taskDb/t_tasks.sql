DROP TABLE IF EXISTS t_tasks;

CREATE TABLE t_tasks (
	id int(11) NOT NULL AUTO_INCREMENT,
	title text NOT NULL,
	description text DEFAULT NULL,
	created DATETIME DEFAULT current_timestamp,
	primary key (id)
);

