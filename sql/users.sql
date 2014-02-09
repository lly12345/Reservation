
  CREATE TABLE "ADMIN"."USERS" 
   (	"U_ID" NUMBER NOT NULL ENABLE, 
	"U_NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"U_PASSWORD" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"U_TELEPHONE" CHAR(11 BYTE), 
	"U_EMAIL" VARCHAR2(100 BYTE), 
	"U_VIP_LEVEL" NUMBER(1,0) NOT NULL ENABLE, 
	 CONSTRAINT "USERS_PK" PRIMARY KEY ("U_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 
