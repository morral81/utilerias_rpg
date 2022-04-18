**free
//EJEMPLO PARA DEBUGEAR Y VER LOS VALORES DE LA CONSTANTES
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no);                                     
ctl-opt debug(*constants);                                  
                                                            
dcl-s nombre    char(20) inz('JUAN MANUEL GOMEZ');          
dcl-c constant1 'This is a constant';                       
dcl-c constant2 'Another constant' ;                        
                                                            
exsr main;                                             
*inlr = *on;                                                
return;

begsr main;                                            
     dsply nombre;                                          
endsr;                                                      