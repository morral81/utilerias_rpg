**free
//EJEMPLO DE UN FOREACH
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt)
                                                                
dcl-s somevalue char(10)  inz;                                  
                                                                
//Inicio programa                                               
exsr main;                                                 
*inlr = *on;
return;                                         
                                                                
begsr main;                                                
    for-each somevalue in %list('AUSTIN':'DALLAS':'HOUSTON');   
        dsply somevalue;                                        
    endfor;                                                     
endsr;                                                          