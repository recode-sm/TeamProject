create database teamDB;
use teamDB;

-- 회원 DB(아이디,비밀번호,이름,폰번호,팀명,이메일,우편번호,주소,가입날짜)
-- 상세주소 추가
CREATE TABLE member(
id VARCHAR(20) primary key,
pass VARCHAR(20),
name VARCHAR(20),
phone VARCHAR(20),
email VARCHAR(40),
postcode VARCHAR(20),
address VARCHAR(40),
address2 VARCHAR(40),
date DATETIME 
);

-- 예약 DB (예약번호, 아이디, 구장번호, 시간, 예약날짜, 가격, 예약여부)
-- 결제가 완료되면 api에서 paid 값을 받아와서 사용
CREATE TABLE reservation(
r_num INT PRIMARY KEY auto_increment,
id VARCHAR(20),
f_num INT,
time VARCHAR(20),
r_date VARCHAR(20),
total_price INT,
status VARCHAR(20) default 'npaid',
foreign key (id) references member(id) ON DELETE CASCADE,
foreign key (f_num) references field(f_num) 
);

-- 구장 DB(구장번호,구장명,주소(구),상세주소,약관,사진,가격)
CREATE TABLE field(
f_num int primary key auto_increment,
f_name VARCHAR(40),
district VARCHAR(20),
f_address VARCHAR(40),
terms VARCHAR(1000),
f_img VARCHAR(100),
price int  
);

insert into field(f_name, district, f_address, terms, f_img, price) values ('맥도생태공원 축구','강서구','부산 강서구 대저2동 1200-32','이용약관','1.jpg',60000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('맥도생태공원 테니스','강서구','부산 강서구 대저2동 1200-32','이용약관','2.jpg',60000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('강서체육공원 하키보조경기장 축구','강서구','부산 강서구 체육공원로 43 (대저1동, 강서체육공원)','이용약관','3.jpg',50000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('명지다목적 인조잔디운동장 축구','강서구','강서구 명지오션시티10로80(명지동근린공원)','이용약관','4.jpg',20000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('화전공원 인조잔디운동장 축구','강서구','강서구 화전산단5로 84(화전공원)','이용약관','5.jpg',60000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('구덕운동장 배드민턴','서구','부산 서구 망양로 57 (서대신동3가, 구덕운동장)','이용약관','6.jpg',2000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('구덕운동장 풋살','서구','부산 서구 망양로 57 (서대신동3가, 구덕운동장)','이용약관','7.jpg',40000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('부산국민체육센터 농구','서구','부산광역시 서구 대신로 150 (서대신동3가)','이용약관','8.jpg',60000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('삼락생태공원 야구','북구','부산 사상구 삼락동 29-48','이용약관','9.jpg',60000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('화명생태공원 야구','북구','부산광역시 북구 덕천동','이용약관','10.jpg',60000);
insert into field(f_name, district, f_address, terms, f_img, price) values ('남구공원 축구','남구','부산광역시 남구 대연동','이용약관','10.jpg',60000);

-- 게시판 DB(게시판번호,작성자,제목,내용,조회수,글쓴날짜)
CREATE TABLE board(
b_num int primary key auto_increment,
id VARCHAR(20),
subject VARCHAR(40),
content VARCHAR(500),
readcount INT,
b_date datetime,
foreign key (id) references member(id) ON DELETE CASCADE
);

-- 댓글 DB(댓글번호,게시판번호,내용)
CREATE TABLE comment(
b_num int,
c_num int primary key auto_increment,
content VARCHAR(500),
id VARCHAR(20),
c_date datetime,
foreign key (b_num) references board(b_num) ON DELETE CASCADE,
foreign key (id) references member(id) ON DELETE CASCADE
);

-- Q&A 게시판 테이블
-- group_order -> 질문글과 해당 질문의 답변글을 동일한 그룹으로 묶기 위한 컬럼. 게시글 정렬에 필요
-- group_layer -> 답변글끼리의 순서에 필요(지금은 질문글 당 답변은 1개만 다는 것으로 함)  
-- ex) 질문글1 			q_num 1 / group_order 1 / group_layer 0
--     질문글1의 답변글 	q_num 2 / group_order 1 / group_layer -1
--     질문글2			q_num 3 / group_order 2 / group_layer 0
--     질문글2의 답변글		q_num 6 / group_order 2 / group_layer -1
--     질문글3			q_num 4 / group_order 3 / group_layer 0
--     질문글3의 답변글		q_num 5 / group_order 3 / group_layer -1
create table qna (
q_num int primary key auto_increment,
id varchar(20),
subject varchar(40),
content varchar(500),
readcount int,
q_date datetime,
group_order int default 0,
group_layer int default 0,
foreign key (id) references member(id) on delete cascade
);

-- 결제 (고유ID, 구장UID, 결제된금액, 예약번호, 결제일)
create table pay (
imp_uid varchar(20) primary key,
merchant_uid varchar(40),
paid_amount INT,
r_num INT,
p_date datetime,
foreign key (r_num) references reservation(r_num) ON DELETE CASCADE
);

-- 예약여부를 reservation 테이블에서 확인하는 걸로 변경 -> 현재 management 테이블은 사용하지 않음 
-- 일시관리 (관리번호,시간,예약여부,날짜,구장번호)
-- CREATE TABLE management(
-- t_num int primary key auto_increment,
-- time VARCHAR(20),
-- status INT,
-- date VARCHAR(30),
-- f_num INT,
-- foreign key (f_num) references field(f_num) ON DELETE CASCADE
-- );

 -- management table 입력 시 아래와 같은 형식으로 입력
 -- 날짜 -> 한글로 년 월 일 입력, 월과 일이 한자리 숫자일 경우 7, 8과 같이 앞에 0은 미기입.
 -- time -> 아래 예시와 같은 형식, 띄어쓰기 포함할 것
 -- status -> 예약여부를 확인하는 숫자, 0은 예약가능, 1은 예약불가
 -- 예시
insert into management(time, status, date) values ( '10:00 ~ 12:00', 1, '2022년7월18일');

insert into member(id, pass, name, date) values ('admin', 1111, '관리자', sysdate());


-- qna 테이블에서 fk에 cascade 제약 조건만 추가하려고 할때 아래의 구문 두 개를 실행하면 됨. 
-- alter table qna drop foreign key qna_ibfk_1;
-- alter table qna add constraint foreign key (id) references member(id) on delete cascade;