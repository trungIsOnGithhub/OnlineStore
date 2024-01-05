set define off;

alter table employees disable constraint fk_department_id_tbl_employees;
alter table departments disable constraint fk_manager_id_tbl_departments;
alter table product disable constraint fk_discount_id_tbl_product;

-- departments table

insert into departments (department_name,manager_id,department_desc) values ('management','1','supervision of other departments');
insert into departments (department_name,manager_id,department_desc) values ('development','2','developing of the store''s website');
insert into departments (department_name,manager_id,department_desc) values ('purchase department','3','management of assortment purchases and stock replenishment');
insert into departments (department_name,manager_id,department_desc) values ('sales department','4','managing the sale of the assortment');

commit; 

-- employees table

insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('kenon',null,'andries',to_date('09/07/86 00:00:00','dd/mm/rr hh24:mi:ss'),'1',to_date('25/12/19 00:00:00','dd/mm/rr hh24:mi:ss'),'9300','279 266 4806','gandries0@google.de','779-22-3853',null);
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('brittney','leonidas','dimitriou',to_date('21/07/76 00:00:00','dd/mm/rr hh24:mi:ss'),'2',to_date('08/01/18 00:00:00','dd/mm/rr hh24:mi:ss'),'11800','604 235 4231','ldimitriou1@icio.us','825-48-6752','1');
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('elwin',null,'huckin',to_date('31/07/78 00:00:00','dd/mm/rr hh24:mi:ss'),'3',to_date('15/03/18 00:00:00','dd/mm/rr hh24:mi:ss'),'7400','997 567 5550','bhuckin2@thetimes.co.uk','797-73-9836','1');
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('tierney','elsinore','powis',to_date('10/02/87 00:00:00','dd/mm/rr hh24:mi:ss'),'4',to_date('13/11/18 00:00:00','dd/mm/rr hh24:mi:ss'),'3700','911 733 7882','epowis3@4shared.com','857-99-2873','1');
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('jone','lew','jirusek',to_date('03/11/75 00:00:00','dd/mm/rr hh24:mi:ss'),'2',to_date('04/08/18 00:00:00','dd/mm/rr hh24:mi:ss'),'7400','563 147 3132','ljirusek4@psu.edu','166-19-1878','2');
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('clarine',null,'calliss',to_date('10/09/91 00:00:00','dd/mm/rr hh24:mi:ss'),'2',to_date('30/03/20 00:00:00','dd/mm/rr hh24:mi:ss'),'4400','950 944 4973','mcalliss5@earthlink.net','520-28-8208','2');
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('edvard',null,'presho',to_date('18/08/88 00:00:00','dd/mm/rr hh24:mi:ss'),'3',to_date('18/12/21 00:00:00','dd/mm/rr hh24:mi:ss'),'5200','826 896 0204','hpresho6@nature.com','818-34-0837','3');
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('dyan','nico','craxford',to_date('31/07/91 00:00:00','dd/mm/rr hh24:mi:ss'),'3',to_date('02/03/18 00:00:00','dd/mm/rr hh24:mi:ss'),'3700','749 923 0075','ncraxford7@cisco.com','622-33-9476','3');
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('ansel','gordan','stanborough',to_date('15/10/88 00:00:00','dd/mm/rr hh24:mi:ss'),'4',to_date('20/04/19 00:00:00','dd/mm/rr hh24:mi:ss'),'11200','912 579 7826','gstanborough8@webs.com','810-49-5038','4');
insert into  employees (first_name,middle_name,last_name,date_of_birth,department_id,hire_date,salary,phone_number,email,ssn_number,manager_id) values ('eileen','farra','sowerbutts',to_date('06/07/72 00:00:00','dd/mm/rr hh24:mi:ss'),'4',to_date('26/03/18 00:00:00','dd/mm/rr hh24:mi:ss'),'8300','119 228 0037','fsowerbutts9@illinois.edu','373-17-6842','4');

commit;

-- addresses table

insert into addresses (line_1, line_2, city, zip_code, province, country) values ('18122 helena park', null, 'philadelphia', '19125', 'pennsylvania', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('60 arizona crossing', null, 'salem', '97312', 'oregon', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('3 bayside crossing', null, 'falls church', '22047', 'virginia', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('915 ryan road', null, 'salt lake city', '84105', 'utah', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('47 jenifer court', null, 'shreveport', '71105', 'louisiana', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('3864 corscot drive', null, 'amarillo', '79171', 'texas', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('1 lindbergh junction', null, 'erie', '16565', 'pennsylvania', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('18 ruskin hill', null, 'columbus', '43210', 'ohio', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('877 springview hill', null, 'chicago', '60657', 'illinois', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('517 fairview plaza', '7712', 'lincoln', '68524', 'nebraska', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('22 rockefeller parkway', null, 'olympia', '98506', 'washington', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('6418 elgar alley', '5', 'tampa', '33647', 'florida', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('17 hanover circle', null, 'los angeles', '90030', 'california', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('450 magdeline park', null, 'newport beach', '92662', 'california', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('37 merry way', null, 'racine', '53405', 'wisconsin', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('717 northridge center', null, 'seminole', '34642', 'florida', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('84013 north place', '1230', 'new york city', '10110', 'new york', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('886 becker street', null, 'brooklyn', '11205', 'new york', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('61 west center', null, 'lexington', '40591', 'kentucky', 'united states');
insert into addresses (line_1, line_2, city, zip_code, province, country) values ('3 sugar avenue', null, 'toledo', '43699', 'ohio', 'united states');

commit;

-- store_users table

insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('jody',null,'cabell','256 375 7831','ccabell0@cbslocal.com','ccabell0','webtnzfbuddw',to_timestamp('2019-08-15 17:25:56','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('obie','kristina','wyche','565 270 7798','kwyche1@un.org','kwyche1','spsffysmrfsi',to_timestamp('2019-01-05 14:35:29','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('harland','jeffie','monaghan','303 296 7661','jmonaghan2@sciencedaily.com','jmonaghan2','7yhupjf5ktj',to_timestamp('2021-10-19 22:00:02','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('elisha',null,'pelham','227 801 2408','epelham3@sfgate.com','hpelham3','sm3d0abl9tp',to_timestamp('2021-03-06 02:21:18','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('ileane',null,'dendle','563 933 9672','adendle4@nba.com','ldendle4','e2feansw2q',to_timestamp('2020-10-19 22:41:07','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('jere',null,'mcconville','976 967 1637','mmcconville5@usa.gov','jmcconville5','iydgzshwc3u',to_timestamp('2020-03-09 20:42:35','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('rosette',null,'kelly','668 596 4040','mkelly6@drupal.org','skelly6','9kab3ozwr',to_timestamp('2021-11-05 15:51:48','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('boone','cornela','kilby','354 862 1868','ckilby7@sitemeter.com','ckilby7','iptiroql',to_timestamp('2021-09-22 12:49:57','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('sara-ann','bernadine','brecon','414 469 2292','bbrecon8@ox.ac.uk','bbrecon8','rpbv7qw',to_timestamp('2018-07-01 12:16:41','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('bartlett','zahara','menco','650 868 9081','zmenco9@friendfeed.com','zmenco9','io2zz8q8',to_timestamp('2018-02-21 10:07:05','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('orly','sayre','bogeys','197 771 6322','sbogeysa@deviantart.com','sbogeysa','zwrasb',to_timestamp('2020-07-20 00:12:48','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('evonne','othella','warin','930 187 2285','owarinb@illinois.edu','owarinb','shg9gn0ji',to_timestamp('2019-05-12 22:37:18','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('jaime','engracia','boles','756 463 9878','ebolesc@bandcamp.com','ebolesc','eyzbed8cwxa',to_timestamp('2018-03-09 00:18:45','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('urson',null,'keford','248 423 8798','rkefordd@ning.com','mkefordd','ybszeruti',to_timestamp('2021-11-06 22:53:08','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('cate','alvy','spreag','519 442 5275','aspreage@aboutads.info','aspreage','gviu511g',to_timestamp('2021-11-25 14:57:08','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('cary','geordie','burborough','426 720 7069','gburboroughf@google.ru','gburboroughf','2ma7y1t',to_timestamp('2021-11-25 06:54:20','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('arel',null,'grinnikov','579 653 2134','ggrinnikovg@flickr.com','lgrinnikovg','sqou66',to_timestamp('2021-04-22 09:47:00','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('helsa','quincey','saddleton','634 381 0198','qsaddletonh@ask.com','qsaddletonh','2xbbrzpwymo',to_timestamp('2018-11-22 21:19:45','yyyy-mm-dd hh24:mi:ss'));
insert into  store_users (first_name,middle_name,last_name,phone_number,email,username,user_password,registered_at) values ('buiron','melina','wilds','121 459 7245','mwildsi@dagondesign.com','mwildsi','h9lkofl4a',to_timestamp('2018-01-26 07:55:53','yyyy-mm-dd hh24:mi:ss'));

-- shopping_session table

insert into  shopping_session (user_id,created_at,modified_at) values ('1',to_timestamp('2022-05-18 22:11:16,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-05-19 04:18:28,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('2',to_timestamp('2022-06-01 23:11:44,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-06-02 05:18:56,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('3',to_timestamp('2022-02-27 08:11:36,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-02-27 14:18:48,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('4',to_timestamp('2021-10-13 20:11:56,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2021-10-14 02:19:08,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('5',to_timestamp('2022-07-14 07:11:50,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-07-14 13:19:02,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('6',to_timestamp('2022-01-05 02:11:24,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-01-05 08:18:36,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('7',to_timestamp('2022-04-06 19:12:33,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-04-07 01:19:45,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('8',to_timestamp('2022-04-07 15:12:51,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-04-07 21:20:03,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('9',to_timestamp('2022-04-07 02:13:06,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-04-07 08:20:18,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('10',to_timestamp('2022-06-07 16:11:29,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-06-07 22:18:41,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('11',to_timestamp('2022-03-05 02:12:04,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-03-05 08:19:16,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('12',to_timestamp('2022-01-14 02:12:10,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-01-14 08:19:22,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('13',to_timestamp('2022-04-23 16:13:11,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-04-23 22:20:23,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('14',to_timestamp('2022-03-09 11:13:28,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-03-09 17:20:40,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('15',to_timestamp('2021-06-10 21:12:41,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2021-06-11 03:19:53,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('16',to_timestamp('2022-07-04 21:13:19,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-07-05 03:20:31,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('17',to_timestamp('2021-11-05 08:12:26,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2021-11-05 14:19:38,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('18',to_timestamp('2022-02-28 10:13:37,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-02-28 16:20:49,000000000','yyyy-mm-dd hh24:mi:ssxff'));
insert into  shopping_session (user_id,created_at,modified_at) values ('19',to_timestamp('2022-04-19 18:12:15,000000000','yyyy-mm-dd hh24:mi:ssxff'),to_timestamp('2022-04-20 00:19:27,000000000','yyyy-mm-dd hh24:mi:ssxff'));

commit;

-- product_categories table

insert into product_categories values (1, 'computers, laptops and consoles');
insert into product_categories values (2, 'tv and video');
insert into product_categories values (3, 'headphones and speakers');
insert into product_categories values (4, 'smartphones and smartwatches');
insert into product_categories values (5, 'monitors');
insert into product_categories values (6, 'computer parts');
insert into product_categories values (7, 'keyboard and mouse');
insert into product_categories values (8, 'agd');