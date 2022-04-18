**free
//EJEMPLO PARA DEBUGEAR Y VER LOS VALORES DE LA CONSTANTES
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt); 
                                                                  
dcl-s inrange  ind   inz(*Off);                                   
                                                                  
//Inicio Programa                                                 
exsr main;                                                   
*inlr = *on;
return;                                                      
                                                                  
begsr principal;                                                  
     if %date() in %range(d'2021-06-01':d'2021-06-02') ;          
          inrange = *on;                                          
     endif;                                                       
     dsply ('Date: '+%char(inrange));                             
endsr;                                                            