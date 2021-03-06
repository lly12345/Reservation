
  CREATE TABLE "ADMIN"."FOODS" 
   (	"F_ID" NUMBER(5,0) NOT NULL ENABLE, 
	"F_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"F_PRICE" NUMBER(5,2) NOT NULL ENABLE, 
	"F_IMG" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"F_FEATURES" VARCHAR2(1000 BYTE), 
	"OL_ID" NUMBER(5,0), 
	"TL_ID" NUMBER(5,0), 
	"F_NEW_DATE" DATE, 
	"F_PRAISE_COUNT" NUMBER(5,0), 
	"F_MARKS" NUMBER(2,1), 
	"F_VIEWS_COUNT" NUMBER(5,0), 
	"F_HOT_COLD" NUMBER(1,0) NOT NULL ENABLE, 
	"F_TASTE_ID" NUMBER, 
	"F_INGREDIENT" VARCHAR2(1000 BYTE), 
	 CONSTRAINT "FOODS_PK" PRIMARY KEY ("F_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "FOODS_ONELEVELTYPE_FK1" FOREIGN KEY ("OL_ID")
	  REFERENCES "ADMIN"."ONELEVELTYPE" ("OL_ID") ENABLE, 
	 CONSTRAINT "FOODS_TWOLEVELTYPE_FK1" FOREIGN KEY ("TL_ID")
	  REFERENCES "ADMIN"."TWOLEVELTYPE" ("TL_ID") ENABLE, 
	 CONSTRAINT "FOODS_FOODTASTE_FK1" FOREIGN KEY ("F_TASTE_ID")
	  REFERENCES "ADMIN"."FOODTASTE" ("F_TASTE_ID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 
