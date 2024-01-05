/*******************************************************************************
   sample-database-online-store - Version 1.0

   Script: seed.sql
   Description: Populates the database.
********************************************************************************/

SET DEFINE OFF;

ALTER TABLE employees DISABLE CONSTRAINT FK_DEPARTMENT_ID_TBL_EMPLOYEES;
ALTER TABLE departments DISABLE CONSTRAINT FK_MANAGER_ID_TBL_DEPARTMENTS;
ALTER TABLE product DISABLE CONSTRAINT FK_DISCOUNT_ID_TBL_PRODUCT;

-- departments table

Insert into DEPARTMENTS (DEPARTMENT_NAME,MANAGER_ID,DEPARTMENT_DESC) values ('Management','1','Supervision of other departments');
Insert into DEPARTMENTS (DEPARTMENT_NAME,MANAGER_ID,DEPARTMENT_DESC) values ('Development','2','Developing of the store''s website');
Insert into DEPARTMENTS (DEPARTMENT_NAME,MANAGER_ID,DEPARTMENT_DESC) values ('Purchase department','3','Management of assortment purchases and stock replenishment');
Insert into DEPARTMENTS (DEPARTMENT_NAME,MANAGER_ID,DEPARTMENT_DESC) values ('Sales department','4','Managing the sale of the assortment');

COMMIT; 

-- employees table

Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Kenon',null,'Andries',to_date('09/07/86 00:00:00','DD/MM/RR HH24:MI:SS'),'1',to_date('25/12/19 00:00:00','DD/MM/RR HH24:MI:SS'),'9300','279 266 4806','gandries0@google.de','779-22-3853',null);
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Brittney','Leonidas','Dimitriou',to_date('21/07/76 00:00:00','DD/MM/RR HH24:MI:SS'),'2',to_date('08/01/18 00:00:00','DD/MM/RR HH24:MI:SS'),'11800','604 235 4231','ldimitriou1@icio.us','825-48-6752','1');
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Elwin',null,'Huckin',to_date('31/07/78 00:00:00','DD/MM/RR HH24:MI:SS'),'3',to_date('15/03/18 00:00:00','DD/MM/RR HH24:MI:SS'),'7400','997 567 5550','bhuckin2@thetimes.co.uk','797-73-9836','1');
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Tierney','Elsinore','Powis',to_date('10/02/87 00:00:00','DD/MM/RR HH24:MI:SS'),'4',to_date('13/11/18 00:00:00','DD/MM/RR HH24:MI:SS'),'3700','911 733 7882','epowis3@4shared.com','857-99-2873','1');
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Jone','Lew','Jirusek',to_date('03/11/75 00:00:00','DD/MM/RR HH24:MI:SS'),'2',to_date('04/08/18 00:00:00','DD/MM/RR HH24:MI:SS'),'7400','563 147 3132','ljirusek4@psu.edu','166-19-1878','2');
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Clarine',null,'Calliss',to_date('10/09/91 00:00:00','DD/MM/RR HH24:MI:SS'),'2',to_date('30/03/20 00:00:00','DD/MM/RR HH24:MI:SS'),'4400','950 944 4973','mcalliss5@earthlink.net','520-28-8208','2');
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Edvard',null,'Presho',to_date('18/08/88 00:00:00','DD/MM/RR HH24:MI:SS'),'3',to_date('18/12/21 00:00:00','DD/MM/RR HH24:MI:SS'),'5200','826 896 0204','hpresho6@nature.com','818-34-0837','3');
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Dyan','Nico','Craxford',to_date('31/07/91 00:00:00','DD/MM/RR HH24:MI:SS'),'3',to_date('02/03/18 00:00:00','DD/MM/RR HH24:MI:SS'),'3700','749 923 0075','ncraxford7@cisco.com','622-33-9476','3');
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Ansel','Gordan','Stanborough',to_date('15/10/88 00:00:00','DD/MM/RR HH24:MI:SS'),'4',to_date('20/04/19 00:00:00','DD/MM/RR HH24:MI:SS'),'11200','912 579 7826','gstanborough8@webs.com','810-49-5038','4');
Insert into  EMPLOYEES (FIRST_NAME,MIDDLE_NAME,LAST_NAME,DATE_OF_BIRTH,DEPARTMENT_ID,HIRE_DATE,SALARY,PHONE_NUMBER,EMAIL,SSN_NUMBER,MANAGER_ID) values ('Eileen','Farra','Sowerbutts',to_date('06/07/72 00:00:00','DD/MM/RR HH24:MI:SS'),'4',to_date('26/03/18 00:00:00','DD/MM/RR HH24:MI:SS'),'8300','119 228 0037','fsowerbutts9@illinois.edu','373-17-6842','4');

COMMIT;

-- addresses table

insert into addresses (line_1, line_2, city, zip_code, province, country) values ('18122 Helena Park', null, 'Philadelphia', '19125', 'Pennsylvania', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('60 Arizona Crossing', null, 'Salem', '97312', 'Oregon', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('3 Bayside Crossing', null, 'Falls Church', '22047', 'Virginia', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('915 Ryan Road', null, 'Salt Lake City', '84105', 'Utah', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('47 Jenifer Court', null, 'Shreveport', '71105', 'Louisiana', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('3864 Corscot Drive', null, 'Amarillo', '79171', 'Texas', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('1 Lindbergh Junction', null, 'Erie', '16565', 'Pennsylvania', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('18 Ruskin Hill', null, 'Columbus', '43210', 'Ohio', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('877 Springview Hill', null, 'Chicago', '60657', 'Illinois', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('517 Fairview Plaza', '7712', 'Lincoln', '68524', 'Nebraska', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('22 Rockefeller Parkway', null, 'Olympia', '98506', 'Washington', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('6418 Elgar Alley', '5', 'Tampa', '33647', 'Florida', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('17 Hanover Circle', null, 'Los Angeles', '90030', 'California', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('450 Magdeline Park', null, 'Newport Beach', '92662', 'California', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('37 Merry Way', null, 'Racine', '53405', 'Wisconsin', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('717 Northridge Center', null, 'Seminole', '34642', 'Florida', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('84013 North Place', '1230', 'New York City', '10110', 'New York', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('886 Becker Street', null, 'Brooklyn', '11205', 'New York', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('61 West Center', null, 'Lexington', '40591', 'Kentucky', 'United States');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('3 Sugar Avenue', null, 'Toledo', '43699', 'Ohio', 'United States');

COMMIT;

-- store_users table

Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Jody',null,'Cabell','256 375 7831','ccabell0@cbslocal.com','ccabell0','WEbtnzfbUDDW',to_timestamp('2019-08-15 17:25:56','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Obie','Kristina','Wyche','565 270 7798','kwyche1@un.org','kwyche1','sPSfFYsMRFsi',to_timestamp('2019-01-05 14:35:29','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Harland','Jeffie','Monaghan','303 296 7661','jmonaghan2@sciencedaily.com','jmonaghan2','7yhuPjF5ktJ',to_timestamp('2021-10-19 22:00:02','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Elisha',null,'Pelham','227 801 2408','epelham3@sfgate.com','hpelham3','sM3D0abL9Tp',to_timestamp('2021-03-06 02:21:18','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Ileane',null,'Dendle','563 933 9672','adendle4@nba.com','ldendle4','e2fEAnSW2q',to_timestamp('2020-10-19 22:41:07','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Jere',null,'McConville','976 967 1637','mmcconville5@usa.gov','jmcconville5','iYDgZSHWC3u',to_timestamp('2020-03-09 20:42:35','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Rosette',null,'Kelly','668 596 4040','mkelly6@drupal.org','skelly6','9Kab3oZWR',to_timestamp('2021-11-05 15:51:48','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Boone','Cornela','Kilby','354 862 1868','ckilby7@sitemeter.com','ckilby7','ipTiROqL',to_timestamp('2021-09-22 12:49:57','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Sara-ann','Bernadine','Brecon','414 469 2292','bbrecon8@ox.ac.uk','bbrecon8','rPbV7Qw',to_timestamp('2018-07-01 12:16:41','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Bartlett','Zahara','Menco','650 868 9081','zmenco9@friendfeed.com','zmenco9','IO2zZ8Q8',to_timestamp('2018-02-21 10:07:05','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Orly','Sayre','Bogeys','197 771 6322','sbogeysa@deviantart.com','sbogeysa','ZWrAsb',to_timestamp('2020-07-20 00:12:48','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Evonne','Othella','Warin','930 187 2285','owarinb@illinois.edu','owarinb','SHg9GN0ji',to_timestamp('2019-05-12 22:37:18','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Jaime','Engracia','Boles','756 463 9878','ebolesc@bandcamp.com','ebolesc','EYzbEd8CWxa',to_timestamp('2018-03-09 00:18:45','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Urson',null,'Keford','248 423 8798','rkefordd@ning.com','mkefordd','ybSzERUTi',to_timestamp('2021-11-06 22:53:08','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Cate','Alvy','Spreag','519 442 5275','aspreage@aboutads.info','aspreage','gVIu511G',to_timestamp('2021-11-25 14:57:08','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Cary','Geordie','Burborough','426 720 7069','gburboroughf@google.ru','gburboroughf','2MA7Y1t',to_timestamp('2021-11-25 06:54:20','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Arel',null,'Grinnikov','579 653 2134','ggrinnikovg@flickr.com','lgrinnikovg','sqoU66',to_timestamp('2021-04-22 09:47:00','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Helsa','Quincey','Saddleton','634 381 0198','qsaddletonh@ask.com','qsaddletonh','2XbBrzpWYMO',to_timestamp('2018-11-22 21:19:45','YYYY-MM-DD HH24:MI:SS'));
Insert into  STORE_USERS (FIRST_NAME,MIDDLE_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,USERNAME,USER_PASSWORD,REGISTERED_AT) values ('Buiron','Melina','Wilds','121 459 7245','mwildsi@dagondesign.com','mwildsi','H9lKOFl4A',to_timestamp('2018-01-26 07:55:53','YYYY-MM-DD HH24:MI:SS'));

-- shopping_session table

Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('1',to_timestamp('2022-05-18 22:11:16,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-05-19 04:18:28,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('2',to_timestamp('2022-06-01 23:11:44,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-06-02 05:18:56,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('3',to_timestamp('2022-02-27 08:11:36,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-02-27 14:18:48,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('4',to_timestamp('2021-10-13 20:11:56,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2021-10-14 02:19:08,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('5',to_timestamp('2022-07-14 07:11:50,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-07-14 13:19:02,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('6',to_timestamp('2022-01-05 02:11:24,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-01-05 08:18:36,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('7',to_timestamp('2022-04-06 19:12:33,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-04-07 01:19:45,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('8',to_timestamp('2022-04-07 15:12:51,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-04-07 21:20:03,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('9',to_timestamp('2022-04-07 02:13:06,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-04-07 08:20:18,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('10',to_timestamp('2022-06-07 16:11:29,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-06-07 22:18:41,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('11',to_timestamp('2022-03-05 02:12:04,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-03-05 08:19:16,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('12',to_timestamp('2022-01-14 02:12:10,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-01-14 08:19:22,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('13',to_timestamp('2022-04-23 16:13:11,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-04-23 22:20:23,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('14',to_timestamp('2022-03-09 11:13:28,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-03-09 17:20:40,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('15',to_timestamp('2021-06-10 21:12:41,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2021-06-11 03:19:53,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('16',to_timestamp('2022-07-04 21:13:19,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-07-05 03:20:31,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('17',to_timestamp('2021-11-05 08:12:26,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2021-11-05 14:19:38,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('18',to_timestamp('2022-02-28 10:13:37,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-02-28 16:20:49,000000000','YYYY-MM-DD HH24:MI:SSXFF'));
Insert into  SHOPPING_SESSION (USER_ID,CREATED_AT,MODIFIED_AT) values ('19',to_timestamp('2022-04-19 18:12:15,000000000','YYYY-MM-DD HH24:MI:SSXFF'),to_timestamp('2022-04-20 00:19:27,000000000','YYYY-MM-DD HH24:MI:SSXFF'));

COMMIT;

-- product_categories table

insert into product_categories values (1, 'Computers, Laptops and Consoles');
insert into product_categories values (2, 'TV and Video');
insert into product_categories values (3, 'Headphones and Speakers');
insert into product_categories values (4, 'Smartphones and Smartwatches');
insert into product_categories values (5, 'Monitors');
insert into product_categories values (6, 'Computer parts');
insert into product_categories values (7, 'Keyboard and mouse');
insert into product_categories values (8, 'AGD');