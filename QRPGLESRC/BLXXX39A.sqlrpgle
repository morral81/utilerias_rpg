**free
ctl-opt dftactgrp(*NO);                                           
                                                                  
dcl-ds dstabla extname('NOMBRETABLA') qualified end-ds;         
dcl-s  sqlsuccess char(05) inz('00000');                          
                                                                  
//Inicio Programa                                                 
exsr main;                                                   
*inlr = *on;                                                      
return;  

begsr main;                                                  
   if opencursor()= sqlsuccess;                                 
      dow fetchnextrow()= sqlsuccess;                         
         clear dstabla;                                  
      enddo;                                                  
      closecursor();                                          
   endif;                                                       
endsr;                                                            
                                                                  
dcl-proc opencursor;                                              
     dcl-pi *n char(05) end-pi;                                   
     exec sql declare c1 scroll cursor for                        
          select * from esquema/tabla;                      
     exec sql open c1;                                            

      return sqlstt;                                  
end-proc;                                            
                                                     
dcl-proc fetchnextrow;                               
     dcl-pi *n char(05)  end-pi;                     
     exec sql fetch next from c1 into: dstabla;   
     return sqlstt;                                  
end-proc;                                            
                                                     
dcl-proc closecursor;                                
     dcl-pi *n char(05) end-pi;                      
     exec sql close c1;                              
     return sqlstt;                                  
end-proc;                                                