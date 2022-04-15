**free
ctl-opt dftactgrp(*NO);                                         
                                                                
dcl-ds dstabla extname('TABLANOM') qualified end-ds;       
                                                                
// Inicio Programa                                               
exsr main;                                                 
*inlr = *on;                                                    
return;         

begsr main;                                                
     opencursor();                                              
     dow fetchnext();                                           
         //logica de negocio
         clear dstabla;                                      
     enddo;                                                     
     closecursor();                                             
endsr;                                                          
                                                                
dcl-proc opencursor;                                            
     dcl-pi *n end-pi;                                          
     exec sql declare c1 scroll cursor for                      
          select * from ESQUEMA/TABLA;                    
     exec sql open c1;                                          
end-proc;                                                       

dcl-proc fetchnext;                                      
     dcl-pi *n ind end-pi;                               
     exec sql fetch next from c1 into: dstabla;       
                                                         
     if (sqlcode = *zeros);                              
          return *on;                                    
     else;                                               
          return *off;                                   
     endif;                                              
end-proc;                                                
                                                         
dcl-proc closecursor;                                    
     dcl-pi *n end-pi;                                   
     exec sql close c1;                                  
end-proc;                                                