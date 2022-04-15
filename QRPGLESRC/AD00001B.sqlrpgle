**free
//EJEMPLO PARA IMPRIMIR EN EL JOBLOG
//NOMBRE: JUAN GOMEZ
//15-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*NO);                                                
                                                                       
dcl-s valor  char(30)  inz;                                            
dcl-s i      zoned(09) inz(1);                                         
                                                                       
dcl-ds *n psds;                                                        
     usuario char (10) pos (254);                                      
end-ds;                                                                
                                                                                                                                              
exsr main;
*inlr = *on;
return;                                                        
                                                                       
begsr main;                                                       
     //dow (1=1);                                                        
       // exec sql call systools.lprintf('Hello '||current_user);      
          valor = 'Hello '+%char(i)+' '+ %trim(usuario);               
          exec sql call systools.lprintf(:valor);                      
                                                                       
          exec sql call qsys2.qcmdexc('dlyjob dly(10)');               
          i +=1;                                                       
     //enddo;   
endsr;  