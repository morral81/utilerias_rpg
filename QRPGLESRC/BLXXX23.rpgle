**free
//EJEMPLO DE VARIABLE ESTATICA
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);  
                                                                                                             
dcl-s i           uns(5);                                          
dcl-s globalcount zoned(3);                                        
                                                                   
//inicio programa
exsr main;                                                    
*inlr = *on;                                                       
return;
                                                       
begsr main;                                                   
   for i = 1 to 5;                                              
         procauto();                                              
   endfor;                                                      
endsr;                                                             
                                                                   
dcl-proc procauto;                                                 
   dcl-pi *n end-pi;                                           
   dcl-s autocount zoned(3);                                   
   dcl-s statcount zoned(3) static;                            
   statcount   +=1;                                        
   globalCount +=1;                                        
                                                         
   dsply ('autocount= '+%char(autocount)+', statcount='+%char(statcount)+        
          ', globalcount=' + %char(globalcount));          
end-proc;                                                      