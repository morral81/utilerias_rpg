**free
//EJEMPLO PARA REALIZAR IN SELECT DINAMICO Y OBTENER UN REGISTRO
//NOMBRE: JUAN GOMEZ
//15-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*dmy) option(*nodebugio:*srcstmt);             
                                                                                                                               
dcl-s sqlcmd  char(500) inz;                                                  
                                                                              
dcl-ds dsestructura extname('TABLA') qualified end-ds;                         
                                                                                                                       
exsr main;                                                               
*inlr = *on;                                                                  
return;

* Principal                                                                   
begsr principal;                                                              
   sqlcmd = 'values (select * from ESQUEMA/TABLA +                            
                     where campo1 = valor1 +                                    
                       and campo2 = valor2 +                                      
                     fetch first row only  +                                   
                     ) into ?';                                               
                                                                              
   exec sql prepare selectrecord from  :sqlcmd;                               
   exec sql execute selectrecord using :dsestructura;                            
                                                                              
   dsply ('Serie: '+%char(dsestructura.campo1));
   dsply ('Linea: '+%char(dsestructura.campo2));   
endsr;                                          