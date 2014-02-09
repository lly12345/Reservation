
  CREATE TABLE "ADMIN"."COMMENTS" 
   (	"C_ID" NUMBER(5,0) NOT NULL ENABLE, 
	"U_ID" NUMBER(5,0), 
	"C_DATE" DATE NOT NULL ENABLE, 
	"F_ID" NUMBER(5,0), 
	"C_COMMENT" VARCHAR2(1000 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "COMMENTS_PK" PRIMARY KEY ("C_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "COMMENTS_USERS_FK1" FOREIGN KEY ("U_ID")
	  REFERENCES "ADMIN"."USERS" ("U_ID") ENABLE, 
	 CONSTRAINT "COMMENTS_FOODS_FK1" FOREIGN KEY ("F_ID")
	  REFERENCES "ADMIN"."FOODS" ("F_ID") ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
 