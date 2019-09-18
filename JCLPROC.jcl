//SORTJCL JOB  1,REGION=0M,NOTIFY=Z00645                                
//*---------------------------------------------------------------------
//* PROC IN JOB                                                         
//* NAME: AUGUSTO LUIZ SILVA                                            
//* FUNCTION: KNOWS HOW PROC FUNCS IN JCL                               
//* DATE: 15.09.2019                                                    
//* COUNTRY: BRAZIL                                                     
//*---------------------------------------------------------------------
//* USANDO PROCEDIMENTO NO JCL                                          
//* AO INVES DE MANDAR EXECUTAR UM PGM, PODE EXECUTAR UMA PROCEDURE     
//* QUE CONTEM UM PGM (TBM SOBRESCREVE PARAMETROS)                      
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//MYSORT  PROC                                                          
//SORT1   EXEC PGM=SORT                                                 
//SORTIN    DD *                                                        
Z $ 5                                                                   
Y * 2                                                                   
X # 4                                                                   
A @ 1                                                                   
B + 3                                                                   
//SORTOUT DD SYSOUT=*                                                   
//SYSOUT  DD SYSOUT=*                                                   
//SYSIN   DD *                                                          
  SORT FIELDS=(1,1,CH,A)                                                
//        PEND                                                          
//*---------------------------------------------------------------------
//STEP1   EXEC MYSORT                                                   
//*---------------------------------------------------------------------
//STEP2   EXEC MYSORT                                                   
//SORT1.SYSIN DD *                                                      
  SORT FIELDS=(3,1,CH,A)                                                
//*---------------------------------------------------------------------
//STEP3   EXEC MYSORT                                                   
//SORT1.SYSIN DD *                                                      
  SORT FIELDS=(5,1,CH,A)                                                