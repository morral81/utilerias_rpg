**free
//EJEMPLO DE FUNCION RANGE
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);     
                                                                      
dcl-s var1 zoned(2)  inz(25);                                        
                                                                     
//Inicio Programa                                                    
exsr principal;                                                      
*inlr = *on;                                                         
return;

begsr principal;                                                     
   if var1 in %range(1:50);                                         
      dsply 'si esta en rango';                                    
   else;                                                            
      dsply 'no esta en rango';                                    
   endif;                                                           
endsr;                                                               