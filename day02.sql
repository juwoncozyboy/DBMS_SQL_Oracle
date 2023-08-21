/*��� �÷� ��ȸ�ϱ�
 * *: ���, ALL*/

--SELECT * FROM EMPLOYEES e ;
/* ���̺� ���� �ۼ��� �� ��Ȯ�ϰ� �ۼ��Ϸ��� �������� �ۼ��ϰ�
 * (.)�� ����� �Ѵ�
 * (.)�� ~�ȿ� �ִ� �̶�� ���̴�
 */
--SELECT FIRST_NAME  FROM EMPLOYEES e;
/*SELECT FIRST_NAME  FROM EMPLOYEES e;*/
/*[�ǽ�]
������ ��,�̸�,�޴���ȭ��ȣ, �̸����ּ�, �����ȣ�� �ѹ��� ��ȸ�ϱ�
��, ������� ��ȸ�Ǿ����*/
SELECT LAST_NAME, 
	FIRST_NAME,
	PHONE_NUMBER,
	EMAIL,
	EMPLOYEE_ID  
FROM EMPLOYEES e;
/*�����ؼ� ��ȸ�ϱ�
 * ORDER BY*/
/*[�������� ����]*/
/* ����� �̸� �� ������ ���� �������� ��ȸ�ϱ�*/
SELECT FIRST_NAME , LAST_NAME , SALARY 
FROM EMPLOYEES
ORDER BY SALARY ASC;
/*���� �������� ��ȸ�� ���� �� ~ ���� �� ������θ� �ǹ��Ѵ�
 *���������� ����� ascending�̴�
 *�ձ��� 3���� ���� asc�� ����Ѵ�*/
/*[������������]*/
SELECT FIRST_NAME , LAST_NAME , SALARY 
FROM EMPLOYEES
ORDER BY SALARY DESC ;
/*���������� �����descending �̴�*/
/*��¥ ����*/
/* ������ �̸�, ��, ����, ������� ����� ������� �����ؼ� ��ȸ�ϱ�*/

SELECT FIRST_NAME , LAST_NAME , SALARY ,HIRE_DATE 
FROM EMPLOYEES
ORDER BY HIRE_DATE  ASC  ;
/*[��������]*/
/*���ڵ� ������ �����ϴ�*/
SELECT FIRST_NAME , LAST_NAME , SALARY ,HIRE_DATE 
FROM EMPLOYEES
ORDER BY FIRST_NAME  ASC  ;
/* [���� ���� �÷��� �������� ����] */
SELECT FIRST_NAME , LAST_NAME , SALARY, HIRE_DATE
FROM EMPLOYEES 
ORDER BY SALARY ASC, HIRE_DATE DESC;

SELECT * FROM EMPLOYEES e ;

/* [�ߺ�����] */
/* ȸ�翡 �����ϴ� ����(JOB_ID) ��ȸ�ϱ� */
SELECT DISTINCT JOB_ID 
FROM EMPLOYEES e ;

/* ��ȸ�ϴ� �÷��� ��� ���� ��鸸 �ߺ� ���� */
SELECT DISTINCT JOB_ID, HIRE_DATE 
FROM EMPLOYEES e ;

SELECT DISTINCT JOB_ID, HIRE_DATE 
FROM EMPLOYEES e 
ORDER BY HIRE_DATE;

/* [��Ī : ALIAS] */
/* ������ �̸�, ��, ����, �����ȣ ��ȸ�ϱ�
 * ���̺� �÷����� ��Ī(����)���� �����ϱ� */
SELECT FIRST_NAME AS "�̸�", 
	LAST_NAME AS ��, 
	SALARY ����, 
	EMPLOYEE_ID "��� ��ȣ"
FROM EMPLOYEES e;

/* AS ���� ���� 
 * ���� ���� ���Ⱑ ���ԵǾ� �ִٸ� "" ���� �Ұ��� */

SELECT FIRST_NAME AS "�̸�", 
	LAST_NAME AS ��, 
	SALARY ����, 
	EMPLOYEE_ID '��� ��ȣ'
FROM EMPLOYEES e;

/* [�ǽ�]
 * ����� �̸�, ��, ������ ���� ������������ �����Ͽ� ��ȸ�ϱ�
 * ���� ����ϱ� */
SELECT FIRST_NAME �̸�, 
	LAST_NAME ��, 
	SALARY ����
FROM EMPLOYEES E 
ORDER BY ���� ;