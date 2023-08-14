create table wproduct(
	pname varchar2(40),
	price number(9),
	createAt date default sysdate,
	picture varchar2(50) -- 상품이미지 파일명
);

alter table wproduct modify picture varchar2(200);