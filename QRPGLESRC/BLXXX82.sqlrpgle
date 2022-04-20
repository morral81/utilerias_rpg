**free
ctl-opt dftactGrp(*no) datedit(*ymd);                          
ctl-opt option(*nodebugio:*srcstmt:*nounref);                  
ctl-opt fixnbr(*zoned) aut(*all);                              
                                                               
//declaracion de variables                                     
dcl-ds dstabla extname('TABLA') qualified end-ds;      
                                                               
dcl-s sqlsuccessful ind;                                   
                                                               
exsr main;                                                
*inlr = *on;
return;                                                
                                                               
begsr main;                                               
   exec sql declare c1 cursor for select * from esquema/tabla;                                                
   exec sql open c1;
                                                            
   sqlsuccessful = (sqlcode = *zeros);                      
                                                            
   dow sqlsuccessful;                                       
      exec sql fetch c1  into: dstabla;

      sqlsuccessful = (sqlcode = *zeros);   
      if sqlsuccessful;                      
         dsply 'entro a if';  //va logica de negocio        
      endif;                              
   enddo;                                    
   exec sql close c1;                        
endsr;                                          