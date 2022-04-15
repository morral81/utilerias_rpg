**free
ctl-opt dftactgrp(*NO);                                
                                                       
dcl-s string char(20) inz('SQL STATEMENT');            
                                                                                                       
//Inicio Programa                                      
exsr main;                                        
*inlr = *on;                                           
return;  

begsr main;                                                                                     
     exec sql set :string = lower(:string);            
     dsply string;                                     
endsr;                                                 
