alter table RMGR.RLSMGR_OBJECTS add constraint RLSMGR_OBJTYPES_FK foreign key (  OBJ_TYPE_ID ) 
    references RMGR.RLSMGR_OBJ_TYPES( OBJ_TYPE_ID );
    
alter table RMGR.RLSMGR_OBJECTS add constraint RLSMGR_OBJAREA_FK foreign key ( OBJ_AREA_ID   ) 
    references RMGR.RLSMGR_AREAS ( AREA_ID  );                                                                                                                                                                                                                    
    end if;
    command := command || ' NOLOGGING PARALLEL 16 COMPUTE STATISTICS '; 
    --command := command || ' NOLOGGING COMPUTE STATISTIC