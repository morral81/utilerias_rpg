**free
//EJEMPLO PARA FUNCION SPLIT
//NOMBRE: JUAN GOMEZ
//20-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*dmy) option(*nodebugio:*srcstmt:*nounref);                                
ctl-opt fixnbr(*zoned) aut(*all);                                      
                                                                       
dcl-s string  char(100)                                                
      inz('RPGPGM is a website that provides stories about IBMi') ;    
dcl-s wkarray char(10) dim(10);                                        
dcl-s i       zoned(3) inz;                                            
                                                                       
exsr principal;                                                        
*inlr = *on;
return;
                                                                       
begsr principal;                                                                                                                       
   wkarray = %split(string);                                         
                                                                     
   for i = 1 to %elem(wkarray);                                      
      dsply wkarray(i);                                             
   endfor;                                                           
endsr;                                                                 