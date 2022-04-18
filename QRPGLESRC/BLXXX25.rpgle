**free
//EJEMPLO DE CONVERTIR MAYUSCULAS A MINUSCULAS Y AL CONTRARIO
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);        
                                                                         
dcl-s string    char(25) inz('pruebajuan');                              
dcl-s stringres char(25);                                                
                                                                         
//Inicio Programa                                                               
exsr main;                                                          
*inlr = *on;                                                             
return;

begsr main;                                                         
     dsply string;                                                       
     stringres = convamayusculas(string);                                
     dsply stringres;                                                    
                                                                         
     stringres = convaminusculas(stringres);                             
     dsply stringres;                                                    
endsr;     

//conviernte de minusculas a mayusculas                
dcl-proc convamayusculas;                              
     dcl-pi *n char(25);                               
         palabra char(25) const;                       
     end-pi;                                           
     dcl-c uppercase 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';     
     dcl-c lowercase 'abcdefghijklmnopqrstuvwxyz';     
                                                       
     return %xlate(lowercase:uppercase:palabra);       
end-proc;                                              
                                                       
//conviernte de mayusculas a minusculas                
dcl-proc convaminusculas;                              
     dcl-pi *n char(25);                               
         palabra char(25) const;                       
     end-pi;                                           
     dcl-c uppercase 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';     
     dcl-c lowercase 'abcdefghijklmnopqrstuvwxyz';     
                                                       
     return %xlate(uppercase:lowercase:palabra);       
end-proc;                                              