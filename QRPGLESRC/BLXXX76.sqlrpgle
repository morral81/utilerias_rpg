**free
//EJEMPLO DE COMO EJECUTAR UN JOIN
//NOMBRE: JUAN GOMEZ
//16-04-2022
//_____________________________________________________________________________     
ctl-opt dftactgrp(*no);                                  
                                                         
dcl-s numid        zoned(09)  inz(31);                   
                                                         
dcl-ds dsdatos qualified;                                
      departamento zoned(09)  inz;                       
      nombredep    char (20)  inz;                       
      nombreemp    char (20)  inz;                       
end-ds;                                                  
                                                         
//Inicio de Programa                                      
exsr principal;                                          
*inlr = *on;
return;                                     
                                                         
begsr principal;

    exec sql select a.departamentoid, a.nombre, b.nombre      
              into: dsdatos                                   
              from paso.empleados a                           
        inner join paso.departamen b                          
                on a.departamentoid = b.id                    
             where a.departamentoid =: numid;                 
                                                              
    if (sqlcode = *zeros);                                    
    endif;                                                    
endsr;                                                        