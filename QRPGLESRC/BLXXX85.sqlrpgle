**free
//EJEMPLO REGRESA LA FECHA ACTUAL RESTANDOLE 6 DIAS
//        EL FORMATO DE LA FECHA ES AAAAMMDD
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactGrp(*no);                                             
                                                                    
dcl-s fechanum  zoned(08) inz;                                      
dcl-s dias      zoned(05) inz(06);                                  

//Inicio Prograama                                                          
exsr main;                                                     
*inlr = *on;
return;                                                       
                                                                    
begsr main;                                                    
     fechanum = calculafecha(dias);                                 
     dsply fechanum;                                                
endsr;                                                              
                                                                    
dcl-proc calculafecha;                                              
   dcl-pi *n zoned(08);                                           
         dias zoned(05);                                           
   end-pi;                                                        
   dcl-s fechaact timestamp inz;                                  
                                                                  
   exec sql set : fechaact = current_timestamp - :dias days;      
                                                                  
   if (sqlcode = *zeros);                                         
      return %int(%subst(%char(fechaact):1:4) + %subst(%char(fechaact):6:2) +    
                  %subst(%char(fechaact):9:2));    
   endif;                                                
end-proc;                                                  