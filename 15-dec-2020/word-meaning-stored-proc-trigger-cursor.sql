SELECT Date(changedate) as lastUpdatedOn, count(distinct(word_id)) as count 
FROM word_update_log 
Where action='update'
group by lastUpdatedOn
order by  lastUpdatedOn desc


-------------------------

CREATE TRIGGER after_word_update_log
    AFTER UPDATE ON t_word
    FOR EACH ROW 
 INSERT INTO word_update_log
 SET action = 'update',
     word_id = OLD.id,
     unique_name = OLD.unique_name,
     changedate = NOW();
	 
	 -----------
	 
	 SET @emailList = ""; 
CALL insertBackdatedWordUpdateLog(@emailList); 
SELECT @emailList;
	 -------------
	 
	 INSERT INTO word_update_log (word_id,unique_name,action,changedate)
VALUES (select id,unique_name,'updateee' as ACTION,NOW() as mychangedtime  from t_word where id=1);
 
	 
	 
	 
	--------------------- 
	 
 
DELIMITER $$
CREATE PROCEDURE insertBackdatedWordUpdateLog_updated (
	 -- INOUT emailList varchar(9000)
)
BEGIN
	DECLARE finished INTEGER DEFAULT 0;
	DECLARE emailAddress integer DEFAULT 0;
    DECLARE s_unique_name text DEFAULT '';
    DECLARE s_updated_on datetime;
    DECLARE s_action varchar(100);

	-- declare cursor for employee email
	DEClARE curWordId 
		CURSOR FOR 
			-- SELECT id FROM t_word;
			SELECT id,unique_name,updated_on FROM t_word;

	-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;

	OPEN curWordId;

	getWordId: LOOP
		-- FETCH curWordId INTO emailAddress;
		FETCH curWordId INTO emailAddress,s_unique_name,s_updated_on ;
		IF finished = 1 THEN 
			LEAVE getWordId;
		END IF;
		-- build email list
        
        set s_action='updateeee';
        INSERT INTO word_update_log( word_id, unique_name, ACTION, changedate ) values (emailAddress,s_unique_name,s_action,s_updated_on );
        
		-- SET emailList = CONCAT(emailAddress,";",emailList);
	END LOOP getWordId;
	CLOSE curWordId;

END$$
DELIMITER ;



--------------------


CALL insertBackdatedWordUpdateLog_updated();