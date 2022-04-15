**free
//EJEMPLO PARA IMPRIMIR EN EL JOBLOG
//NOMBRE: JUAN GOMEZ
//15-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);   

//Declaracion Variables                                                   
dcl-s fechaiso     date;                                            
dcl-s numdia       zoned(02) inz;                                        
dcl-s nombredia    char (09) inz;                                         
                                                                    
//Inicio Programa                                     
exsr main;                                                     
*inlr = *on;
return;                                                        
                                                                    
begsr main;                                                    
     fechaiso  = d'2022-04-15';                                     
     nombredia = nameofday(fechaiso);                               
     dsply nombredia;                                               
endsr;                                                              
                                                                    
dcl-proc nameofday;                                                 
     dcl-pi *n     char(09);                                             
          workdate date(*iso);                                      
     end-pi;                                                        
     dcl-ds namedata;                                               
          d1 char(09) inz('Lunes');                                  
          d2 char(09) inz('Martes');   
          d3 char(09) inz('Miercoles');             
          d4 char(09) inz('Jueves');                
          d5 char(09) inz('Viernes');               
          d6 char(09) inz('Sabado');                
          d7 char(09) inz('Domingo');               
                                                   
          name char(9) dim(07) pos(1);              
     end-ds;                                       
                        
     return name(dayofweek(workdate));            
end-proc;                                          
                                                   
dcl-proc dayofweek;                                
     dcl-pi *n     zoned(01);                           
          workdate date(*iso);                     
     end-pi;                                       
     dcl-c anysunday const(D'2015-12-27');         
     dcl-s worknum   zoned(07);                     
     dcl-s workday   zoned(01);                     
                                                   
     worknum = %diff(workdate:anysunday:*days);                                  
     workday = %rem(worknum:7);      
                                     
     if (workday < 1);               
         return workday + 7;         
     else;                           
         return workday;             
     endif;                          
end-proc;                            