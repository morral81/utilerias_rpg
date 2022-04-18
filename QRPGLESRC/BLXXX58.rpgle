**free
//EJEMPLO DE UN FOREACH
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);           
                                                                            
dcl-s prices packed(15:5) dim(2);                                           
dcl-s price  packed(15:3);                                                  
                                                                            
exsr principal;                                                             
*inlr = *on;
return;                                                          
                                                                            
begsr principal;                                                            
   prices(1) = 5.279;                                                      
   prices(2) = 5.271;                                                      
                                                                           
   for-each price in prices;                                               
      dsply (%char(price));                                               
   endfor;                                                                 
                                                                           
   for-each(H) price in prices;                                            
      dsply (%char(price));                                               
   endfor;                                                                 
endsr;                                                                      