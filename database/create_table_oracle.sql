		-- 1. 프로퍼티 테이블 생성 스크립트
		drop table V2_LOCALIZED_PROPERTY cascade constraints PURGE ;		
		drop table V2_PROPERTY cascade constraints PURGE ;		
		drop table V2_SEQUENCER cascade constraints PURGE ;		
		drop table V2_I18N_TEXT cascade constraints PURGE ;
				
				
		CREATE TABLE V2_LOCALIZED_PROPERTY (
				  LOCALE_CODE            VARCHAR2(100)   NOT NULL,
				  PROPERTY_NAME          VARCHAR2(100)   NOT NULL,
				  PROPERTY_VALUE         VARCHAR2(1024)  NOT NULL,
				  CONSTRAINT V2_LOCALIZED_PROPERTY_PK PRIMARY KEY (LOCALE_CODE, PROPERTY_NAME)
		);
		
		
		COMMENT ON TABLE "V2_LOCALIZED_PROPERTY"  IS '애플리케이션 전역에서 사용되는 로케일 기반 프로퍼티 정보';
		COMMENT ON COLUMN "V2_LOCALIZED_PROPERTY"."LOCALE_CODE" IS '로케일 코드 값'; 
		COMMENT ON COLUMN "V2_LOCALIZED_PROPERTY"."PROPERTY_NAME" IS '프로퍼디 이름'; 
        COMMENT ON COLUMN "V2_LOCALIZED_PROPERTY"."PROPERTY_VALUE" IS '프로퍼티 값';
        
		
		CREATE TABLE V2_PROPERTY (
				  PROPERTY_NAME          VARCHAR2(100)   NOT NULL,
				  PROPERTY_VALUE         VARCHAR2(1024)  NOT NULL,
				  CONSTRAINT V2_PROPERTY_PK PRIMARY KEY (PROPERTY_NAME)
		); 		
        
		COMMENT ON TABLE "V2_PROPERTY"  IS '애플리케이션 전역에서 사용되는 프로퍼티 정보';
		COMMENT ON COLUMN "V2_PROPERTY"."PROPERTY_NAME" IS '프로퍼디 이름'; 
        COMMENT ON COLUMN "V2_PROPERTY"."PROPERTY_VALUE" IS '프로퍼티 값';
        
        
		CREATE TABLE MUSI_SEQUENCER (
		    SEQUENCER_ID           INTEGER NOT NULL,
		    NAME                   VARCHAR2(200) NOT NULL,
		    VALUE                  INTEGER NOT NULL,
		    CONSTRAINT MUSI_SEQUENCER_PK PRIMARY KEY (SEQUENCER_ID)
		); 			
		
		CREATE UNIQUE INDEX MUSI_SEQUENCER_NAME_IDX ON MUSI_SEQUENCER (NAME);		
        
		COMMENT ON TABLE "MUSI_SEQUENCER"  IS '애플리케이션 전역에서 사용되는 시퀀서 정보';
		COMMENT ON COLUMN "MUSI_SEQUENCER"."SEQUENCER_ID" IS '시퀀서 ID'; 
        COMMENT ON COLUMN "MUSI_SEQUENCER"."NAME" IS '시퀀서 이름';		
		COMMENT ON COLUMN "MUSI_SEQUENCER"."VALUE" IS '시퀀서 값';		
		