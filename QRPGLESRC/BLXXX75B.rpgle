**free
//EJEMPLO PARA FUNCION SPLIT
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*dmy);                                
ctl-opt option(*nodebugio:*srcstmt:*nounref);                        
ctl-opt fixnbr(*zoned) aut(*all);                                    
                                                                     
dcl-s input1  varchar(50) inz( 'Words and still more words');        
dcl-s field   varchar(15);                                           
                                                                     
exsr principal;                                                      
*inlr = *on;
return;                                                     
                                                                     
begsr principal;                                                     
  dsply input1;                                                      
  for-each field in %Split(input1);// By default splits on spaces    
       dsply field;                                                  
  endfor;                                                            
endsr;                                                               