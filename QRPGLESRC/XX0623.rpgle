**free                                                                
//EJEMPLO DE SENTENCIA FOREACH
//NOMBRE: JUAN GOMEZ
//15-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd);                                 
ctl-opt option(*nodebugio:*srcstmt:*nounref);                         
ctl-opt fixnbr(*zoned) aut(*all);                                     
                                                                      
dcl-s somevalue  char(10) ;                                           
dcl-s array      char(02) dim(5) ;                                    
array = %list('A' : 'B' : 'C' : '' : 'E') ;                           
                                                                      
//Inicio Programa                                                     
exsr main;                                                            
*inlr = *on;                                                          
return;                                                               
                                                                      
begsr main;                                                           
  for-each somevalue in array ;                                       
      dsply somevalue;                                                
  endfor ;                                                            
                                                                      
  for-each SomeValue in %list('AUSTIN' : 'DALLAS' : 'HOUSTON') ;      
    dsply SomeValue ;                                                 
  endfor ;                                                            
endsr;                                                                