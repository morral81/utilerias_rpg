**free
//PASA DE MINUSCULAS A MAYUSCULAS POR SQL EMBEBIDO
//NOMBRE: JUAN GOMEZ
//15-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*NO);                         
                                                
dcl-s string  char(20) inz('sql statement');    
dcl-s prueba  char(20) inz;                     
                                                                                                                  
//Inicio Programa                               
exsr main;                                 
*inlr = *on;
return;                 
                                                
begsr main;                                                                              
   exec sql set :string = upper(:string);     
   dsply string;                                                   
endsr;                                          