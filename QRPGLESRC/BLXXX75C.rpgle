**free
//EJEMPLO PARA FUNCION SPLIT
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*dmy) option(*nodebugio:*srcstmt:*nounref); 
ctl-opt fixnbr(*zoned) aut(*all);                                   
                                                                    
dcl-s input2  varchar(50) inz( 'field1,field2,"Third field",Last'); 
dcl-s field   varchar(15);                                          
                                                                    
exsr principal;                                                     
*inlr = *on;
return;
                                                                    
begsr principal;                                                    
  dsply input2;                                                     
  for-each field in %split(input2: ','); // Comma separator         
       dsply field;                                                 
  endfor;                                                           
endsr;                                                              