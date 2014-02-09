
  CREATE TABLE "ADMIN"."ORDERS" 
   (	"O_ID" NUMBER(5,0) NOT NULL ENABLE, 
	"O_DATE" DATE, 
	"U_ID" NUMBER(5,0), 
	"O_STATUS_ID" NUMBER(5,0) NOT NULL ENABLE, 
	"O_TYPE_ID" NUMBER(5,0), 
	 CONSTRAINT "ORDERS_PK" PRIMARY KEY ("O_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "ORDERS_USERS_FK1" FOREIGN KEY ("U_ID")
	  REFERENCES "ADMIN"."USERS" ("U_ID") ENABLE, 
	 CONSTRAINT "ORDERS_ORDERTYPE_FK1" FOREIGN KEY ("O_TYPE_ID")
	  REFERENCES "ADMIN"."ORDERTYPE" ("O_TYPE_ID") ENABLE, 
	 CONSTRAINT "ORDERS_ORDERSTATUS_FK1" FOREIGN KEY ("O_STATUS_ID")
	  REFERENCES "ADMIN"."ORDERSTATUS" ("O_STATUS_ID") ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
 
