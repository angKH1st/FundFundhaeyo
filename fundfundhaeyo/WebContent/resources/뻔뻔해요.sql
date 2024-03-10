-- ���� ���� ����
-- CREATE USER FFHY IDENTIFIED BY FFHY;
-- GRANT CONNECT, RESOURCE TO FFHY;

---------------------- ���� ----------------------
DROP TABLE TB_DELIVERY;
DROP TABLE TB_ORDER;
DROP TABLE TB_FUNDING_OPTION;
DROP TABLE TB_REPLY;
DROP TABLE TB_PAYMENT;
DROP TABLE TB_SELLER;
DROP TABLE TB_BUYER;
DROP TABLE TB_ATTACHMENT;
DROP TABLE TB_LIKES;
DROP TABLE TB_REPORT;
DROP TABLE TB_CHAT;
DROP TABLE TB_PROJECT;
DROP TABLE TB_QNA;
DROP TABLE TB_RP_CATEGORY;
DROP TABLE TB_PJ_CATEGORY;
DROP TABLE TB_FAQ;
DROP TABLE TB_NOTICE;
DROP TABLE TB_ANNOUNCEMENT;
DROP TABLE TB_MEMBER;

DROP SEQUENCE SEQ_DELIVERY_NO;       -- ��� ��ȣ �߻� ������
DROP SEQUENCE SEQ_ORDER_NO;          -- �ֹ� ��ȣ �߻� ������
DROP SEQUENCE SEQ_OPTION_NO;         -- �ݵ� �ɼ� ��ȣ �߻� ������
DROP SEQUENCE SEQ_REPLY_NO;          -- ��� ��ȣ �߻� ������
DROP SEQUENCE SEQ_PAYMENT_NO;        -- ���� ��ȣ �߻� ������
DROP SEQUENCE SEQ_ATTACHMENT_NO;     -- ���� ��ȣ �߻� ������
DROP SEQUENCE SEQ_LIKES_NO;          -- ���ϱ� ��ȣ �߻� ������
DROP SEQUENCE SEQ_PROJECT_NO;        -- ������Ʈ ��ȣ �߻� ������
DROP SEQUENCE SEQ_USER_NO;           -- ȸ�� ��ȣ �߻� ������
DROP SEQUENCE SEQ_ANNOUNCEMENT_NO;   -- ���� ��ȣ �߻� ������
DROP SEQUENCE SEQ_NOTICE_NO;         -- �˸� ��ȣ �߻� ������
DROP SEQUENCE SEQ_FAQ_NO;            -- FAQ ��ȣ �߻� ������
DROP SEQUENCE SEQ_QNA_NO;            -- QNA ��ȣ �߻� ������
DROP SEQUENCE SEQ_CHAT_NO;           -- ä�� ��ȣ �߻� ������
DROP SEQUENCE SEQ_REPORT_NO;         -- �Ű� ��ȣ �߻� ������
--------------------------------------------------
----------------- MEMBER ���� ---------------------	
--------------------------------------------------
CREATE TABLE TB_MEMBER (
  USER_NO NUMBER CONSTRAINT USER_NO_PK PRIMARY KEY,               
  USER_ID VARCHAR2(30) CONSTRAINT USER_ID_NN CHECK (USER_ID IS NOT NULL),
  USER_PWD VARCHAR2(100) CONSTRAINT USER_PWD_NN NOT NULL,  
  USER_NAME VARCHAR2(15) CONSTRAINT USER_NAME_NN NOT NULL, 
  USER_SSN VARCHAR2(14) CONSTRAINT USER_SSN_NN NOT NULL,
  USER_NICKNAME VARCHAR2(100) CONSTRAINT USER_NICKNAME_NN NOT NULL,
  USER_PHONE VARCHAR2(13) CONSTRAINT USER_PHONE_NN NOT NULL,              
  USER_EMAIL VARCHAR2(100) CONSTRAINT USER_EMAIL_NN NOT NULL,            
  USER_ADDRESS VARCHAR2(100) CONSTRAINT USER_ADDRESS_NN NOT NULL,
  USER_PROFILE VARCHAR2(4000) DEFAULT '�ȳ��ϼ���',
  USER_GRADE NUMBER DEFAULT 1,
  USER_MARKETING VARCHAR2(1) DEFAULT 'N' CONSTRAINT USER_MARKETING_CK CHECK (USER_MARKETING IN('Y', 'N')),
  USER_ENROLL_DATE DATE DEFAULT SYSDATE,
  USER_MODIFY_DATE DATE DEFAULT SYSDATE,
  USER_TYPE VARCHAR2(1) DEFAULT 'U' CONSTRAINT USER_TYPE_CK CHECK (USER_TYPE IN('U', 'S')),
  USER_STATUS VARCHAR2(1) DEFAULT 'Y' CONSTRAINT USER_STATUS_CK CHECK (USER_STATUS IN('Y', 'A', 'B', 'N')),
  CONSTRAINT UID_UQ UNIQUE (USER_ID)
);

COMMENT ON COLUMN TB_MEMBER.USER_NO IS 'ȸ�� ��ȣ';
COMMENT ON COLUMN TB_MEMBER.USER_ID IS 'ȸ�� ���̵�';
COMMENT ON COLUMN TB_MEMBER.USER_PWD IS 'ȸ�� ��й�ȣ';
COMMENT ON COLUMN TB_MEMBER.USER_NAME IS 'ȸ�� �̸�';
COMMENT ON COLUMN TB_MEMBER.USER_SSN IS 'ȸ�� �ֹε�Ϲ�ȣ';
COMMENT ON COLUMN TB_MEMBER.USER_NICKNAME IS 'ȸ�� �г���';
COMMENT ON COLUMN TB_MEMBER.USER_PHONE IS 'ȸ�� ��ȭ��ȣ';
COMMENT ON COLUMN TB_MEMBER.USER_EMAIL IS 'ȸ�� �̸���';
COMMENT ON COLUMN TB_MEMBER.USER_ADDRESS IS 'ȸ�� �ּ�';
COMMENT ON COLUMN TB_MEMBER.USER_PROFILE IS 'ȸ�� �Ұ���';
COMMENT ON COLUMN TB_MEMBER.USER_GRADE IS 'ȸ�� ��� (1 : �Ϲ� / 2 : ���)';
COMMENT ON COLUMN TB_MEMBER.USER_MARKETING IS 'ȸ�� �����õ��ǿ��� (Y : ���� / N : �̵���)';
COMMENT ON COLUMN TB_MEMBER.USER_ENROLL_DATE IS 'ȸ�� ������';
COMMENT ON COLUMN TB_MEMBER.USER_MODIFY_DATE IS 'ȸ�� ����������';
COMMENT ON COLUMN TB_MEMBER.USER_TYPE IS 'ȸ�� ����(U : �Ϲ� / S : �Ҽ�)';
COMMENT ON COLUMN TB_MEMBER.USER_STATUS IS 'ȸ�� ���°� (Y : ����� / N : Ż�� / A : ������ / B : ������Ʈ)';

CREATE SEQUENCE SEQ_USER_NO
NOCACHE;

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'admin', '1234', '������', '950814-1234567', '������', '010-1234-5678', 'admin@kh.or.kr', '����� ������ ���ﵿ', '�������Դϴ�', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'A');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user01', 'pass01', '�ں���', '900212-232141', '��', '010-8460-1245', 'tt012@kh.or.kr', '����� ������ õȣ��', '���� �ʹ� �Ϳ�����', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user02', 'pass02', '����', '010101-2213456', '��', '010-0157-2354', 'win1@kh.or.kr', '����� ��õ�� ��', '�����', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user03', 'pass03', '������', '940215-2224131', '�Ľ�Ÿ', '010-1218-1884', 'lll010@kh.or.kr', '����� ������', '���� �Ľ�Ÿ �԰� �;��', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user04', 'pass04', '���', '010101-2141231', '������', '010-4747-4151', 'qw1eqw@kh.or.kr', '����� ���ϱ�', '������ ���Ժ��̿�', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user05', 'pass05', '�����', '930814-2212164', '����', '010-0977-6456', 'zv3b@kh.or.kr', '����� ������', '�۽��', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user06', 'pass06', 'ȫ�ν�', '881201-1227812', '�������', '010-6542-1815', 'mmf34@kh.or.kr', '����� ������', '�ȳ��ϼ���', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user07', 'pass07', '�赹��', '010511-1231214', '�Ϲ���', '010-6661-8142', 'dd1517@kh.or.kr', '����� ���ʱ� ���ʵ�', '������', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user08', 'pass08', '������', '050103-1112125', '����', '010-8842-7151', 'qeqw111@kh.or.kr', '����� ���ʱ� ���ʵ�', '�� ����', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user09', 'pass09', '�ֿ���', '931210-2262141', '�޷и�����', '010-8445-6456', 'mnmd2@kh.or.kr', '����� ������', '�� �´�', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user10', 'pass10', '���ֿ�', '870501-2223154', '���޴»��', '010-1234-8124', 'uqeqweq@kh.or.kr', '����� ������', '�� ���� �ʹ�', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user11', 'pass11', '����Ȳ', '990101-2141231', 'bj������', '010-4312-1917', 'ubbd2@kh.or.kr', '����� ������', '����Ŀ�', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user12', 'pass12', '���ȵ�', '030923-1231511', '������', '010-0123-6456', 'rewab@kh.or.kr', '����� ������', '��������', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user13', 'pass13', '������', '971012-1221811', 'û�������߾�︮��', '010-1234-6456', 'asee@kh.or.kr', '����� ������', '���ƾƾ�', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user14', 'pass14', '�̵���', '871108-2141231', '����', '010-1234-6456', 'usewer@kh.or.kr', '����� ������ ���ﵿ', '�� ��Ź�帳�ϴ�', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user15', 'pass15', '������', '950814-2234561', 'LovelyŴ', '010-3456-7890', 'urewim@kh.or.kr', '����� ������', '�ݰ����ϴ�, �������Դϴ�.', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user16', 'pass16', '�̹μ�', '671001-1234562', 'Handsomely', '010-4567-8901', 'user16lee@kh.or.kr', '��⵵ ������', '�ȳ��ϼ���, �̹μ��Դϴ�.', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user17', 'pass17', '�ں���', '000106-1234563', 'Sweet��', '010-5678-9012', 'uspark@kh.or.kr', '����� ���ʱ�', '�ں����Դϴ�. �� ��Ź�����!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user18', 'pass18', '������', '901203-2234564', 'Beautiful��', '010-6789-0123', 'ujeon@kh.or.kr', '�λ�� �ؿ�뱸', '�������Դϴ�. ������ �ݰ�����!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user19', 'pass19', '���߱�', '970518-1234565', 'Cool��', '010-7890-1234', 's19song@kh.or.kr', '�뱸�� �߱�', '�ȳ��ϼ���, ���߱��Դϴ�.', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user20', 'pass20', '����', '980113-2234566', 'Cute��', '010-8901-2345', 'zzzsuzy@kh.or.kr', '���ֽ� ����', '����¯�Դϴ�. �� ��Ź�帳�ϴ�!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user21', 'pass21', '���Ƹ�', '910901-2245789', 'Shine��', '010-9123-4567', 'user21yoon@kh.or.kr', '��õ�� �߱�', '���Ƹ��Դϴ�. �� ��Ź�帳�ϴ�!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user22', 'pass22', '���μ�', '821102-1356891', 'Bright��', '010-0234-5678', 'user22cho@kh.or.kr', '������ �߱�', '�ȳ��ϼ���, �μ��� ����մϴ�.', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user23', 'pass23', '��ȿ��', '031017-2467912', 'Lovely��', '010-1345-6789', 'user23han@kh.or.kr', '���� ����', '��ȿ���Դϴ�. ������ �ݰ�����!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user24', 'pass24', '��Һ�', '940316-2578123', 'Beautiful��', '010-2456-7890', 'user24ko@kh.or.kr', '���ϵ� ���׽�', '��� ��Ź�帳�ϴ�!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user25', 'pass25', '�ڽ���', '951211-1689234', 'Cool��', '010-3567-8901', 'user25park@kh.or.kr', '����ϵ� ���ֽ�', '�ݰ����ϴ�, Cool���Դϴ�.', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user26', 'pass26', '�豳��', '960517-2791345', 'Sweet��', '010-4678-9012', 'user26kim@kh.or.kr', '��󳲵� â����', '�豳���Դϴ�. ������ �ݰ�����!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user27', 'pass27', '������', '901204-2114631', 'Shine', '010-9108-5670', 'khyun27@kh.or.kr', '��⵵ ������', '�������Դϴ�. ������ �ݰ�����!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user28', 'pass28', '������', '970519-1212168', '�ۼۼ�', '010-1910-6781', 'shsong28@kh.or.kr', '�뱸�� ����', '�ȳ��ϼ���, �������Դϴ�.', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user29', 'pass29', '������', '980114-2201316', 'Cute����', '010-0061-7892', 'suzib29@kh.or.kr', '���ֽ� ����', '�������Դϴ�. �� ��Ź�帳�ϴ�!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user30', 'pass30', '���Ƹ�', '910902-2212570', 'Shine��', '010-7431-8903', 'yar30@kh.or.kr', '��õ�� ����', '���Ƹ��Դϴ�. �� ��Ź�帳�ϴ�!', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user31', 'pass31', '���ϸ�', '980114-2214176', '�˺���', '010-1314-7112', 'ang1515@kh.or.kr', '��⵵ ������', '���� ���� ����', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');

INSERT INTO TB_MEMBER
VALUES (SEQ_USER_NO.NEXTVAL, 'user32', 'pass32', '���Ͽ�', '870117-2211050', '����»��', '010-8171-0904', 'vest1013@kh.or.kr', '���ֽ� ����', 'ó�� �����߾��', 1, 'N', '2024-02-22', SYSDATE, DEFAULT, 'Y');
--------------------------------------------------
-------------- ANNOUNCEMENT ���� ------------------	
--------------------------------------------------
CREATE TABLE TB_ANNOUNCEMENT (
    ANNOUNCEMENT_NO NUMBER CONSTRAINT ANNOUNCEMENT_NO_PK PRIMARY KEY,
    ANNOUNCEMENT_TITLE VARCHAR2(100) CONSTRAINT ANNOUNCEMENT_TITLE_NN NOT NULL,
    ANNOUNCEMENT_CONTENT VARCHAR2(4000) CONSTRAINT ANNOUNCEMENT_CONTENT_NN NOT NULL,
    ANNOUNCEMENT_WRITER NUMBER CONSTRAINT ANNOUNCEMENT_WRITER_NN NOT NULL,
    ANNOUNCEMENT_COUNT NUMBER DEFAULT 0,
    ANNOUNCEMENT_CREATE_DATE DATE DEFAULT SYSDATE CONSTRAINT ANNOUNCEMENT_CREATE_DATE_NN NOT NULL,
    ANNOUNCEMENT_STATUS VARCHAR2(1) DEFAULT 'Y' CONSTRAINT ANNOUNCEMENT_STATUS_CK CHECK (ANNOUNCEMENT_STATUS IN('Y', 'N')),
    CONSTRAINT ANNOUNCEMENT_WRITER_FK FOREIGN KEY(ANNOUNCEMENT_WRITER) REFERENCES TB_MEMBER(USER_NO)
);

COMMENT ON COLUMN TB_ANNOUNCEMENT.ANNOUNCEMENT_NO IS '���� ��ȣ';
COMMENT ON COLUMN TB_ANNOUNCEMENT.ANNOUNCEMENT_TITLE IS '���� ����';
COMMENT ON COLUMN TB_ANNOUNCEMENT.ANNOUNCEMENT_CONTENT IS '���� ����';
COMMENT ON COLUMN TB_ANNOUNCEMENT.ANNOUNCEMENT_WRITER IS '���� �ۼ���ȸ����ȣ';
COMMENT ON COLUMN TB_ANNOUNCEMENT.ANNOUNCEMENT_COUNT IS '���� ��ȸ��';
COMMENT ON COLUMN TB_ANNOUNCEMENT.ANNOUNCEMENT_CREATE_DATE IS '���� �ۼ���';
COMMENT ON COLUMN TB_ANNOUNCEMENT.ANNOUNCEMENT_STATUS IS '���� ���°� (Y : �Խ� / N : ��Խ�)';

CREATE SEQUENCE SEQ_ANNOUNCEMENT_NO
NOCACHE;

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '����! �����ؿ�!', '�����ؿ�� ũ���� �ݵ�����Ʈ�� ���� �������� ã�ƺ˽��ϴ�.', 1, DEFAULT, '2024-02-22', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ������Ʈ: ��ǥ �ݾ� �޼��� �� ��¦ ��', '������Ʈ ������Ʈ: ��ǥ �ݾ� �޼��� �� ��¦ ��! �츮�� �̹� ��ǥ�� �� ��¦ �� �ٰ������ϴ�. ���� �츮�� ���� �̷�� ���� ������ �ºθ� �ϰ� �ֽ��ϴ�. ����ؼ� �Ŀ��� �ֽñ� �ٶ��ϴ�!', 1, DEFAULT, '2024-02-22', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '���� ���� �˸�: ������Ʈ �������� �� ���� �ʾҽ��ϴ�', '���� ���� �˸�: ������Ʈ �������� �� ���� �ʾҽ��ϴ�. �̹� ��ȸ�� ��ġ�� ������! ������Ʈ�� �Ŀ��Ͽ� �츮�� ��ǥ�� �޼��ϰ� ���� ������ �޾ƺ�����!', 1, DEFAULT, '2024-02-22', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�ָ�: �������� �����̳ʰ� ������ ������Ʈ ����', '�ָ�: �������� �����̳ʰ� ������ ������Ʈ�� �����մϴ�. ���� �ٷ� �Ŀ��ϰ� �������� �����̳��� ��ǰ�� ���� �����ϼ���!', 1, DEFAULT, '2024-02-23', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '��� ����: ��� ��Ȳ���� ���� ������Ʈ �Ͻ� �ߴ�', '��� ����: ��� ��Ȳ���� ���� ������Ʈ �Ͻ� �ߴ�. ������ ���� ������Ʈ ������ �Ͻ� �ߴ��ϰ� �Ǿ����ϴ�. ��� �Ŀ� �ٽ� ������Ʈ�� �帮�ڽ��ϴ�. ���� ��Ź�帳�ϴ�.', 1, DEFAULT, '2024-02-23', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�α� ������Ʈ �˸�: Ŀ�´�Ƽ�� �ָ��ϴ� ������Ʈ', '�α� ������Ʈ �˸�: Ŀ�´�Ƽ�� �ָ��ϴ� ������Ʈ�� ���� �ֽ��ϴ�! �� ���� �Ŀ��ڵ��� �츮 ������Ʈ�� ������ ���̰� �ֽ��ϴ�. ��ŵ� ���� �ٷ� �Ŀ��ϼ���!', 1, DEFAULT, '2024-02-23', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '���ο� ���� �߰�: �Ŀ��ڵ��� ���� Ư�� ����', '���ο� ���� �߰�: �Ŀ��ڵ��� ���� Ư�� ������ �߰��Ǿ����ϴ�. ���� �Ŀ��ϰ� Ư�� ������ �޾ƺ�����!', 1, DEFAULT, '2024-02-24', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������ ���� �ȳ�: ������Ʈ �Ⱓ�� ����Ǿ����ϴ�', '������ ���� �ȳ�: ������Ʈ �Ⱓ�� ����Ǿ����ϴ�. �߰� �Ⱓ ���� �Ŀ��� �����մϴ�. ��ȸ�� ��ġ�� ������!', 1, DEFAULT, '2024-02-24', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�̵�� �Ұ�: ������Ʈ�� ��п� �Ұ��Ǿ����ϴ�', '�̵�� �Ұ�: ������Ʈ�� ��п� �Ұ��Ǿ����ϴ�. �츮 ������Ʈ�� ���� ������ �������� �ֽ��ϴ�. �Բ� �Ŀ��ϰ� �� ���� ����鿡�� �˸�����!', 1, DEFAULT, '2024-02-25', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ���� �Ϸ�: �� �Ŀ��� ���۵˴ϴ�', '������Ʈ ���� �Ϸ�: �� �Ŀ��� ���۵˴ϴ�. �츮�� ������Ʈ�� �� ���۵� �����Դϴ�. �� �� ���� ������Ʈ�� �帮�ڽ��ϴ�. ����� �ּ���!', 1, DEFAULT, '2024-02-25', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ���� ����: ��ǥ �ݾ� �޼�!', '������Ʈ ���� ����: ��ǥ �ݾ��� �޼��Ͽ����ϴ�! �Ŀ��� ������ �ֽ� ��� �е鲲 ����帳�ϴ�. ������Ʈ�� ���������� �������Ǿ����ϴ�.', 1, DEFAULT, '2024-02-25', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, 'Ư�� �̺�Ʈ ����: �� ����� �Ŀ� �̺�Ʈ �ȳ�', 'Ư�� �̺�Ʈ ����: �� ����� �Ŀ� �̺�Ʈ�� ���� �ҽ��Դϴ�. �Բ� �����Ͽ� Ư�� ������ ��������!', 1, DEFAULT, '2024-02-26', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '���ο� ��Ʈ��Ī ��: �Ŀ��ڵ��� ���� �߰� ����', '���ο� ��Ʈ��Ī ��: �Ŀ��ڵ��� ���� �߰� ������ �߰��Ǿ����ϴ�. ���� �Ŀ��ϰ� �� ���� ������ �޾ƺ�����!', 1, DEFAULT, '2024-02-26', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '��ü �ݾ� �޼�: �ݵ� �������� ���� �λ�', '��ü �ݾ� �޼�: �ݵ� ��ǥ�� ���������� �޼��Ͽ����ϴ�! ��� �Ŀ��ڵ鲲 �������� ����帳�ϴ�.', 1, DEFAULT, '2024-02-26', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ���̺�: ���� �Ŀ��ϼ���!', '������Ʈ ���̺�: ���� ������Ʈ�� Ȱ��ȭ�Ǿ����ϴ�! ���� �ٷ� �Ŀ��ϼ���!', 1, DEFAULT, '2024-02-27', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ������Ʈ: ��ǥ �޼��� ���� �ֽ� �ҽ�', '������Ʈ ������Ʈ: ��ǥ �޼��� ���� �ֽ� �ҽ��� �����մϴ�. �츮�� ������Ʈ�� ����ؼ� �����ϰ� �ֽ��ϴ�. �Բ��� �ּż� �����մϴ�!', 1, DEFAULT, '2024-02-27', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '����� ����: �������� �ݵ��� ����帳�ϴ�', '����� ����: �������� �ݵ��� ������ �ּż� ����帳�ϴ�. �Բ� �ؼ� ���� �����մϴ�!', 1, DEFAULT, '2024-02-27', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ȫ��: �Ҽ� �̵�� ķ���� ����', '������Ʈ ȫ��: �Ҽ� �̵�� ķ������ ���۵Ǿ����ϴ�. �츮�� ������Ʈ�� �Ҽ� �̵��� �����Ͽ� �� ���� ����鿡�� �˷��ּ���!', 1, DEFAULT, '2024-02-27', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '��� ��Ȳ ����: �Ŀ��ڵ鿡�� �ȳ�', '��� ��Ȳ ����: �Ŀ��ڵ鿡�� �ȳ��մϴ�. ������ ���� ������Ʈ�� ���� �߿��� ������Ʈ�� �帳�ϴ�. �ڼ��� ������ ������ Ȯ���� �ּ���.', 1, DEFAULT, '2024-02-28', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, 'Ư�� �̺�Ʈ �˸�: ���� �Ⱓ ���� Ư�� ���� ����', 'Ư�� �̺�Ʈ �˸�: ���� �Ⱓ ���� Ư�� ������ �����˴ϴ�. ���� �ٷ� �Ŀ��ϰ� ������ ��������!', 1, DEFAULT, '2024-02-28', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '���ο� �Ŀ� ����: �ݵ��� ������ Ư�� ���� ��������', '���ο� �Ŀ� ����: �ݵ��� �����ϰ� Ư�� ������ �޾ƺ�����. �츮�� ������Ʈ�� �Ŀ��ϰ� Ư�� ������ ��������!', 1, DEFAULT, '2024-03-01', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������ �˸�: ��ġ�� ������!', '������ �˸�: �������� �� ���� �ʾҽ��ϴ�. ��ȸ�� ��ġ�� ������!', 1, DEFAULT, '2024-03-01', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '��ǥ �ݾ� �޼�: �̼� ����!', '��ǥ �ݾ��� �޼��߽��ϴ�! �������� ������ �Ŀ� ���п� �츮�� �̼��� ���������� �ϼ��Ǿ����ϴ�. �Բ��� ��� �е鲲 ���� ������ ������ ���մϴ�. ���� ������Ʈ�� ���� �ܰ迡 ������ �����Դϴ�. �����ε� �������� ���ɰ� ������ ��Ź�帳�ϴ�. �Բ� ���ּż� �����մϴ�!', 1, DEFAULT, '2024-03-01', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ����: ���� �ٷ� �Ŀ��ϼ���!', '������Ʈ�� ���̺�� ���µǾ����ϴ�! ���� �Ŀ��� �����ϴ� ���� �ٷ� �����Ͽ� ������Ʈ�� ������ ���� ������ ��������!', 1, DEFAULT, '2024-03-02', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '���� ������ ����: �߰� �Ⱓ ���� �Ŀ� ����', '���� �������� ����Ǿ����ϴ�! �߰� �Ⱓ ���� �Ŀ��� �����ϴ� ��ġ�� ������. ������Ʈ�� �����Ͽ� �츮�� ��ǥ�� �޼��� ������.', 1, DEFAULT, '2024-03-02', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�̴��� ��õ ������Ʈ: �ָ��� ���� ������Ʈ �Ұ�', '�̴��� ��õ ������Ʈ�� �Ұ��մϴ�! �� ������Ʈ�� �ָ��� ���� ��ġ�� ���̵� ���ϰ� �־� ��õ�ϴ� ������Ʈ�Դϴ�. �ڼ��� ������ ���������� Ȯ���ϼ���.', 1, DEFAULT, '2024-03-02', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������ ��ȸ: ������Ʈ �������� ��������� �ֽ��ϴ�', '������ ��ȸ�Դϴ�! ������Ʈ �������� ��������� �ֽ��ϴ�. �̹� ��ȸ�� ��ġ�� ���ð� ���� �ٷ� �Ŀ��Ͽ� ������Ʈ�� ������Ű����!', 1, DEFAULT, '2024-03-02', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�Ŀ��� ����: ������ �ּż� �����մϴ�', '�Ŀ��� �����в� ����帳�ϴ�! �������� ������ ���� ������Ʈ�� ������ �� ��¦ �� �ٰ����ϴ�. �������� ���ɰ� �Ŀ��� �������� ����帳�ϴ�.', 1, DEFAULT, '2024-03-03', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '��� ��Ȳ ������Ʈ: ���� ���� ���� �ذ�', '��� ��Ȳ�� ���� ������Ʈ�Դϴ�. ���� ���� ������ ���� �ذ�å�� ���� ���̸�, �ִ��� ���� ���� ���� ������ �ذ��ϵ��� ����ϰ� �ֽ��ϴ�. ���������� �ֽ��� �ּ���.', 1, DEFAULT, '2024-03-03', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ���� ��ȹ: �߰� ������Ʈ �� ���� ����', '������Ʈ�� ���� ��ȹ�� ���� ������Ʈ�Դϴ�. �߰����� ������Ʈ�� ���� ������ �غ� ���̴� ����� �ּ���. ������Ʈ�� ������ ���� ���Ӿ��� ����� ����̰ڽ��ϴ�.', 1, DEFAULT, '2024-03-03', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�̺�Ʈ ������ ����: �ݵ� ��翡 �����ϼ���!', '�̺�Ʈ �����ڸ� �����մϴ�! �ݵ� ��翡 �����ϰ� �پ��� ������ ��������. ������Ʈ�� ���� ���ɰ� ������ ����帳�ϴ�.', 1, DEFAULT, '2024-03-03', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������ ������Ʈ: ������Ʈ ������ �յΰ�', '������Ʈ�� ����Ǿ����ϴ�. �Ŀ��� �����մϴ�. ������Ʈ�� �����Ͽ� ������ �ֽ� ��� �е鲲 ������ ������ �帳�ϴ�.', 1, DEFAULT, '2024-03-03', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�ű� ������Ʈ �Ұ�: ��ġ�� ������!', '�ű� ������Ʈ�� �Ұ��մϴ�! ���� �ٷ� Ȯ���Ͽ� �Ŀ��� �����ϰ� Ư���� ������ ��������. ������Ʈ�� ������ ���� �������� ������ �ʿ��մϴ�.', 1, DEFAULT, '2024-03-04', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '��� �ݵ� ��û: ���� ������Ʈ ������ �ʿ��մϴ�', '����� �ݵ� ��û�Դϴ�! ���� ������Ʈ�� ���� ������ �ʿ��մϴ�. ������Ʈ�� ������ ���� �������� ������ �ʿ��մϴ�. ���� �ٷ� �Ŀ��Ͽ� �츮�� ��ǥ�� �޼��� �ּ���!', 1, DEFAULT, '2024-03-04', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������Ʈ ����: �ݵ� ��ǥ�� �޼��ϴ�', '������Ʈ�� ���������� �������Ǿ����ϴ�! �ݵ� ��ǥ�� �޼��� ���� �����մϴ�. �Ŀ��� �����Ͽ� ������ �ֽ� ��� �е鲲 ����帳�ϴ�.', 1, DEFAULT, '2024-03-04', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�ҽ���: �ݵ� �̺�Ʈ�� ���� �ֽ� �ҽ�', '�ݵ� �̺�Ʈ�� ���� �ֽ� �ҽ��� ���ص帳�ϴ�! ������Ʈ�� ���� ������Ʈ�� ��� ������ Ȯ���Ͽ� ������Ʈ�� ������ �ּ���. �������� ���ɰ� ������ ����帳�ϴ�.', 1, DEFAULT, '2024-03-04', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�Ŀ��� ����: �߰� ���� �� ���� �ȳ�', '�Ŀ��ڵ��� ���� �߰� ����� ������ �ȳ��մϴ�! ������Ʈ�� �Ŀ��Ͽ� Ư���� ������ ��������. �������� �Ŀ��� �������� ����帳�ϴ�.', 1, DEFAULT, '2024-03-05', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, 'Ư�� �̺�Ʈ ����: �Ŀ��ڸ� ���� �̺�Ʈ �ȳ�', 'Ư���� �̺�Ʈ�� �ȳ��մϴ�! �Ŀ��ڵ��� ���� Ư���� �̺�Ʈ�� �����ϼ���. ������Ʈ�� ������ ���� �������� ������ �ʿ��մϴ�.', 1, DEFAULT, '2024-03-05', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '�̿��� ���� ����: �Ŀ��� �ǰ߿� ���� ���� ����', '�̿��� ������ �����ϱ� ���� ����Դϴ�! �Ŀ��ڵ��� �ǰ��� �ݿ��Ͽ� ������Ʈ�� ���� �����ϰ��� �մϴ�. ���������� Ȯ���Ͽ� �ǰ��� ������ �ּ���.', 1, DEFAULT, '2024-03-05', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������ �ӹ�: ������ �Ŀ��ϼ���!', '������Ʈ �������� �ӹ��߽��ϴ�! ���� ������ �Ŀ��Ͽ� ������Ʈ�� ������ �����ּ���. ��ġ�� ������!', 1, DEFAULT, '2024-03-05', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '���� �˸�: ������ ��ȸ�� ��ġ�� ������!', '������ �˸��Դϴ�! ������ ��ȸ�� ��ġ�� ������. ���� �ٷ� �Ŀ��Ͽ� ������Ʈ�� �������� �̲�����!', 1, DEFAULT, '2024-03-06', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '��� ������Ʈ ������Ʈ: ���� �ذ� ��', '����� ������Ʈ ������Ʈ�Դϴ�. ���� ������ �ذ� �߿� �ֽ��ϴ�. ������ �ذ��ϱ� ���� �ּ��� ���ϰ� ������, ������ �ذ��� ���� ����ϰ� �ֽ��ϴ�.', 1, DEFAULT, '2024-03-06', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, 'Ư�� �̺�Ʈ ���� �ȳ�: ���� �Ⱓ ���� �����ϼ���!', '���� �Ⱓ ���� Ư���� �̺�Ʈ�� �����ϼ���! ������Ʈ�� ������ ���� �������� ������ �߿��մϴ�. �ڼ��� ������ ���������� Ȯ���ϼ���.', 1, DEFAULT, '2024-03-06', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '������ ����: �߰� �Ⱓ ���� �Ŀ� ����', '������Ʈ�� �������� ����Ǿ����ϴ�! �߰� �Ⱓ ���� �Ŀ��� �����ϴ� ���� �ٷ� �����Ͽ� ������Ʈ�� �������ּ���. ������Ʈ�� ������ ���� �������� ������ �ʿ��մϴ�.', 1, DEFAULT, '2024-03-06', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '��ȸ ���� ������Ʈ �Ұ�: ���� �Ŀ��ϼ���!', '��ȸ ���� ������Ʈ�� �Ұ��մϴ�! �̹� ������Ʈ�� ��ȸ�� ��ġ�� �����ϱ� ���� ����ϴ� ������Ʈ�Դϴ�. ���� �ٷ� �Ŀ��Ͽ� ��ȸ�� �⿩���ּ���. �Բ��ؿ�!', 1, DEFAULT, '2024-03-06', DEFAULT);

INSERT INTO TB_ANNOUNCEMENT
VALUES (SEQ_ANNOUNCEMENT_NO.NEXTVAL, '���ο� ������Ʈ ��ǥ: ���Ӱ����� ������ ��� ����', '�ȳ��ϼ��� �Ŀ��� ������! ���ο� ������Ʈ�� ��ǥ�մϴ�. �̹����� ���� ������ ������ ����� ���� �������� ���̵� �����ϰ��� �մϴ�. �ڼ��� ������ ������Ʈ ���������� Ȯ�����ּ���!', 1, DEFAULT, '2024-03-07', DEFAULT);
--------------------------------------------------
----------------- NOTICE �˸� ���� -----------------	
--------------------------------------------------
CREATE TABLE TB_NOTICE (
    NOTICE_NO NUMBER CONSTRAINT NOTICE_NO_PK PRIMARY KEY,
    NOTICE_TITLE VARCHAR2(100) CONSTRAINT NOTICE_TITLE_NN NOT NULL,
    NOTICE_CONTENT VARCHAR2(4000) CONSTRAINT NOTICE_CONTENT_NN NOT NULL,
    NOTICE_WRITER NUMBER CONSTRAINT NOTICE_WRITER_NN NOT NULL,
    NOTICE_CREATE_DATE DATE DEFAULT SYSDATE CONSTRAINT NOTICE_CREATE_DATE_NN NOT NULL,
    NOTICE_TYPE NUMBER DEFAULT 1 CONSTRAINT NOTICE_TYPE_CK CHECK (NOTICE_TYPE IN(1, 2, 3)),
    NOTICE_STATUS VARCHAR2(1) DEFAULT 'N' CONSTRAINT NOTICE_STATUS_CK CHECK (NOTICE_STATUS IN('Y', 'N')),
    NOTICE_RECEIVER_NO NUMBER,
    CONSTRAINT NOTICE_WRITER_FK FOREIGN KEY(NOTICE_WRITER) REFERENCES TB_MEMBER(USER_NO)
);

COMMENT ON COLUMN TB_NOTICE.NOTICE_NO IS '�˸� ��ȣ';
COMMENT ON COLUMN TB_NOTICE.NOTICE_TITLE IS '�˸� ����';
COMMENT ON COLUMN TB_NOTICE.NOTICE_CONTENT IS '�˸� ����';
COMMENT ON COLUMN TB_NOTICE.NOTICE_WRITER IS '�˸� �ۼ���ȸ����ȣ';
COMMENT ON COLUMN TB_NOTICE.NOTICE_CREATE_DATE IS '�˸� �ۼ���';
COMMENT ON COLUMN TB_NOTICE.NOTICE_TYPE IS '�˸� ���� (1 : �Ϲ� ���� / 2 : ������Ʈ �˸� / 3 : QNA �˸�)';
COMMENT ON COLUMN TB_NOTICE.NOTICE_STATUS IS '�˸� ���°� (Y : ���� / N : ������)';
COMMENT ON COLUMN TB_NOTICE.NOTICE_RECEIVER_NO IS '�˸� ������';

CREATE SEQUENCE SEQ_NOTICE_NO
NOCACHE;
--------------------------------------------------
----------------- FAQ �Խ��� ���� ------------------	
--------------------------------------------------
CREATE TABLE TB_FAQ (
    FAQ_NO NUMBER CONSTRAINT FAQ_NO_PK PRIMARY KEY,
    FAQ_TITLE VARCHAR2(100) CONSTRAINT FAQ_TITLE_NN NOT NULL,
    FAQ_CONTENT VARCHAR2(4000) CONSTRAINT FAQ_CONTENT_NN NOT NULL,
    FAQ_WRITER NUMBER CONSTRAINT FAQ_WRITER_NN NOT NULL,
    FAQ_COUNT NUMBER DEFAULT 0,
    FAQ_CREATE_DATE DATE DEFAULT SYSDATE CONSTRAINT FAQ_CREATE_DATE_NN NOT NULL,
    FAQ_MODIFY_DATE DATE DEFAULT SYSDATE,
    FAQ_STATUS VARCHAR2(1) DEFAULT 'Y' CONSTRAINT FAQ_STATUS_CK CHECK (FAQ_STATUS IN('Y', 'N')),
    CONSTRAINT FAQ_WRITER_FK FOREIGN KEY(FAQ_WRITER) REFERENCES TB_MEMBER(USER_NO)
);

COMMENT ON COLUMN TB_FAQ.FAQ_NO IS '���ֹ������� ��ȣ';
COMMENT ON COLUMN TB_FAQ.FAQ_TITLE IS '���ֹ������� ����';
COMMENT ON COLUMN TB_FAQ.FAQ_CONTENT IS '���ֹ������� ����';
COMMENT ON COLUMN TB_FAQ.FAQ_WRITER IS '���ֹ������� �ۼ���ȸ����ȣ';
COMMENT ON COLUMN TB_FAQ.FAQ_COUNT IS '���ֹ������� ��ȸ��';
COMMENT ON COLUMN TB_FAQ.FAQ_CREATE_DATE IS '���ֹ������� �ۼ���';
COMMENT ON COLUMN TB_FAQ.FAQ_MODIFY_DATE IS '���ֹ������� ������';
COMMENT ON COLUMN TB_FAQ.FAQ_STATUS IS '���ֹ������� ���°� (Y : �Խ� / N : ��Խ�)';

CREATE SEQUENCE SEQ_FAQ_NO
NOCACHE;

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, 'ù��° ���ֹ������� �����Դϴ�.', 'ù��° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '�ι�° ���ֹ������� �����Դϴ�.', '�ι�° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '����° ���ֹ������� �����Դϴ�.', '����° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '�׹�° ���ֹ������� �����Դϴ�.', '�׹�° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '�ټ���° ���ֹ������� �����Դϴ�.', '�ټ���° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '������° ���ֹ������� �����Դϴ�.', '������° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '�ϰ���° ���ֹ������� �����Դϴ�.', '�ϰ���° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '������° ���ֹ������� �����Դϴ�.', '������° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '��ȩ��° ���ֹ������� �����Դϴ�.', '��ȩ��° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);

INSERT INTO TB_FAQ
VALUES (SEQ_FAQ_NO.NEXTVAL, '����° ���ֹ������� �����Դϴ�.', '����° ���ֹ������� �����Դϴ�.', 1, DEFAULT, '2024-02-22', '2024-02-22', DEFAULT);
--------------------------------------------------
----------------- PJ_CATEGORY ���� ----------------	
--------------------------------------------------
CREATE TABLE TB_PJ_CATEGORY(
  PJ_CATEGORY_NO NUMBER CONSTRAINT PJ_CATEGORY_NO_PK PRIMARY KEY,
  PJ_CATEGORY_NAME VARCHAR2(30) CONSTRAINT PJ_CATEGORY_NAME_NN NOT NULL
);

COMMENT ON COLUMN TB_PJ_CATEGORY.PJ_CATEGORY_NO IS '�ݵ� ������Ʈ ī�װ� ��ȣ';
COMMENT ON COLUMN TB_PJ_CATEGORY.PJ_CATEGORY_NAME IS '�ݵ� ������Ʈ ī�װ� �̸�';

INSERT INTO TB_PJ_CATEGORY VALUES(10, '����');
INSERT INTO TB_PJ_CATEGORY VALUES(20, 'Ǫ��');
INSERT INTO TB_PJ_CATEGORY VALUES(30, '�������');
INSERT INTO TB_PJ_CATEGORY VALUES(40, 'ĳ����');
INSERT INTO TB_PJ_CATEGORY VALUES(50, '���');
INSERT INTO TB_PJ_CATEGORY VALUES(60, '����');
INSERT INTO TB_PJ_CATEGORY VALUES(70, '����');
INSERT INTO TB_PJ_CATEGORY VALUES(80, '�Ƿ�');
INSERT INTO TB_PJ_CATEGORY VALUES(90, '����');
INSERT INTO TB_PJ_CATEGORY VALUES(100, '����');
INSERT INTO TB_PJ_CATEGORY VALUES(110, '��ȭ');
INSERT INTO TB_PJ_CATEGORY VALUES(120, '����');
INSERT INTO TB_PJ_CATEGORY VALUES(130, '�ݷ�����');
INSERT INTO TB_PJ_CATEGORY VALUES(140, '�־�');
INSERT INTO TB_PJ_CATEGORY VALUES(150, '����');
INSERT INTO TB_PJ_CATEGORY VALUES(160, '������');
INSERT INTO TB_PJ_CATEGORY VALUES(170, '�м�');
INSERT INTO TB_PJ_CATEGORY VALUES(180, 'Ű��');
INSERT INTO TB_PJ_CATEGORY VALUES(190, '����');
INSERT INTO TB_PJ_CATEGORY VALUES(200, '��Ÿ');
--------------------------------------------------
----------------- RP_CATEGORY ���� ----------------	
--------------------------------------------------
CREATE TABLE TB_RP_CATEGORY(
  RP_CATEGORY_NO NUMBER CONSTRAINT RP_CATEGORY_NO_RP PRIMARY KEY,
  RP_CATEGORY_NAME VARCHAR2(100) CONSTRAINT RP_CATEGORY_NAME_NN NOT NULL
);

COMMENT ON COLUMN TB_RP_CATEGORY.RP_CATEGORY_NO IS '�ݵ� ������Ʈ ī�װ� ��ȣ';
COMMENT ON COLUMN TB_RP_CATEGORY.RP_CATEGORY_NAME IS '�ݵ� ������Ʈ ī�װ� �̸�';

INSERT INTO TB_RP_CATEGORY VALUES(1, '����ȫ��/������Դϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(2, '�������Դϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(3, '�ҹ������� �����ϰ� �ֽ��ϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(4, 'û�ҳ⿡�� ������ �����Դϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(5, '�弳/������/����/������ ǥ���Դϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(6, '�������� ���� �Խù��Դϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(7, '������ ǥ���� �ֽ��ϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(8, '���Ѽ� �Ǵ� ���۱��� ħ�صǾ����ϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(9, '�ҹ��Կ������� ���ԵǾ� �ֽ��ϴ�.');
INSERT INTO TB_RP_CATEGORY VALUES(10, '��Ÿ');
--------------------------------------------------
----------------- QNA �Խ��� ���� ------------------	
--------------------------------------------------
CREATE TABLE TB_QNA(
    QNA_NO NUMBER CONSTRAINT QNA_NO_PK PRIMARY KEY,
    QNA_TYPE NUMBER DEFAULT 1 CONSTRAINT QNA_TYPE_CK CHECK(QNA_TYPE IN(1, 2)),
    QNA_WRITER NUMBER CONSTRAINT QNA_WRITER_NN NOT NULL,
    QNA_TITLE VARCHAR2(100) CONSTRAINT QNA_TITLE_NN NOT NULL,
    QNA_CONTENT VARCHAR2(4000) CONSTRAINT QNA_CONTENT_NN NOT NULL,
    QNA_COUNT NUMBER DEFAULT 0,
    QNA_CREATE_DATE DATE DEFAULT SYSDATE CONSTRAINT QNA_CREATE_DATE_NN NOT NULL,
    QNA_MODIFY_DATE DATE DEFAULT SYSDATE,
    QNA_ANSWER_STATUS VARCHAR2(1) DEFAULT 'N' CONSTRAINT QNA_ANSWER_STATUS_CK CHECK(QNA_ANSWER_STATUS IN('Y', 'N')),
    QNA_STATUS VARCHAR2(1) DEFAULT 'Y' CONSTRAINT QNA_STATUS_CK CHECK(QNA_STATUS IN('Y', 'N')),
    CONSTRAINT QNA_WRITER_FK FOREIGN KEY (QNA_WRITER) REFERENCES TB_MEMBER(USER_NO)
);

COMMENT ON COLUMN TB_QNA.QNA_NO IS 'QNA ��ȣ';
COMMENT ON COLUMN TB_QNA.QNA_WRITER IS 'QNA �ۼ���ȸ����ȣ';
COMMENT ON COLUMN TB_QNA.QNA_TYPE IS 'QNA Ÿ�� (1 : �Ϲ� / 2 : ����)';
COMMENT ON COLUMN TB_QNA.QNA_TITLE IS 'QNA ����';
COMMENT ON COLUMN TB_QNA.QNA_CONTENT IS 'QNA ����';
COMMENT ON COLUMN TB_QNA.QNA_COUNT IS 'QNA ��ȸ��';
COMMENT ON COLUMN TB_QNA.QNA_CREATE_DATE IS 'QNA �ۼ���';
COMMENT ON COLUMN TB_QNA.QNA_MODIFY_DATE IS 'QNA ������';
COMMENT ON COLUMN TB_QNA.QNA_ANSWER_STATUS IS 'QNA �亯 ���°�';
COMMENT ON COLUMN TB_QNA.QNA_STATUS IS 'QNA ���°� (Y : �Խ� / N : ��Խ�)';

CREATE SEQUENCE SEQ_QNA_NO
NOCACHE;

INSERT INTO TB_QNA(QNA_NO, QNA_TYPE, QNA_WRITER, QNA_TITLE, QNA_CONTENT, QNA_CREATE_DATE, QNA_ANSWER_STATUS, QNA_STATUS) 
VALUES(SEQ_QNA_NO.NEXTVAL, 1, 2, '������Ʈ�� ���� ����', '���� ������ �˷��ֽ� �� �ֳ���?', '2024-02-22', 'N', 'Y');

INSERT INTO TB_QNA(QNA_NO, QNA_TYPE, QNA_WRITER, QNA_TITLE, QNA_CONTENT, QNA_CREATE_DATE, QNA_ANSWER_STATUS, QNA_STATUS) 
VALUES(SEQ_QNA_NO.NEXTVAL, 1, 2, '������Ʈ �Ŀ� ��� ����', '�Ŀ� ����� ���� �ڼ��� �������ֽ� �� �ֳ���?', '2024-02-23', 'N', 'Y');

INSERT INTO TB_QNA(QNA_NO, QNA_TYPE, QNA_WRITER, QNA_TITLE, QNA_CONTENT, QNA_CREATE_DATE, QNA_ANSWER_STATUS, QNA_STATUS) 
VALUES(SEQ_QNA_NO.NEXTVAL, 1, 4, '������Ʈ ���� ��Ȳ ����', '���� ��Ȳ�� ���� ������Ʈ ���ֽ� �� �ֳ���?', '2024-02-24', 'N', 'Y');

INSERT INTO TB_QNA(QNA_NO, QNA_TYPE, QNA_WRITER, QNA_TITLE, QNA_CONTENT, QNA_CREATE_DATE, QNA_ANSWER_STATUS, QNA_STATUS) 
VALUES(SEQ_QNA_NO.NEXTVAL, 1, 3, '�Ŀ��� ������Ʈ�� ���� ��� ���� ����', '���� ��� ������ ���� �˷��ֽ� �� �ֳ���?', '2024-02-25', 'N', 'Y');

INSERT INTO TB_QNA(QNA_NO, QNA_TYPE, QNA_WRITER, QNA_TITLE, QNA_CONTENT, QNA_CREATE_DATE, QNA_ANSWER_STATUS, QNA_STATUS) 
VALUES(SEQ_QNA_NO.NEXTVAL, 1, 2, '������Ʈ�� ���� �� �ڼ��� �˰� �ͽ��ϴ�', '�߰� ������ �������ֽ� �� �ֳ���?', '2024-02-26', 'N', 'Y');
--------------------------------------------------
----------------- PROJECT ���� --------------------	
--------------------------------------------------
CREATE TABLE TB_PROJECT (
    PROJECT_NO NUMBER CONSTRAINT PROJECT_NO_PK PRIMARY KEY,
    PROJECT_SELLER NUMBER CONSTRAINT PROJECT_SELLER_NN NOT NULL,
    PROJECT_CATEGORY_NO NUMBER CONSTRAINT PROJECT_CATEGORY_NO_NN NOT NULL,
    PROJECT_OVERVIEW VARCHAR2(500) CONSTRAINT PROJECT_OVERVIEW_NN NOT NULL,
    PROJECT_TITLE VARCHAR2(100) CONSTRAINT PROJECT_TITLE_NN NOT NULL,
    PROJECT_CONTENT VARCHAR2(4000) CONSTRAINT PROJECT_CONTENT_NN NOT NULL,
    PROJECT_TAG VARCHAR2(50) CONSTRAINT PROJECT_TAG_NN NOT NULL,
    PROJECT_PRICE NUMBER CONSTRAINT PROJECT_PRICE_NN NOT NULL,
    PROJECT_START DATE CONSTRAINT PROJECT_START_NN NOT NULL,
    PROJECT_END DATE CONSTRAINT PROJECT_END_NN NOT NULL,
    PROJECT_PAYMENT_BUYER DATE CONSTRAINT PROJECT_PAYMENT_BUYER_NN NOT NULL,
    PROJECT_PAYMENT_SELLER DATE CONSTRAINT PROJECT_PAYMENT_SELLER_NN NOT NULL,
    PROJECT_STATUS VARCHAR2(1) DEFAULT 'N' CONSTRAINT PROJECT_STATUS_CK CHECK(PROJECT_STATUS IN('Y', 'N', 'B', 'E')),
    CONSTRAINT PROJECT_SELLER_FK FOREIGN KEY (PROJECT_SELLER) REFERENCES TB_MEMBER(USER_NO),
    CONSTRAINT PROJECT_CATEGORY_NO_FK FOREIGN KEY (PROJECT_CATEGORY_NO) REFERENCES TB_PJ_CATEGORY(PJ_CATEGORY_NO)
);

COMMENT ON COLUMN TB_PROJECT.PROJECT_NO IS '�ݵ� ������Ʈ ��ȣ';
COMMENT ON COLUMN TB_PROJECT.PROJECT_SELLER IS '�ݵ� ������Ʈ â����ȸ����ȣ';
COMMENT ON COLUMN TB_PROJECT.PROJECT_CATEGORY_NO IS '�ݵ� ������Ʈ ī�װ�';
COMMENT ON COLUMN TB_PROJECT.PROJECT_OVERVIEW IS '�ݵ� ������Ʈ ��� ����';
COMMENT ON COLUMN TB_PROJECT.PROJECT_TITLE IS '�ݵ� ������Ʈ ����';
COMMENT ON COLUMN TB_PROJECT.PROJECT_CONTENT IS '�ݵ� ������Ʈ ����';
COMMENT ON COLUMN TB_PROJECT.PROJECT_TAG IS '�ݵ� ������Ʈ �±�';
COMMENT ON COLUMN TB_PROJECT.PROJECT_PRICE IS '�ݵ� ������Ʈ ��ǥ�ݾ�';
COMMENT ON COLUMN TB_PROJECT.PROJECT_START IS '�ݵ� ������Ʈ ������';
COMMENT ON COLUMN TB_PROJECT.PROJECT_END IS '�ݵ� ������Ʈ ������';
COMMENT ON COLUMN TB_PROJECT.PROJECT_PAYMENT_BUYER IS '�ݵ� ������Ʈ �Ŀ��ڰ�������';
COMMENT ON COLUMN TB_PROJECT.PROJECT_PAYMENT_SELLER IS '�ݵ� ������Ʈ â����������';
COMMENT ON COLUMN TB_PROJECT.PROJECT_STATUS IS '�ݵ� ������Ʈ ���°� (Y : �Խ� / N : ��Խ� / B : �ݷ� / E : ����)';

CREATE SEQUENCE SEQ_PROJECT_NO
START WITH 1000
NOCACHE;

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 2, 20, '���� �� �ϳ����� ���ô� Ǫ��', 'Ǫ���� ���� �� �ִ�?', '���� ���� ���ô� Ǫ���� �����Ͽ����ϴ�. �� �̻� �� ���� ���� ���ſ�', '#���ô� Ǫ��', 100000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'B');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 3, 30, '�߾��� ��ġ��', '�����̷� ������ �ȴ�', '��������� ��ġ��, �� �̻� �� ���̰� �ƴϿ���', '#��ġ��', 200000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'B');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 140, '�޸���� ����̴�', '�������� ���� ����', '�Ӹ����� �����Ÿ��� �ݷ��� ������ �ܵ� ����', '#�Ϳ��� ������', 300000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'B');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 140, '�ڽ��ΰ� ��ī�ΰ�', '�̷����� ����� ����', '�׺� �ݷ��� ������ �ܵ� ����', '#�׺� ������', 5000000, '2024-02-22', '2024-03-07', '2024-03-14', '2024-04-21', 'E');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 140, '�޸���� ����̴�', '�������� ���� ����', '�Ӹ����� �����Ÿ��� �ݷ��� ������ �ܵ� ����', '#�Ϳ��� ������', 300000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'B');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 2, 20, '���� �� �ϳ����� ���ô� Ǫ��', 'Ǫ���� ���� �� �ִ�?', '���� ���� ���ô� Ǫ���� �����Ͽ����ϴ�. �� �̻� �� ���� ���� ���ſ�', '#���ô� Ǫ��', 1000000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 3, 30, '�߾��� ��ġ��', '�����̷� ������ �ȴ�', '��������� ��ġ��, �� �̻� �� ���̰� �ƴϿ���', '#��ġ��', 2000000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 140, '�޸���� ����̴�', '�������� ���� ����', '�Ӹ����� �����Ÿ��� �ݷ��� ������ �ܵ� ����', '#�Ϳ��� ������', 3000000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 5, 50, '���� ���?', '������� ��� ���', '������ ������ ������ õ�� ���', '#õ�� ���', 4000000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 6, 60, '�ȷ�Ȩ��', '�ȷ�Ȩ�� �ϴ��', '�װ� ��ƿ� �λ��� �ñ��ϴٸ�?', '#�ȷ�Ȩ��', 5000000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 7, 70, '�߾��� �̼��� ����', '7�� ������������ �Ǹ� �̼��� ����', '�� ������ �ñ��ϽŰ���?', '#�̼��� ����', 6000000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 8, 20, '�������� ���� ��¥ ī�̸�' , '���� �״�� ��¥ ī�̸�', '��ó�� ��������� ���� �� ���ϰ� ���� ��', '#ī�̸�', 500000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 9, 20, '�����ó�� ���ϰ� �ٴ��� �׸����Ʈ' , '������ΰ� �׸����Ʈ�ΰ�', '�Ÿ��� ���̰�, �ܸ��� ���� �ش�ȭ �߽��ϴ�.', '#�׸����Ʈ', 600000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 10, 20, '170�ð� ������ ���� ���� ��� �Դ� ���ݸ�' , '170�ð� �������� ���� ���ݸ�', 'Bean to Bar ������ ���� ����', '#���ݸ�', 700000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 2, 20, 'ȭ��Ʈ���� ��Ű �ڽ�' , 'ȭ��Ʈ���� ��Ű �ڽ�', '���Ϳ� ���ݷ����� ��ĥ �� �ִ� ��������� ��Ű�ڽ�', '#��Ű', 800000, '2024-02-22', '2024-03-24', '2024-03-31', '2024-04-07', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 3, 20, '���� ���� ���� õ������' , 'õ������, ���ֲɲ�', '���� ��Ÿ�ΰ� õ�� ����� ǳ���մϴ�.', '#õ������', 10000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 40, 'ǫ��ǫ�� �ܽ��� Ű��' , 'ǫ���̵� ����Ű��', 'ǫ���� �����鼭 �����ϼ���', '#���� Ű��', 800000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 5, 40, '�����˵� �������' , '�����˵� �������', '�ϻ󿡼� �Բ� �ϴ� �����˵� �������', '#ĳ���� ����', 700000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 6, 50, '������ �� �� ���� �쳿��' , '�ŷ��� ��� ��ư �����', '����ϰ�, �������� ���� ������ ���', '#��ư��', 600000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 7, 50, '�ϻ� �ӿ��� ������ ������ �ϰ��� �ô� �� ����' , '�ñ��� ����, ��', '�Ŀ������ �����ϰ� �ε巯�� ������ ��', '#�Ŀ������', 400000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 8, 50, '�θǽ� ��Ÿ�� ������ ��' , '����� �Ѹ��� �Ͼ�� ���� Ȳ��?', '������ ��н����� ����� �������� ���', '#�ö����', 300000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 9, 50, '���̽�ũ�� ���� �������� �Ѹ���' , 'ȭ���� ���̽�ũ�� ���', '���� �ƴ϶� �����ε� ���� �ٴҶ� ���', '#�ٴҶ���', 500000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 10, 50, '�����ϰ� ������ ��絵 ������ ���' , '������ �ѵ��ʰ�! ���� ��ܿ�', '���θӽ����� �׷��� �����Ų�� ���� ������ ���', '#����Ƽ��', 600000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 2, 50, '���Ͼ� �鵵�� ���Ƴ������� ���' , '���� ����� �� ���, �鵵 �ƻ�', '���������� ���� �ڿ������� ������ ����', '#����Ƽ��', 300000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 3, 70, '�к��� ���� ����� Ű���' , '�������簡 �Ǿ�� <�߿�Ȩ>', '���ǿ��� ����̸� �� Ű��ºе��� ����', '#���������', 600000, '2024-02-23', '2024-03-25', '2024-04-01', '2024-04-08', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 70, '���� �����Ǹ� ã�� ������ ģ���� �丮�ϴ� ����' , '�������� �丮 ���ش�? <�������� ��з�����>', '�Ҿƹ����� ������ �ް� ������ �̰���?', '#�丮����', 500000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 5, 70, 'AI������ ȣ������ �÷� �����غ���' , '����� ������ �� AI ����', 'ȣ������ �÷� ��ǥ�� �޼��غ���!', '#AI', 800000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 6, 70, '��𼭵� ���� ���� ��Ż�����' , 'ù��° ���Ǽҵ� <�Ǹ�>', '�繫������ ���̴� ���� ���α׷��� �̿��� ��Ż�����', '#������Ż��', 300000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 7, 70, 'ī�常 ������ �� �� �ִ� ��Ż�����' , 'ī�� �αٵα� �θǽ�', 'ī�� ê�� ����� Ȱ���� ���� �ùķ��̼� ����', '#ī�����', 500000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 8, 80, '��� ���ɴ��� ������� �Բ� ���� �� �ִ� �߸���' , '�����Ҹ� ���� ��� ���� �߸���', '�ٰ��� ���� ���� ���ϰ� ���� �߸���', '#�߸���', 400000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 9, 80, '��� ���� Ŭ���� Ƽ����' , '�������Ŭ�� Ƽ������ �Բ��ϴ� ���ִ� ����', '����� �����ϴ� �״�, ���������� �� ���� �����ּ���', '#�������', 700000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 10, 80, '���۳��� ��Ƽ�� ���� �׸� ������Ƽ' , '���������', '������ ���� ���� ��Ƽ', '#������', 700000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 2, 80, '�ӿʰ��� ���� Ʈ��ũ ��Ƽ' , '�ӿʰ��� ���� �ӿ�, Ʈ��ũ ��Ƽ', '����濡�� ���Ǵ� ���� Ʈ��ũ ��Ƽ�� �Ծ �ǰ�', '#�������', 400000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 3, 80, '������ ���귮 5% ��ǰ��� ���� ĳ�ù̾� ��Ʈ' , 'ĳ�ù̾� ����Ʈ', '�� �ܿ￡�� �� ��Ʈ �ϳ��� ��', '#ĳ�ù̾�', 900000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 80, '�ܿ� ���� ����� �𿩶� ���� ����Ʈ Ŭ��' , '����Ŭ Ƽ����', '������ ���� ���ҿ� �ܿ��� �Ⱦ��ϴ� ������ �Ȱ� ����', '#�ܿ�Ⱦ�', 300000, '2024-02-24', '2024-03-26', '2024-04-02', '2024-04-09', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 5, 90, '���������� ������ �����ֱ���' , '��ǥ���� �̰迡�� ��������ϴ� 1~2��', '���������� ������ �����ֱ��� ���� ���� ������', '#���', 500000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 6, 90, 'N�� �α� ���� <������ ù������ �������ȴ�> ���ົ' , 'N������<������ ù������ �������ȴ�> ���ົ 4~6��', '���� �ϰ���� ���� ���ົ 4~6��', '#�θǽ���Ÿ��', 800000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 7, 90, '������ ��ȭ�� ��ȭ�� �������' , '��Ÿ�� �ٺ�, ���� ������ ��ȭ ��ȭ 1��', '���� ����� �� �ٺ� ������ ��ȭ ��ȭ ����', '#��ȭ', 300000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 8, 90, '20���⸦ ��ư��� x������ ������ ������' , '���� �̾߱�', '������ ������ �����⸦ �׸� ������', '#������', 100000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 9, 90, '�ν�Ÿ�� ���� <������ ����>' , '���� �˱� ���� <������ ����>', '���� �˱� ���� ENFP ��¥�� ���ϴ�', '#MBTI', 400000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 10, 90, 'ù° �ޱ����� ����ϴ� �ϻ�/������' , 'ù°�� ��! �� �ڸ��� ù° <�ޱ��ޱ� �����ϱ�>', '�̷��в� ��õ�����! ù°�̽� ��', '#�ϻ���', 200000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 2, 90, '���� �����ҳ���� ��ġ�� ¥���� �׼�Ȱ��' , '�����ҳ� ��������̵� ���ົ ���� ����', '������ ���ົ, Ư�� ȭ���� �� ����', '#������', 900000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 3, 100, '���ϰ�, �����ϰ� ���� ���� ������' , '�������� �����̾� ���� ���� ������', 'Į��, ����, ���͸� ���׷��̵�', '#��������', 300000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 100, '�����԰� �Ϳ����� ���ÿ�' , 'ġ�� ����� ���� �������͸�', '�Ϳ��� �ǿ뼺�� ���� ��ǰ', '#�������͸�', 300000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 5, 100, 'Ʈ������ ������� ���� �ȶ��� ������' , '���� �� �� �ִ� ���߷� ������', '�ǰ��� ���� ������ ����� �����⸦ ��������ϴ�.', '#������', 600000, '2024-02-25', '2024-03-27', '2024-04-03', '2024-04-10', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 6, 100, 'UV-C�� ������ ���' , '�� ����ó�� �����ϰ� ĩ�� ��ձ�', '����, ��� ���� ������ ĩ�� ��ձ�', '#ĩ�ֻ�ձ�', 300000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 7, 100, 'Ƽ ���� �ʴ� ����� ������' , '������ �ʼ��� ����� ������', '�ٹ��� �������� ���� �ּ����� ������', '#������', 600000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 8, 100, '������ ������ ����� ȭ���' , '��θ� ���� ����� �ڵ� ȭ���', '�뺯�� �� �� 10�� �� �ڵ����� û��', '#�ڵ� ȭ���', 900000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 9, 110, '�ո� ���� ������� ���� ������ �ո�ȣ��' , '�ո� �������� ���� ������ ��ȣ��', '���ʿ����� ����ϴ� �е��� ���� �ո� ��ȣ��', '#�ո� ��ȣ��', 500000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 10, 110, '�Ƿ� ��� ���� ������ ��ģ �е��� ���� ����' , '������ �мŴϽ�Ÿ ������ ����', '������ ���� �Ϳ��� ��ģ�� ����', '#�����Ŀ�ġ', 500000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 2, 120, '�׻� ���ϴ� �������� ����� ����' , '�ýð��� ���ϴ� ������ ���', '������ �������� ���� ���� ������', '#��������', 800000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 3, 120, 'ġ�Ӹ��� ǳ���� ���� �����ϰ� ��ƼĿ' , '��, ġ�Ӹ��� ������', '10���� �ɰ� ������ ������ ���� 20���� ������', '#��', 400000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 4, 120, 'ġ��� ����� ����å' , '�ϳ�, ��, ��, ġ��', '��̿� �������� �ϻ��� ���� ����å', '#����� ����', 600000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 5, 120, '�������� ���� ����' , '���θ� ����� ���� ��������', '��� ��������, ����Ʈ�� ���� �ʿ� ���� ���� ����', '#��������', 200000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 6, 120, '10�Ⱓ ���� �ٴϸ� ���� ���� ������' , '���� ���� ���, �������� ������', '���� �ٴҶ� ���� �״�� ������ ��ҽ��ϴ�', '#����', 400000, '2024-02-26', '2024-03-28', '2024-04-04', '2024-04-11', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 7, 120, '���ֵ� �ٴ� �к긯 ������' , '���ֵ��� �߾��ϴ� ��� �к긯 ������', '���������� ������ ���� �������� ��ƺý��ϴ�.', '#���ֹٴ�', 300000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 8, 120, '�Ϲ�,����,���� �� �����ϸ� ���� ������ ��� ������' , '���� �� ���� ���� ���� ������', '���������� ����Ǵ� ���� ������ ������ �Բ�', '#����' , 800000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 9, 120, '�߻�ȭ ������' , '�߻�ȭ ������', '������ �̸�, �и�, ������ ��� ��� ǳ������ �� �� �־��', '#��', 300000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 10, 120, '�������� �� �� ���� ����' , '���� ����, ��ī�̺� ���� ����', '���̸� ������ �뵵 �Ǵ� ������ �ٹ̴� �������� Ȱ�� ����', '#����', 700000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 14, 120, '25 �˱��̳� ����' , '25 �˱��̳� �����ͺ� 2��', '���̵��� �Ϳ���¦�� �������� �������� ����', '#�˱��̳�', 500000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 15, 120, '�ݵ��� 100% �޼��Ҷ����� �ʸ����Ǳ��� ��ġ ��� �߰�' , '���� ��𼭵� �ʿ��Ҷ����� ���� �ʸ� ���Ǳ� ��ġ', '������ ���밡 �ʸ��� ������ ���� ���ִ� ����', '#�ʸ� ���Ǳ�', 900000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 11, 120, '�� �۰��� ���� ����ȸ' , '�� �۰��� ���� ����ȸ, ������ ������', '����� �������� ���� ����ȸ�� �������', '#������', 200000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 12, 130, '�츮 ���̸� ���� �����ϰ� ���ִ� �򸣽�ƽ' , '���ǻ��� �ٸ� �԰Ÿ� ���׽�ƽ', '�ʼ�����Ұ� �� �ǰ��ϰ� ���ִ� ���׽�ƽ', '#����', 600000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 13, 130, 'õ�����и� ����� �ڵ���̵� ����� �峭��' , 'õ�����и� ����� ����� �峭��', '������ ���� ������ �ڵ���̵� ���� �峭��', '#����� �峭��', 300000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 14, 130, '����� ������ �������� ��������' , '��� ����̸� ���� Ĺ���� ��������', '���� ��� ����� ������ ���� ���� ������Ʈ', '#����� ������', 500000, '2024-02-27', '2024-03-29', '2024-04-05', '2024-04-12', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 15, 130, '�ݷ������� ���� ���� �� �ִ� ����' , '������ ����� ���� �����', '���������� ���׻��� ġŲ���� ����', '#�ݷ����� ����', 400000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 16, 130, '���̿� ġ�����Ÿ� �ѹ���' , '���̺��� ġ�����ű��� 1��2�� �峭��', 'õ������ ���� ������ �����ũ �峭��', '#������ �峭��', 800000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 17, 130, '���� �� �ϳ����� ����� ��¥��' , '���������� �� ����� ���� ��¥��', '�̸��� ������ �� �ְ�, Ű������ �� �� �־��', '#����� ��¥��', 400000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 18, 130, '����� ���� ��ũƼ' , '����̿� ƼŸ��', '����̰� �����ϴ� ���4��', '#����', 500000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 19, 140, '�ź�ο� �༺���� ���� ���� ���� �� �� �ִ� ����' , '�޲ٴ� �����, ������ ���� �����', '�ź�Ӱ� ������ ���� õ�������� ����', '#�����', 600000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 20, 140, '������ �츮 ������ ���༭' , '������ ����, ���� �����', '1/n�� �������� �� �־��', '#�����', 600000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 11, 140, '��⸦ �־� �����ϼ���' , '��𿡵� ���� ��� �����', '����� ������ �Աݰ� ���ָ� ������ �̻� ���� ���ӵǿ�', '#�����', 600000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 12, 140, '���̾Ƹ�带 ��ü�� ���̻糪��Ʈ' , '���̾Ƹ�带 ��ü�� ���̻糪��Ʈ', '���̾Ƹ��� ��������� �� ģȯ������', '#���̻糪��Ʈ', 400000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');

INSERT INTO TB_PROJECT(PROJECT_NO, PROJECT_SELLER, PROJECT_CATEGORY_NO, PROJECT_OVERVIEW, PROJECT_TITLE, PROJECT_CONTENT, PROJECT_TAG, PROJECT_PRICE, PROJECT_START, PROJECT_END, PROJECT_PAYMENT_BUYER, PROJECT_PAYMENT_SELLER, PROJECT_STATUS) 
VALUES(SEQ_PROJECT_NO.NEXTVAL, 13, 140, '������ ���� ������ �� �ֵ��� �����ϰ� �����ִ� ����' , '�Ǹ��� �ɷ��ִ� �帲ĳ�� �����', '�����Ҽ��� �� ���� �°� ����¡ �Ǵ� �ݼ� ���и� �ǹ��� ����', '#�����', 800000, '2024-02-28', '2024-03-30', '2024-04-06', '2024-04-13', 'Y');
--------------------------------------------------
------------------ CHAT ���� ----------------------	
--------------------------------------------------
CREATE TABLE TB_CHAT (
    CHAT_NO NUMBER CONSTRAINT CHAT_NO_PK PRIMARY KEY,
    CHAT_WRITER NUMBER CONSTRAINT CHAT_WRITER_NN NOT NULL,
    CHAT_PROJECT_NO NUMBER CONSTRAINT CHAT_PROJECT_NO_NN NOT NULL,
    CHAT_CONTENT VARCHAR2(4000),
    CHAT_CREATE_DATE DATE DEFAULT SYSDATE NOT NULL,
    CHAT_STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (CHAT_STATUS IN ('Y', 'N')),
    CONSTRAINT CHAT_WRITER_FK FOREIGN KEY (CHAT_WRITER) REFERENCES TB_MEMBER(USER_NO),
    CONSTRAINT CHAT_PROJECT_NO_FK FOREIGN KEY (CHAT_PROJECT_NO) REFERENCES TB_PROJECT(PROJECT_NO)
);

COMMENT ON COLUMN TB_CHAT.CHAT_NO IS 'ä�� ��ȣ';
COMMENT ON COLUMN TB_CHAT.CHAT_WRITER IS 'ä�� �ۼ���';
COMMENT ON COLUMN TB_CHAT.CHAT_PROJECT_NO IS 'ä�� ������Ʈ��ȣ';
COMMENT ON COLUMN TB_CHAT.CHAT_CONTENT IS 'ä�� ����';
COMMENT ON COLUMN TB_CHAT.CHAT_CREATE_DATE IS 'ä�� �ۼ���';
COMMENT ON COLUMN TB_CHAT.CHAT_STATUS IS 'ä�� ���°� (Y : �Խ� / N : ��Խ�)';

CREATE SEQUENCE SEQ_CHAT_NO
NOCACHE;

INSERT INTO TB_CHAT(CHAT_NO, CHAT_WRITER, CHAT_PROJECT_NO, CHAT_CONTENT) 
VALUES(SEQ_CHAT_NO.NEXTVAL, 2, 1008, '�ȳ��ϼ��� â���ڴ�. �� �� ������� �ɱ��?');

INSERT INTO TB_CHAT(CHAT_NO, CHAT_WRITER, CHAT_PROJECT_NO, CHAT_CONTENT) 
VALUES(SEQ_CHAT_NO.NEXTVAL, 5, 1008, '�ȳ��ϼ��� �Ŀ��ڴ�! �������� ���� �����ּ���!');

INSERT INTO TB_CHAT(CHAT_NO, CHAT_WRITER, CHAT_PROJECT_NO, CHAT_CONTENT) 
VALUES(SEQ_CHAT_NO.NEXTVAL, 2, 1008, '�亯�� ������̳�');

INSERT INTO TB_CHAT(CHAT_NO, CHAT_WRITER, CHAT_PROJECT_NO, CHAT_CONTENT) 
VALUES(SEQ_CHAT_NO.NEXTVAL, 5, 1008, '������ ���� �˼��մϴ�');

INSERT INTO TB_CHAT(CHAT_NO, CHAT_WRITER, CHAT_PROJECT_NO, CHAT_CONTENT) 
VALUES(SEQ_CHAT_NO.NEXTVAL, 2, 1008, '�׷� ������ �����ϴٰ��');

INSERT INTO TB_CHAT(CHAT_NO, CHAT_WRITER, CHAT_PROJECT_NO, CHAT_CONTENT) 
VALUES(SEQ_CHAT_NO.NEXTVAL, 5, 1008, '������ ���� �˼��մϴ�');

INSERT INTO TB_CHAT(CHAT_NO, CHAT_WRITER, CHAT_PROJECT_NO, CHAT_CONTENT) 
VALUES(SEQ_CHAT_NO.NEXTVAL, 2, 1008, '���� �亯�� �����̳�');

INSERT INTO TB_CHAT(CHAT_NO, CHAT_WRITER, CHAT_PROJECT_NO, CHAT_CONTENT) 
VALUES(SEQ_CHAT_NO.NEXTVAL, 5, 1008, '���Ͻô� �亯�� �帮�� ���� �˼��մϴ�');
--------------------------------------------------
----------------- REPORT ���� ---------------------	
--------------------------------------------------
CREATE TABLE TB_REPORT (
    REPORT_NO NUMBER CONSTRAINT REPORT_NO_PK PRIMARY KEY,
    REPORT_CATEGORY_NO NUMBER CONSTRAINT REPORT_CATEGORY_NO_NN NOT NULL,
    REPORT_WRITER NUMBER CONSTRAINT REPORT_WRITER_NN NOT NULL,
    REPORT_REF_NO NUMBER CONSTRAINT REPORT_REF_NO_NN NOT NULL,
    REPORT_TITLE VARCHAR2(100) CONSTRAINT REPORT_TITLE_NN NOT NULL,
    REPORT_CONTENT VARCHAR2(4000) CONSTRAINT REPORT_CONTENT_NN NOT NULL,
    REPORT_CREATE_DATE DATE CONSTRAINT REPORT_CREATE_DATE_NN NOT NULL,
    REPORT_MODIFY_DATE DATE,
    REPORT_STATUS VARCHAR2(1) DEFAULT 'Y' CONSTRAINT REPORT_STATUS CHECK(REPORT_STATUS IN('Y', 'N')),
    CONSTRAINT REPORT_CATEGORY_NO_FK FOREIGN KEY (REPORT_CATEGORY_NO) REFERENCES TB_RP_CATEGORY(RP_CATEGORY_NO),
    CONSTRAINT REPORT_WRITER_FK FOREIGN KEY (REPORT_WRITER) REFERENCES TB_MEMBER(USER_NO),
    CONSTRAINT REPORT_REF_NO_FK FOREIGN KEY (REPORT_REF_NO) REFERENCES TB_CHAT(CHAT_NO)
);

COMMENT ON COLUMN TB_REPORT.REPORT_NO IS '�Ű� ��ȣ';
COMMENT ON COLUMN TB_REPORT.REPORT_CATEGORY_NO IS '�Ű� ī�װ� ��ȣ';
COMMENT ON COLUMN TB_REPORT.REPORT_WRITER IS '�Ű� �ۼ���ȸ����ȣ';
COMMENT ON COLUMN TB_REPORT.REPORT_REF_NO IS '�Ű� �����ϴ� �Խñ� ��ȣ';
COMMENT ON COLUMN TB_REPORT.REPORT_TITLE IS '�Ű� ����';
COMMENT ON COLUMN TB_REPORT.REPORT_CONTENT IS '�Ű� ����';
COMMENT ON COLUMN TB_REPORT.REPORT_CREATE_DATE IS '�Ű� �ۼ���';
COMMENT ON COLUMN TB_REPORT.REPORT_MODIFY_DATE IS '�Ű� ������';
COMMENT ON COLUMN TB_REPORT.REPORT_STATUS IS '�Ű� ���°� (Y : �Խ� / N : ��Խ�)';

CREATE SEQUENCE SEQ_REPORT_NO
NOCACHE;

INSERT INTO TB_REPORT(REPORT_NO, REPORT_CATEGORY_NO, REPORT_WRITER, REPORT_REF_NO, REPORT_TITLE, REPORT_CONTENT, REPORT_CREATE_DATE)
VALUES(SEQ_REPORT_NO.NEXTVAL, 7, 4, (SELECT CHAT_NO FROM TB_CHAT WHERE CHAT_CONTENT = '�亯�� ������̳�'), '������ �����ϳ׿�', '�ʹ� �����ؿ�', SYSDATE);

INSERT INTO TB_REPORT(REPORT_NO, REPORT_CATEGORY_NO, REPORT_WRITER, REPORT_REF_NO, REPORT_TITLE, REPORT_CONTENT, REPORT_CREATE_DATE)
VALUES(SEQ_REPORT_NO.NEXTVAL, 7, 4, (SELECT CHAT_NO FROM TB_CHAT WHERE CHAT_CONTENT = '�׷� ������ �����ϴٰ��'), '������ �����ϳ׿�', '���� ������ ������ �� �𸣴� ��', SYSDATE);

INSERT INTO TB_REPORT(REPORT_NO, REPORT_CATEGORY_NO, REPORT_WRITER, REPORT_REF_NO, REPORT_TITLE, REPORT_CONTENT, REPORT_CREATE_DATE)
VALUES(SEQ_REPORT_NO.NEXTVAL, 7, 4, (SELECT CHAT_NO FROM TB_CHAT WHERE CHAT_CONTENT = '���� �亯�� �����̳�'), '������ �����ϳ׿�', '����� �ú�ɾ��~ �̻��~', SYSDATE);

INSERT INTO TB_REPORT(REPORT_NO, REPORT_CATEGORY_NO, REPORT_WRITER, REPORT_REF_NO, REPORT_TITLE, REPORT_CONTENT, REPORT_CREATE_DATE)
VALUES(SEQ_REPORT_NO.NEXTVAL, 7, 3, (SELECT CHAT_NO FROM TB_CHAT WHERE CHAT_CONTENT = '�׷� ������ �����ϴٰ��'), '���� �Ű��մϴ�', '���� ��Ź�����', SYSDATE);

INSERT INTO TB_REPORT(REPORT_NO, REPORT_CATEGORY_NO, REPORT_WRITER, REPORT_REF_NO, REPORT_TITLE, REPORT_CONTENT, REPORT_CREATE_DATE)
VALUES(SEQ_REPORT_NO.NEXTVAL, 7, 3, (SELECT CHAT_NO FROM TB_CHAT WHERE CHAT_CONTENT = '���� �亯�� �����̳�'), '�Ű��մϴ�', '�� �� ������ ���ּ���', SYSDATE);
--------------------------------------------------
------------------ LIKES ���� ---------------------	
--------------------------------------------------
CREATE TABLE TB_LIKES (
    LIKES_USER_NO NUMBER, 
    LIKES_PROJECT_NO NUMBER, 
    LIKES_CREATE_DATE DATE DEFAULT SYSDATE CONSTRAINT LIKES_CREATE_DATE_NN NOT NULL,
    LIKES_STATUS VARCHAR2(1) DEFAULT 'N' CONSTRAINT LIKES_STATUS_CK CHECK(LIKES_STATUS IN('Y', 'N')),
    CONSTRAINT LIKES_PK PRIMARY KEY (LIKES_USER_NO, LIKES_PROJECT_NO),
    CONSTRAINT LIKES_USER_NO_FK FOREIGN KEY (LIKES_USER_NO) REFERENCES TB_MEMBER(USER_NO),
    CONSTRAINT LIKES_PROJECT_NO_FK FOREIGN KEY (LIKES_PROJECT_NO) REFERENCES TB_PROJECT(PROJECT_NO)
);

COMMENT ON COLUMN TB_LIKES.LIKES_USER_NO IS '�� ȸ����ȣ';
COMMENT ON COLUMN TB_LIKES.LIKES_PROJECT_NO IS '�� ������Ʈ��ȣ';
COMMENT ON COLUMN TB_LIKES.LIKES_CREATE_DATE IS '�� �����';
COMMENT ON COLUMN TB_LIKES.LIKES_STATUS IS '�� ���°� (Y : �� / N : �� ����)';

CREATE SEQUENCE SEQ_LIKES_NO
NOCACHE;

INSERT INTO TB_LIKES(LIKES_USER_NO, LIKES_PROJECT_NO, LIKES_CREATE_DATE, LIKES_STATUS) 
VALUES(2, 1007, '2024-02-26', 'Y');

INSERT INTO TB_LIKES(LIKES_USER_NO, LIKES_PROJECT_NO, LIKES_CREATE_DATE, LIKES_STATUS) 
VALUES(2, 1008, '2024-02-26', 'Y');

INSERT INTO TB_LIKES(LIKES_USER_NO, LIKES_PROJECT_NO, LIKES_CREATE_DATE, LIKES_STATUS) 
VALUES(4, 1009, '2024-02-27', 'Y');

INSERT INTO TB_LIKES(LIKES_USER_NO, LIKES_PROJECT_NO, LIKES_CREATE_DATE, LIKES_STATUS) 
VALUES(3, 1010, '2024-02-27', 'Y');

INSERT INTO TB_LIKES(LIKES_USER_NO, LIKES_PROJECT_NO, LIKES_CREATE_DATE, LIKES_STATUS) 
VALUES(2, 1011, '2024-02-28', 'Y');

INSERT INTO TB_LIKES(LIKES_USER_NO, LIKES_PROJECT_NO, LIKES_CREATE_DATE, LIKES_STATUS) 
VALUES(2, 1012, '2024-03-01', 'Y');

INSERT INTO TB_LIKES(LIKES_USER_NO, LIKES_PROJECT_NO, LIKES_CREATE_DATE, LIKES_STATUS) 
VALUES(2, 1013, '2024-03-01', 'Y');
--------------------------------------------------
----------------- ATTACHMENT ���� -----------------	
--------------------------------------------------
CREATE TABLE TB_ATTACHMENT (
    ATTACHMENT_NO NUMBER CONSTRAINT ATTACHMENT_NO_PK PRIMARY KEY,
    ATTACHMENT_USER_NO NUMBER,
    ATTACHMENT_CHAT_NO NUMBER,
    ATTACHMENT_QNA_NO NUMBER,
    ATTACHMENT_REPORT_NO NUMBER,
    ATTACHMENT_PROJECT_NO NUMBER,
    ATTACHMENT_ORIGIN_NAME VARCHAR2(255) CONSTRAINT ATTACHMENT_ORIGIN_NAME_NN NOT NULL,
    ATTACHMENT_UPDATE_NAME VARCHAR2(255) CONSTRAINT ATTACHMENT_UPDATE_NAME_NN NOT NULL,
    ATTACHMENT_PATH VARCHAR2(1000),
    ATTACHMENT_UPLOAD_DATE DATE DEFAULT SYSDATE CONSTRAINT ATTACHMENT_UPLOAD_DATE_NN NOT NULL,
    ATTACHMENT_LEVEL NUMBER CONSTRAINT ATTACHMENT_LEVEL_NN NOT NULL,
    ATTACHMENT_STATUS VARCHAR2(1) DEFAULT 'Y' CONSTRAINT ATTACHMENT_STATUS_CK CHECK(ATTACHMENT_STATUS IN('Y', 'N')),
    CONSTRAINT ATTACHMENT_USER_NO_FK FOREIGN KEY (ATTACHMENT_USER_NO) REFERENCES TB_MEMBER(USER_NO),
    CONSTRAINT ATTACHMENT_CHAT_NO_FK FOREIGN KEY (ATTACHMENT_CHAT_NO) REFERENCES TB_CHAT(CHAT_NO),
    CONSTRAINT ATTACHMENT_QNA_NO_FK FOREIGN KEY (ATTACHMENT_QNA_NO) REFERENCES TB_QNA (QNA_NO),
    CONSTRAINT ATTACHMENT_REPORT_NO_FK FOREIGN KEY (ATTACHMENT_REPORT_NO) REFERENCES TB_REPORT (REPORT_NO),
    CONSTRAINT ATTACHMENT_PROJECT_NO_FK FOREIGN KEY (ATTACHMENT_PROJECT_NO) REFERENCES TB_PROJECT (PROJECT_NO)
);

COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_NO IS '���� ��ȣ';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_USER_NO IS '���� �����Խñ۹�ȣ (MEMBER)';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_CHAT_NO IS '���� �����Խñ۹�ȣ (CHAT)';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_QNA_NO IS '���� �����Խñ۹�ȣ (QNA)';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_REPORT_NO IS '���� �����Խñ۹�ȣ (REPORT)';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_PROJECT_NO IS '���� �����Խñ۹�ȣ (PROJECT)';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_ORIGIN_NAME IS '���� �������ϸ�';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_UPDATE_NAME IS '���� �������ϸ�';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_PATH IS '���� �����������';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_UPLOAD_DATE IS '���� ���ε���';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_LEVEL IS '���� ���� (1 : ���� / 2 : ����)';
COMMENT ON COLUMN TB_ATTACHMENT.ATTACHMENT_STATUS IS '���� ���°� (Y : ��ȿ / N : ����ȿ)';

CREATE SEQUENCE SEQ_ATTACHMENT_NO
NOCACHE;

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 2, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 3, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 4, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 5, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 6, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 7, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 8, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 9, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 10, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 11, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 12, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 13, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 14, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 15, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 16, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 17, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 18, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 19, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 20, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 21, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 22, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 23, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 24, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 25, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 26, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 27, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 28, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 29, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 30, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 31, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 32, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_USER_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 33, 'basicUserProfile.png', '2024022209000081110.png', 'resources/member_upfiles/', 1);

------------------ project ---------------------
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1003, 'pj1003.jpg', '2024022209000010030.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1003, 'pj10031.jpg', '2024022209000010031.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1003, 'pj10032.jpg', '2024022209000010032.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1003, 'pj10033.jpg', '2024022209000010033.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1005, 'pj1005.jpg', '2024022209000010050.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1005, 'pj10051.jpg', '2024022209000010051.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1005, 'pj10052.jpg', '2024022209000010052.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1005, 'pj10053.jpg', '2024022209000010053.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1006, 'pj1006.jpg', '2024022209000010060.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1006, 'pj10061.jpg', '2024022209000010061.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1006, 'pj10062.jpg', '2024022209000010062.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1007, 'pj1007.jpg', '2024022209000010070.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1007, 'pj10071.jpg', '2024022209000010071.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1007, 'pj10072.jpg', '2024022209000010072.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1007, 'pj10073.jpg', '2024022209000010073.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1008, 'pj1008.jpg', '2024022209000010080.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1008, 'pj10081.jpg', '2024022209000010081.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1008, 'pj10082.jpg', '2024022209000010082.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1008, 'pj10083.jpg', '2024022209000010083.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1009, 'pj1009.jpg', '2024022209000010090.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1009, 'pj10091.jpg', '2024022209000010091.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1010, 'pj1010.jpg', '2024022209000010100.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1010, 'pj10101.jpg', '2024022209000010101.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1010, 'pj10102.jpg', '2024022209000010102.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1010, 'pj10103.jpg', '2024022209000010103.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1011, 'pj1011.jpg', '2024022209000010110.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1011, 'pj10111.jpg', '2024022209000010111.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1012, 'pj1012.jpg', '2024022209000010120.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1012, 'pj10121.jpg', '2024022209000010121.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1012, 'pj10122.jpg', '2024022209000010122.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1012, 'pj10123.jpg', '2024022209000010123.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1013, 'pj1013.jpg', '2024022209000010130.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1013, 'pj10131.jpg', '2024022209000010131.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1013, 'pj10132.jpg', '2024022209000010132.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1013, 'pj10133.jpg', '2024022209000010133.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1014, 'pj1014.jpg', '2024022209000010140.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1014, 'pj10141.jpg', '2024022209000010141.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1014, 'pj10142.jpg', '2024022209000010142.jpg', 'resources/project_upfiles/', 2);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1014, 'pj10143.jpg', '2024022209000010143.jpg', 'resources/project_upfiles/', 2);

INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1015, 'pj1015.jpg', '2024022209000010150.jpg', 'resources/project_upfiles/', 1);
INSERT INTO TB_ATTACHMENT (ATTACHMENT_NO, ATTACHMENT_PROJECT_NO, ATTACHMENT_ORIGIN_NAME, ATTACHMENT_UPDATE_NAME, ATTACHMENT_PATH, ATTACHMENT_LEVEL)
VALUES (SEQ_ATTACHMENT_NO.NEXTVAL, 1015, 'pj10151.jpg', '2024022209000010151.jpg', 'resources/project_upfiles/', 2);
--------------------------------------------------
------------------ BUYER ���� ---------------------	
--------------------------------------------------
CREATE TABLE TB_BUYER (
    BUYER_USER_NO NUMBER CONSTRAINT BUYER_USER_NO_FK REFERENCES TB_MEMBER(USER_NO),
    BUYER_PROJECT_NO NUMBER CONSTRAINT BUYER_PROJECT_NO_FK REFERENCES TB_PROJECT(PROJECT_NO),
    BUYER_FUNDING NUMBER CONSTRAINT BUYER_FUNDING_NN NOT NULL
);

COMMENT ON COLUMN TB_BUYER.BUYER_USER_NO IS '�Ŀ��� ȸ����ȣ';
COMMENT ON COLUMN TB_BUYER.BUYER_PROJECT_NO IS '�Ŀ��� ������Ʈ��ȣ';
COMMENT ON COLUMN TB_BUYER.BUYER_FUNDING IS '�Ŀ��� �Ŀ��ݾ�';

INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1003, 5000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1003, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (17, 1003, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1005, 1000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1005, 1000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1006, 2000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1006, 1000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1007, 3000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1007, 1500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1008, 4000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1008, 2000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1008, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1009, 5000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1009, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (8, 1009, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (7, 1009, 2500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1010, 6000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1010, 6000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1010, 6000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1010, 6000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1010, 6000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1010, 6000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (8, 1010, 6000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1010, 6000000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1011, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1011, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1011, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1011, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1011, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1012, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1012, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1012, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1012, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1012, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (7, 1012, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1013, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (12, 1013, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (11, 1013, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1013, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1013, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (12, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (7, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (8, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (11, 1014, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1015, 100000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1015, 100000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (7, 1015, 100000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1015, 100000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1015, 100000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1016, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1016, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1016, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1016, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (7, 1016, 80000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1017, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1017, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1017, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1017, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1018, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1018, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1018, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1018, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1018, 600000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1019, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1019, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1019, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1019, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1019, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1020, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1020, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1020, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1020, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1020, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1021, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1021, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1021, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1021, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1021, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1022, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (9, 1022, 60000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1023, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1023, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1023, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1023, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (7, 1023, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1024, 600000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1024, 600000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1024, 600000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1024, 600000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (7, 1024, 600000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1025, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1025, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (22, 1025, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (21, 1025, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (23, 1025, 500000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1026, 800000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1026, 800000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (4, 1026, 800000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (6, 1026, 800000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (7, 1026, 800000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1026, 800000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (12, 1027, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (13, 1027, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (14, 1027, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (15, 1027, 300000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (11, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (12, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (13, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (14, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (15, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (16, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (17, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (18, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (19, 1028, 50000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (11, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (12, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (13, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (14, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (15, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (16, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (17, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (18, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (19, 1029, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1030, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (5, 1030, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1030, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (11, 1030, 700000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (2, 1031, 70000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (3, 1032, 400000);
INSERT INTO TB_BUYER (BUYER_USER_NO, BUYER_PROJECT_NO, BUYER_FUNDING) VALUES (10, 1032, 400000);

--------------------------------------------------
------------------ SELLER ���� --------------------	
--------------------------------------------------
CREATE TABLE TB_SELLER (
    SELLER_USER_NO NUMBER CONSTRAINT SELLER_USER_NO_FK REFERENCES TB_MEMBER(USER_NO),
    SELLER_PROJECT_NO NUMBER CONSTRAINT SELLER_PROJECT_NO_FK REFERENCES TB_PROJECT(PROJECT_NO),
    SELLER_FUNDING NUMBER DEFAULT 0 CONSTRAINT SELLER_FUNDING NOT NULL
);

COMMENT ON COLUMN TB_SELLER.SELLER_USER_NO IS 'â���� ȸ����ȣ';
COMMENT ON COLUMN TB_SELLER.SELLER_PROJECT_NO IS 'â���� ������Ʈ��ȣ';
COMMENT ON COLUMN TB_SELLER.SELLER_FUNDING IS 'â���� �ǽð� ��ݾ�';

INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (4, 1003, 6000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (2, 1005, 2000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (3, 1006, 3000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (4, 1007, 4500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (5, 1008, 6400000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (6, 1009, 8500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (7, 1010, 48000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (8, 1011, 700000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (9, 1012, 360000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (10, 1013, 3500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (2, 1014, 800000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (3, 1015, 500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (4, 1016, 400000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (5, 1017, 2800000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (6, 1018, 1320000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (7, 1019, 2000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (8, 1020, 1500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (9, 1021, 2500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (10, 1022, 120000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (2, 1023, 1500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (3, 1024, 300000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (4, 1025, 2500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (3, 1026, 4800000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (6, 1027, 1200000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (7, 1028, 500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (8, 1029, 4000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (9, 1030, 2800000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (10, 1031, 70000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (2, 1032, 800000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (3, 1033, 3000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (4, 1034, 2500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (5, 1035, 3500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (6, 1036, 4900000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (7, 1037, 5000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (8, 1038, 6000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (9, 1039, 7000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (10, 1040, 8000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (2, 1041, 1800000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (3, 1042, 2000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (4, 1043, 2000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (5, 1044, 2100000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (6, 1045, 3500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (7, 1046, 3000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (8, 1047, 4000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (9, 1048, 5000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (10, 1049, 5900000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (2, 1050, 6000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (3, 1051, 7000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (4, 1052, 8000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (5, 1053, 1900000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (6, 1054, 2100000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (7, 1055, 2500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (8, 1056, 4500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (9, 1057, 4000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (10, 1058, 5500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (14, 1059, 5000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (15, 1060, 6000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (11, 1061, 3300000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (12, 1062, 3100000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (13, 1063, 1700000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (14, 1064, 2500000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (15, 1065, 2400000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (16, 1066, 2400000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (17, 1067, 1900000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (18, 1068, 3100000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (19, 1069, 1900000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (20, 1070, 8000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (11, 1071, 7000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (12, 1072, 9000000);
INSERT INTO TB_SELLER (SELLER_USER_NO, SELLER_PROJECT_NO, SELLER_FUNDING) VALUES (13, 1073, 2000000);
--------------------------------------------------
------------------ PAYMENT ���� -------------------	
--------------------------------------------------
CREATE TABLE TB_PAYMENT (
    PAYMENT_NO NUMBER CONSTRAINT PAYMENT_NO_PK PRIMARY KEY,
    PAYMENT_USER_NO NUMBER CONSTRAINT PAYMENT_USER_NO_NN NOT NULL,
    PAYMENT_PROJECT_NO NUMBER CONSTRAINT PAYMENT_PROJECT_NO_NN NOT NULL,
    PAYMENT_AMOUNT NUMBER CONSTRAINT PAYMENT_AMOUNT_NN NOT NULL,
    PAYMENT_METHOD NUMBER CONSTRAINT PAYMENT_METHOD_CK CHECK(PAYMENT_METHOD IN(1, 2)),
    PAYMENT_STATUS VARCHAR2(1) CONSTRAINT PAYMENT_STATUS_CK CHECK(PAYMENT_STATUS IN('Y', 'N')),
    PAYMENT_DATE DATE CONSTRAINT PAYMENT_DATE_NN NOT NULL,
    CONSTRAINT PAYMENT_USER_NO_FK FOREIGN KEY (PAYMENT_USER_NO) REFERENCES TB_MEMBER(USER_NO),
    CONSTRAINT PAYMENT_PROJECT_NO_FK FOREIGN KEY (PAYMENT_PROJECT_NO) REFERENCES TB_PROJECT(PROJECT_NO)
);

COMMENT ON COLUMN TB_PAYMENT.PAYMENT_NO IS '���� ��ȣ';
COMMENT ON COLUMN TB_PAYMENT.PAYMENT_USER_NO IS '���� �Ŀ���ȸ����ȣ';
COMMENT ON COLUMN TB_PAYMENT.PAYMENT_PROJECT_NO IS '���� ������Ʈ��ȣ';
COMMENT ON COLUMN TB_PAYMENT.PAYMENT_AMOUNT IS '���� �ݾ�';
COMMENT ON COLUMN TB_PAYMENT.PAYMENT_METHOD IS '���� ���� (1 : ������ü / 2 : ���̹�����)';
COMMENT ON COLUMN TB_PAYMENT.PAYMENT_STATUS IS '���� ���°� (Y : ���� / 2 : �̰���)';
COMMENT ON COLUMN TB_PAYMENT.PAYMENT_DATE IS '���� ����';

CREATE SEQUENCE SEQ_PAYMENT_NO
NOCACHE;
--------------------------------------------------
------------------- REPLY ���� --------------------	
--------------------------------------------------
CREATE TABLE TB_REPLY (
    REPLY_NO NUMBER CONSTRAINT REPLY_NO_PK PRIMARY KEY,
    REPLY_CONTENT VARCHAR2(1000) CONSTRAINT REPLY_CONTENT_NN NOT NULL,
    REPLY_REF_NO NUMBER CONSTRAINT REPLY_REF_NO_NN NOT NULL,
    REPLY_WRITER NUMBER CONSTRAINT REPLY_WRITER_NO_NN NOT NULL,
    REPLY_CREATE_DATE DATE CONSTRAINT REPLY_CREATE_DATE_NN NOT NULL,
    REPLY_MODIFY_DATE DATE CONSTRAINT REPLY_MODIFY_DATE_NN NOT NULL,
    REPLY_STATUS VARCHAR2(1) CONSTRAINT REPLY_STATUS_NN NOT NULL CONSTRAINT REPLY_STATUS_CK CHECK (REPLY_STATUS IN ('Y', 'N')),
    CONSTRAINT REPLY_REF_NO_FK FOREIGN KEY (REPLY_REF_NO) REFERENCES TB_QNA(QNA_NO),
    CONSTRAINT REPLY_WRITER_FK FOREIGN KEY (REPLY_WRITER) REFERENCES TB_MEMBER(USER_NO)
);

COMMENT ON COLUMN TB_REPLY.REPLY_NO IS '��� ��ȣ';
COMMENT ON COLUMN TB_REPLY.REPLY_CONTENT IS '��� ����';
COMMENT ON COLUMN TB_REPLY.REPLY_REF_NO IS '��� �����Խñ۹�ȣ';
COMMENT ON COLUMN TB_REPLY.REPLY_WRITER IS '��� �ۼ���ȸ����ȣ';
COMMENT ON COLUMN TB_REPLY.REPLY_CREATE_DATE IS '��� �ۼ���';
COMMENT ON COLUMN TB_REPLY.REPLY_MODIFY_DATE IS '��� ������';
COMMENT ON COLUMN TB_REPLY.REPLY_STATUS IS '��� ���°� (Y : �Խ� / N : ��Խ�)';

CREATE SEQUENCE SEQ_REPLY_NO
NOCACHE;
--------------------------------------------------
-------------- FUNDING_OPTION ���� ----------------	
--------------------------------------------------
CREATE TABLE TB_FUNDING_OPTION (
    OPTION_NO NUMBER CONSTRAINT OPTION_NO_PK PRIMARY KEY,
    OPTION_PROJECT_NO NUMBER CONSTRAINT OPTION_PROJECT_NO_NN NOT NULL,
    OPTION_AMOUNT1 NUMBER CONSTRAINT OPTION_AMOUNT1_NN NOT NULL,
    OPTION_REWARD1 NUMBER CONSTRAINT OPTION_REWARD1_NN NOT NULL,
    OPTION_AMOUNT2 NUMBER CONSTRAINT OPTION_AMOUNT2_NN NOT NULL,
    OPTION_REWARD2 NUMBER CONSTRAINT OPTION_REWARD2_NN NOT NULL,
    OPTION_AMOUNT3 NUMBER CONSTRAINT OPTION_AMOUNT3_NN NOT NULL,
    OPTION_REWARD3 NUMBER CONSTRAINT OPTION_REWARD3_NN NOT NULL,
    CONSTRAINT OPTION_PROJECT_NO_FK FOREIGN KEY (OPTION_PROJECT_NO) REFERENCES TB_PROJECT(PROJECT_NO)
);

COMMENT ON COLUMN TB_FUNDING_OPTION.OPTION_NO IS '�ݵ� �ɼ� ��ȣ';
COMMENT ON COLUMN TB_FUNDING_OPTION.OPTION_PROJECT_NO IS '�ݵ� ������Ʈ ��ȣ';
COMMENT ON COLUMN TB_FUNDING_OPTION.OPTION_AMOUNT1 IS '�ݵ� �ɼ� �ݾ�1';
COMMENT ON COLUMN TB_FUNDING_OPTION.OPTION_REWARD1 IS '�ݵ� �ɼ� 1';
COMMENT ON COLUMN TB_FUNDING_OPTION.OPTION_AMOUNT2 IS '�ݵ� �ɼ� �ݾ�2';
COMMENT ON COLUMN TB_FUNDING_OPTION.OPTION_REWARD2 IS '�ݵ� �ɼ� 2';
COMMENT ON COLUMN TB_FUNDING_OPTION.OPTION_AMOUNT3 IS '�ݵ� �ɼ� �ݾ�3';
COMMENT ON COLUMN TB_FUNDING_OPTION.OPTION_REWARD3 IS '�ݵ� �ɼ� 3';

CREATE SEQUENCE SEQ_OPTION_NO
NOCACHE;

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1003, FLOOR(5000000 * 0.1), 1, FLOOR(5000000 * 0.5), 2, 5000000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1005, FLOOR(1000000 * 0.1), 1, FLOOR(1000000 * 0.5), 2, 1000000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1006, FLOOR(2000000 * 0.1), 1, FLOOR(2000000 * 0.5), 2, 2000000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1007, FLOOR(3000000 * 0.1), 1, FLOOR(3000000 * 0.5), 2, 3000000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1008, FLOOR(4000000 * 0.1), 1, FLOOR(4000000 * 0.5), 2, 4000000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1009, FLOOR(5000000 * 0.1), 1, FLOOR(5000000 * 0.5), 2, 5000000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1010, FLOOR(6000000 * 0.1), 1, FLOOR(6000000 * 0.5), 2, 6000000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1011, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1012, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1013, FLOOR(700000 * 0.1), 1, FLOOR(700000 * 0.5), 2, 700000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1014, FLOOR(800000 * 0.1), 1, FLOOR(800000 * 0.5), 2, 800000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1015, FLOOR(10000 * 0.1), 1, FLOOR(10000 * 0.5), 2, 10000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1016, FLOOR(800000 * 0.1), 1, FLOOR(800000 * 0.5), 2, 800000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1017, FLOOR(700000 * 0.1), 1, FLOOR(700000 * 0.5), 2, 700000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1018, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1019, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1020, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1021, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1022, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1023, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1024, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1025, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1026, FLOOR(800000 * 0.1), 1, FLOOR(800000 * 0.5), 2, 800000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1027, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1028, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1029, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1030, FLOOR(700000 * 0.1), 1, FLOOR(700000 * 0.5), 2, 700000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1031, FLOOR(700000 * 0.1), 1, FLOOR(700000 * 0.5), 2, 700000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1032, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1033, FLOOR(900000 * 0.1), 1, FLOOR(900000 * 0.5), 2, 900000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1034, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1035, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1036, FLOOR(800000 * 0.1), 1, FLOOR(800000 * 0.5), 2, 800000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1037, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1038, FLOOR(100000 * 0.1), 1, FLOOR(100000 * 0.5), 2, 100000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1039, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1040, FLOOR(200000 * 0.1), 1, FLOOR(200000 * 0.5), 2, 200000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1041, FLOOR(900000 * 0.1), 1, FLOOR(900000 * 0.5), 2, 900000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1042, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1043, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1044, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1045, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1046, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1047, FLOOR(900000 * 0.1), 1, FLOOR(900000 * 0.5), 2, 900000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1048, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1049, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1050, FLOOR(800000 * 0.1), 1, FLOOR(800000 * 0.5), 2, 800000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1051, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1052, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1053, FLOOR(200000 * 0.1), 1, FLOOR(200000 * 0.5), 2, 200000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1054, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1055, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1056, FLOOR(800000 * 0.1), 1, FLOOR(800000 * 0.5), 2, 800000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1057, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1058, FLOOR(700000 * 0.1), 1, FLOOR(700000 * 0.5), 2, 700000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1059, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1060, FLOOR(900000 * 0.1), 1, FLOOR(900000 * 0.5), 2, 900000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1061, FLOOR(200000 * 0.1), 1, FLOOR(200000 * 0.5), 2, 200000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1062, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1063, FLOOR(300000 * 0.1), 1, FLOOR(300000 * 0.5), 2, 300000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1064, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1065, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1066, FLOOR(800000 * 0.1), 1, FLOOR(800000 * 0.5), 2, 800000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1067, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1068, FLOOR(500000 * 0.1), 1, FLOOR(500000 * 0.5), 2, 500000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1069, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1070, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1071, FLOOR(600000 * 0.1), 1, FLOOR(600000 * 0.5), 2, 600000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1072, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);

INSERT INTO TB_FUNDING_OPTION (OPTION_NO, OPTION_PROJECT_NO, OPTION_AMOUNT1, OPTION_REWARD1, OPTION_AMOUNT2, OPTION_REWARD2, OPTION_AMOUNT3, OPTION_REWARD3)
VALUES (SEQ_OPTION_NO.NEXTVAL, 1073, FLOOR(400000 * 0.1), 1, FLOOR(400000 * 0.5), 2, 400000, 3);
--------------------------------------------------
------------------ ORDER ���� ---------------------	
--------------------------------------------------
CREATE TABLE TB_ORDER (
    ORDER_NO NUMBER CONSTRAINT ORDER_NO_PK PRIMARY KEY,
    ORDER_USER_NO NUMBER CONSTRAINT ORDER_USER_NO_NN NOT NULL,
    ORDER_PROJECT_NO NUMBER CONSTRAINT ORDER_PROJECT_NO_NN NOT NULL,
    ORDER_OPTION_NO NUMBER CONSTRAINT ORDER_OPTION_NO_NN NOT NULL,
    ORDER_STATUS VARCHAR2(1) DEFAULT 'Y' CONSTRAINT ORDER_STATUS_CK CHECK(ORDER_STATUS IN('Y', 'C')),
    ORDER_PAYMENT_NO NUMBER CONSTRAINT ORDER_PAYMENT_NO_NN NOT NULL,
    CONSTRAINT ORDER_USER_NO_FK FOREIGN KEY (ORDER_USER_NO) REFERENCES TB_MEMBER(USER_NO),
    CONSTRAINT ORDER_PROJECT_NO_FK FOREIGN KEY (ORDER_PROJECT_NO) REFERENCES TB_PROJECT(PROJECT_NO),
    CONSTRAINT ORDER_OPTION_NO_FK FOREIGN KEY (ORDER_OPTION_NO) REFERENCES TB_FUNDING_OPTION(OPTION_NO),
    CONSTRAINT ORDER_PAYMENT_NO_FK FOREIGN KEY (ORDER_PAYMENT_NO) REFERENCES TB_PAYMENT(PAYMENT_NO)
);

COMMENT ON COLUMN TB_ORDER.ORDER_NO IS '�ֹ� ��ȣ';
COMMENT ON COLUMN TB_ORDER.ORDER_USER_NO IS '�ֹ��� ȸ�� ��ȣ';
COMMENT ON COLUMN TB_ORDER.ORDER_PROJECT_NO IS '�ֹ� ������Ʈ ��ȣ';
COMMENT ON COLUMN TB_ORDER.ORDER_OPTION_NO IS '�ֹ� �Ŀ� �ɼ� ��ȣ';
COMMENT ON COLUMN TB_ORDER.ORDER_STATUS IS '�ֹ� ���°� (Y : �ֹ��Ϸ� / C : �ֹ����)';
COMMENT ON COLUMN TB_ORDER.ORDER_PAYMENT_NO IS '�ֹ� ���� ��ȣ';
--------------------------------------------------
----------------- DELIVERY ���� -------------------	
--------------------------------------------------
CREATE TABLE TB_DELIVERY (
    DELIVERY_NO NUMBER CONSTRAINT DELIVERY_NO_PK PRIMARY KEY,
    DELIVERY_ORDER_NO NUMBER CONSTRAINT DELIVERY_ORDER_NO_NN NOT NULL,
    DELIVERY_ADDRESS VARCHAR2(500) CONSTRAINT DELIVERY_ADDRESS_NN NOT NULL,
    DELIVERY_STATUS VARCHAR2(1) DEFAULT 'N' CONSTRAINT DELIVERY_STATUS_CK CHECK(DELIVERY_STATUS IN('Y', 'I', 'N')),
    DELIVERY_START DATE,
    DELIVERY_END DATE,
    CONSTRAINT DELIVERY_ORDER_NO_FK FOREIGN KEY (DELIVERY_ORDER_NO) REFERENCES TB_ORDER(ORDER_NO)
);

COMMENT ON COLUMN TB_DELIVERY.DELIVERY_NO IS '��� ��ȣ';
COMMENT ON COLUMN TB_DELIVERY.DELIVERY_ORDER_NO IS '��� �ֹ� ��ȣ';
COMMENT ON COLUMN TB_DELIVERY.DELIVERY_ADDRESS IS '����� �ּ�';
COMMENT ON COLUMN TB_DELIVERY.DELIVERY_STATUS IS '��� ���°� (Y : ��ۿϷ� / I : ����� / N : ��۴��)';
COMMENT ON COLUMN TB_DELIVERY.DELIVERY_START IS '��� ������';
COMMENT ON COLUMN TB_DELIVERY.DELIVERY_END IS '��� ������';

CREATE SEQUENCE SEQ_DELIVERY_NO
NOCACHE;





COMMIT;
