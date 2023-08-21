/*모든 컬럼 조회하기
 * *: 모든, ALL*/

--SELECT * FROM EMPLOYEES e ;
/* 테이블 명을 작성할 때 정확하게 작성하려면 계정명을 작성하고
 * (.)을 써줘야 한다
 * (.)은 ~안에 있는 이라는 뜻이다
 */
--SELECT FIRST_NAME  FROM EMPLOYEES e;
/*SELECT FIRST_NAME  FROM EMPLOYEES e;*/
/*[실습]
직원의 성,이름,휴대전화번호, 이메일주소, 사원번호를 한번에 조회하기
단, 순서대로 조회되어야함*/
SELECT LAST_NAME, 
	FIRST_NAME,
	PHONE_NUMBER,
	EMAIL,
	EMPLOYEE_ID  
FROM EMPLOYEES e;
/*정렬해서 조회하기
 * ORDER BY*/
/*[오름차순 정렬]*/
/* 사원의 이름 성 봉급을 낮은 순서부터 조회하기*/
SELECT FIRST_NAME , LAST_NAME , SALARY 
FROM EMPLOYEES
ORDER BY SALARY ASC;
/*낮은 순서부터 조회는 낮은 값 ~ 높은 값 순서대로를 의미한다
 *오름차순은 영어로 ascending이다
 *앞글자 3개를 따서 asc로 사용한다*/
/*[내림사춘정렬]*/
SELECT FIRST_NAME , LAST_NAME , SALARY 
FROM EMPLOYEES
ORDER BY SALARY DESC ;
/*내림차순은 영어로descending 이다*/
/*날짜 정렬*/
/* 직원의 이름, 성, 봉급, 고용일을 고용일 순서대로 정렬해서 조회하기*/

SELECT FIRST_NAME , LAST_NAME , SALARY ,HIRE_DATE 
FROM EMPLOYEES
ORDER BY HIRE_DATE  ASC  ;
/*[문자정렬]*/
/*문자도 정렬이 가능하다*/
SELECT FIRST_NAME , LAST_NAME , SALARY ,HIRE_DATE 
FROM EMPLOYEES
ORDER BY FIRST_NAME  ASC  ;
/* [여러 개의 컬럼을 기준으로 정렬] */
SELECT FIRST_NAME , LAST_NAME , SALARY, HIRE_DATE
FROM EMPLOYEES 
ORDER BY SALARY ASC, HIRE_DATE DESC;

SELECT * FROM EMPLOYEES e ;

/* [중복제거] */
/* 회사에 존재하는 직무(JOB_ID) 조회하기 */
SELECT DISTINCT JOB_ID 
FROM EMPLOYEES e ;

/* 조회하는 컬럼이 모두 같은 행들만 중복 제거 */
SELECT DISTINCT JOB_ID, HIRE_DATE 
FROM EMPLOYEES e ;

SELECT DISTINCT JOB_ID, HIRE_DATE 
FROM EMPLOYEES e 
ORDER BY HIRE_DATE;

/* [별칭 : ALIAS] */
/* 직원의 이름, 성, 봉급, 사원번호 조회하기
 * 테이블 컬럼명을 별칭(별명)으로 설정하기 */
SELECT FIRST_NAME AS "이름", 
	LAST_NAME AS 성, 
	SALARY 봉급, 
	EMPLOYEE_ID "사원 번호"
FROM EMPLOYEES e;

/* AS 생략 가능 
 * 만일 별명에 띄어쓰기가 포함되어 있다면 "" 생략 불가능 */

SELECT FIRST_NAME AS "이름", 
	LAST_NAME AS 성, 
	SALARY 봉급, 
	EMPLOYEE_ID '사원 번호'
FROM EMPLOYEES e;

/* [실습]
 * 사원의 이름, 성, 봉급을 봉급 내림차순으로 정렬하여 조회하기
 * 별명 사용하기 */
SELECT FIRST_NAME 이름, 
	LAST_NAME 성, 
	SALARY 봉급
FROM EMPLOYEES E 
ORDER BY 봉급 ;