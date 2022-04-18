**free
//EJEMPLO COMO MANDAR UN VECTOR DE PARAMETRO A OTRO PGM RPG
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________ 
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);   
                                                                    
dcl-ds ejemarray dim(20) qualified;                                 
     array       char(10);                                                
end-ds;                                                             
                                                                    
dcl-s bandera    zoned(02) inz;                                        
dcl-s i          zoned(03) inz;                                        
                                                                    
dcl-pr BLXXX21   extpgm;                                              
    array2       likeds(ejemarray) dim(20);                             
    *n           zoned(02);                                             
end-pr;                                                             
                                                                    
//Inicio Programa                                                   
exsr principal;                                                     
*inlr = *on;
return;                                                       

begsr principal;                                                                       
     for i = 1 to %elem(ejemarray);   //carga array  
          ejemarray(i).array = 'Juan' + %char(i);    
     endfor;                                         
                                                     
     bandera  = 99;                                  
     blxxx21(ejemarray:bandera);
endsr;