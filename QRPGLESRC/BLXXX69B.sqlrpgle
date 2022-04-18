**free
//EJEMPLO SE REALIZA UN SELECT DINAMICO PARA OBTENER UN DATO DE UNA TABLA
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*dmy) option(*nodebugio:*srcstmt);                        
ctl-opt pgminfo(*pcml:*module);                             
                                                            
// Declaracion Variables                                    
dcl-s sqlcmd  char (500) inz;                               
dcl-s usuario char (10);                                    
dcl-s fecha   zoned(08);                                    
dcl-s corney  char (50)  inz('SIMU202012180944030000020');  
dcl-s llave   char (50)  inz;                               
                                                            
// Inicio Programa                                          
exsr main;                                             
*inlr = *on;                                                
return;

begsr main;                                                                                                 
   sqlcmd = 'values (select cbmllave +                    
                       from aprocbm +                     
                      where cbmcorkey = ? +               
                      fetch first row only) into ?';      
                                                         
   exec sql prepare selectrecord from  :sqlcmd;
   exec sql execute selectrecord using :corney,     
                                       :llave;      
                                                      
   if (sqlcode = *zeros);              
   endif;                                            
endsr;                                                 