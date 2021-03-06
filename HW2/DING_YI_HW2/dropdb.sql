DROP INDEX STUDENT_spatial_idx;
DROP INDEX BUILDING_spatial_idx;
DROP INDEX TRAMSTOP_spatial_idx;

DELETE FROM user_sdo_geom_metadata WHERE
TABLE_NAME='BUILDING' AND 
COLUMN_NAME='GEOM';

DELETE FROM user_sdo_geom_metadata WHERE
TABLE_NAME='STUDENT' AND 
COLUMN_NAME='GEOM';

DELETE FROM user_sdo_geom_metadata WHERE
TABLE_NAME='TRAMSTOP' AND 
COLUMN_NAME='GEOM';

DROP TABLE STUDENT;
DROP TABLE BUILDING;
DROP TABLE TRAMSTOP;