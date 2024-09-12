SELECT * FROM S1_STAGE_CARE_CENTRE;
DROP TABLE S2_STAGE_CARE_CENTRE;
CREATE TABLE S2_STAGE_CARE_CENTRE AS 
    SELECT ( CC.DATASOURCE || '_' || CC.CARE_CENTRE_ID) AS CARE_CENTRE_N_ID,CARE_CENTRE_ID, CC.CARE_CENTRE_NAME 
        FROM S1_STAGE_CARE_CENTRE CC;
SELECT * FROM S2_STAGE_CARE_CENTRE;
UPDATE S2_STAGE_CARE_CENTRE SET CARE_CENTRE_N_ID = ( 'C'||'_'|| CARE_CENTRE_N_ID);

SELECT * FROM S1_STAGE_ADMISSION;

DROP TABLE S2_STAGE_ADMISSION;
CREATE TABLE S2_STAGE_ADMISSION AS 
    SELECT ADMISSION_NO, BED_ID, ADMISSION_DATE, DATASOURCE 
        FROM S1_STAGE_ADMISSION;
SELECT * FROM S2_STAGE_ADMISSION;
DELETE FROM S2_STAGE_ADMISSION;

ALTER TABLE S2_STAGE_ADMISSION MODIFY ADMISSION_DATE VARCHAR(10);

INSERT INTO S2_STAGE_ADMISSION (SELECT ADMISSION_NO, BED_ID, TO_CHAR(ADMISSION_DATE, 'MM/YYYY'), DATASOURCE FROM S1_STAGE_ADMISSION);
SELECT * FROM S2_STAGE_ADMISSION;


DROP TABLE S3_STAGE_ADMISSION;
CREATE TABLE S3_STAGE_ADMISSION AS SELECT ADMISSION_NO, BED_ID, ADMISSION_DATE, DATASOURCE FROM S1_STAGE_ADMISSION;

ALTER TABLE S3_STAGE_ADMISSION 
ADD ADDMISSION_YEAR VARCHAR2(5);
SELECT * FROM S3_STAGE_ADMISSION;

DELETE FROM S3_STAGE_ADMISSION;

ALTER TABLE S3_STAGE_ADMISSION MODIFY ADMISSION_DATE VARCHAR(5);

INSERT INTO  S3_STAGE_ADMISSION (SELECT ADMISSION_NO, BED_ID, TO_CHAR(ADMISSION_DATE, 'MM'),DATASOURCE,TO_CHAR(ADMISSION_DATE, 'YYYY')  FROM S1_STAGE_ADMISSION);