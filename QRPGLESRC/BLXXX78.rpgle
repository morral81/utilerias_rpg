**free
//EJEMPLO  OTRA MANERA DE OBTENER EL NOMBRE DEL JOB
//NOMBRE: JUAN GOMEZ
//16-04-2022
//_____________________________________________________________________________ 
ctl-opt dftactgrp(*no);                     
                                                          
dcl-s puser   char(10) inz(*user);          
                                            
exsr main;                             
*inlr = *on;
return;
                                            
begsr main;                            
     dsply  getcuruser();                   
     dsply  puser;                          
endsr;                                      
                                            
dcl-proc getcuruser;                        
     dcl-pi *n char(10) end-pi;             
     dcl-s curuser char(10) inz(*user);                                       
     return curuser;                        
end-proc;                                   