UPDATE S1_STAGE_WARD SET WARD_NAME = 'General Care' WHERE WARD_NAME ='GENERAL care';
UPDATE S1_STAGE_WARD SET WARD_NAME = 'General Ward' WHERE WARD_NAME ='GENERAL WARD';

UPDATE S1_STAGE_CARE_CENTRE SET CARE_CENTRE_NAME = 'Altorn Care Home' WHERE CARE_CENTRE_NAME ='ALTORN CareHome';
UPDATE S1_STAGE_CARE_CENTRE SET CARE_CENTRE_NAME = 'Bewan Care Home' WHERE CARE_CENTRE_NAME ='BEWAN CareHome';
UPDATE S1_STAGE_CARE_CENTRE SET CARE_CENTRE_NAME = 'Wwllbeing Care Home' WHERE CARE_CENTRE_NAME ='WELLBEING CareHome';
UPDATE S1_STAGE_CARE_CENTRE SET CARE_CENTRE_NAME = 'LBU Care Home' WHERE CARE_CENTRE_NAME ='LBU CareHome';
UPDATE S1_STAGE_CARE_CENTRE SET CARE_CENTRE_NAME = 'Oscar Care Home' WHERE CARE_CENTRE_NAME ='OSCAR CareHome';
UPDATE S1_STAGE_CARE_CENTRE SET CARE_CENTRE_NAME = 'Juno Care Home' WHERE CARE_CENTRE_NAME ='JUNO CareHome';

DELETE FROM S1_STAGE_ADMISSION WHERE ADMISSION_DATE IS null;