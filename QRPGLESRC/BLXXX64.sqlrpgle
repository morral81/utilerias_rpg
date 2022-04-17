**free
//EJEMPLO PARA REALIZAR IN SELECT DINAMICO Y OBTENER LOS VALORES
//NOMBRE: JUAN GOMEZ
//16-04-2022
//_____________________________________________________________________________   
ctl-opt dftactgrp(*no) datedit(*dmy) fixnbr(*zoned) aut(*all);                                         
ctl-opt option(*nodebugio:*srcstmt:*nounref);                                  
                                                                                               
dcl-s cantidad  zoned(15) inz;                                                 
dcl-s sqlcmd    char(500) inz;                                                 
                                                                                
//Inicio Programa                                                             
exsr main;                                                                
*inlr = *on;                                                                   
return;

begsr main;                                                               
   sqlcmd = 'values (select count(*) from esquema/tabla) into ?';         
                                                                                
   exec sql prepare selectrecord from  :sqlcmd;                                
   exec sql execute selectrecord using :cantidad;                              
                                                                                
   dsply ('Cantidad Registros: '+%char(cantidad));                             
endsr;