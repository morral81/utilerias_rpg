**free       
//EJEMPLO DE COMO OBTENER EL NOMBRE DEL PGM O DEL SUBPROCEDIMIENTO CON %PROC
//NOMBRE: JUAN GOMEZ
//16-04-2022
//_____________________________________________________________________________                                            
ctl-opt datedit(*ymd) option(*nodebugio:*srcstmt) dftactgrp(*No);  
                                                       
dcl-s procedurename1 char(100);                        
                                                       
dcl-ds pgmds psds qualified;                           
     procName *proc;                                   
end-ds ;                                               
                                                       
exsr principal;                                        
*inlr = *On;                                           
return;                                                
                                                       
begsr principal;                                       
     procedureName1 = %proc();                         
     someprocedurethatdoessomething();                 
endsr;                                                 
                                                                            
dcl-proc SomeProcedureThatDoesSomething ;              
     dcl-pi *n end-pi;                                 
      dcl-s procedurename2 char(100);                  

      procedurename2 = %proc();   
    //dump(a) ;                   
end-proc ;                        