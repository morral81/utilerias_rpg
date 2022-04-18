**free
//EJEMPLO DE  OVERLOADING EN RPG
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no);                                   
                                                          
dcl-ds *N;                                                
     tiposervicio  char(10);                              
     tipo1         char(02) overlay(tiposervicio);        
     tipo2         char(02) overlay(tiposervicio:3);      
     tipo3         char(02) overlay(tiposervicio:5);      
     tipo4         char(02) overlay(tiposervicio:7);      
     tipo5         char(02) overlay(tiposervicio:9);      
end-ds;                                                   

//Inicio Programa                                                   
exsr principal;                                           
*inlr = *on;
return;                                           
                                                          
begsr principal;                                          
     tiposervicio = '1M2A3E5R8W';                         
     dsply tipo1;                                         
     dsply tipo2;                                         
     dsply tipo3;                                         
     dsply tipo4;                                         
     dsply tipo5;                                         
endsr;                                                    