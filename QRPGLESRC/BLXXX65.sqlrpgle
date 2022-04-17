**free
//EJEMPLO PARA REALIZAR IN SELECT DINAMICO Y OBTENER LOS VALORES
//NOMBRE: JUAN GOMEZ
//15-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*dmy) fixnbr(*zoned) aut(*all);                      
ctl-opt option(*nodebugio:*srcstmt:*nounref);              

dcl-s maximo  zoned(10) inz;                               
dcl-s sqlcmd  char(500) inz;                               
                                                           
//Inicio de Programa
exsr main;                                            
*inlr = *on;                                               
return;
                                                
begsr principal;                                           
   sqlcmd = 'values (select max(blhinumcon) +              
             from esquema/tabla) into ?';             
                                                           
   exec sql prepare selectrecord from  :sqlcmd;            
   exec sql execute selectrecord using :maximo;            
                                                           
   dsply ('Numero mas alto: '+%char(maximo));  
endsr;