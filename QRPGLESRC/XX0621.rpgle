**free
//EJEMPLO DE COMO IR CONCATENANDO UNA VARIABLE CON EL +=
//NOMBRE: JUAN GOMEZ
//16-04-2022
//_____________________________________________________________________________                                                          
ctl-opt dftactgrp(*no) datedit(*ymd) fixnbr(*zoned) aut(*all);                                   
ctl-opt option(*nodebugio:*srcstmt:*nounref);                       
                                            
dcl-s sqlcmd varchar(52) inz('select * from guav1.control');        
                                                                                                                           
//Inicio Programa                                                   
exsr main;                                                          
*inlr = *on;                                                        
return;                                                             
                                                                    
begsr main;                                                         
   sqlcmd += ' where consts = ?';                                   
   dsply sqlcmd;                                                    
endsr;                                                              