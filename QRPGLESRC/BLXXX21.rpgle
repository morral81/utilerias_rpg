**free
//EJEMPLO COMO RECIBE UN VECTOR DE PARAMETROS
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________ 
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);    
                                                                     
dcl-ds ejemarray dim(20) qualified;                                  
     array char(10);                                                 
end-ds;                                                              
                                                                     
dcl-s i zoned(3) inz(0);                                             
                                                                     
dcl-pi BLXXX21;                                                      
     array2 likeds(ejemarray) dim(20);                               
     bandera zoned(2);                                               
end-pi;                                                              
                                                                     
//Inicio Programa                                                    
exsr principal;                                                      
*inlr = *on;
return;             
                                                                     
begsr principal;                                                                                                    
     for i = 1 to %elem(ejemarray);  //despliega array  
          dsply array2(i).array;                                     
     endfor;                                                         
     dsply ('bandera: '+%char(bandera));     
endsr;                                       