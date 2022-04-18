**free
//EJEMPLO DE UN FOREACH
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);  
                                                                   
dcl-s order_state char(10) dim(3);                                 
dcl-s state       char(20)  inz;                                   
                                                                   
exsr main;                                                    
*inlr = *on;
return;                                                    
                                                                   
begsr main;                                                   
   order_state(1) = 'Open';                                       
   order_state(2) = 'Active';                                     
   order_state(3) = 'Close';                                      
                                                                  
   for-each state in order_state;                                 
      dsply state;                                               
   endfor;                                                        
endsr;                                                             