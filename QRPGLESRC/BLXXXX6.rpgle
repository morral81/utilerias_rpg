**free
//EJEMPLO DE  OVERLOADING EN RPG
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);
                                                                 
dcl-s fechaiso  date;                                            
dcl-s fechanum  zoned(08) inz(20201103);                          
dcl-s fechachar char (08) inz('20201103');                        
dcl-s daynumber zoned(01) inz;                                    
                                                                                                                          
dcl-pr dayofweek zoned(1) overload(dow_date:dow_num:dow_char);   
                                                                 
//Inicio Programa                                                
exsr principal;                                                  
*inlr = *on;
return;
                                                      
begsr principal;                                      
     fechaiso  = d'2020-11-03';                       
                                                      
     daynumber = dayofweek(fechaiso);                 
     dsply ('Fecha         : '+%char(daynumber));     
     clear daynumber;                                 
                                                      
     daynumber = dayofweek(fechanum);                 
     dsply ('Fecha Numerica: '+%char(daynumber));     
     clear daynumber;                                 
                                                      
     daynumber = dayofweek(fechachar);                
     dsply ('Fecha Caracter: '+%char(daynumber));     
endsr;     

dcl-proc dow_date;                               
     dcl-pi *N zoned(1);                         
          workdate date(*iso) const;             
     end-pi;                                     
     dcl-c anysunday const(D'2015-12-27');       
     dcl-s worknum   zoned(7);                   
     dcl-s workday   zoned(1);                   
                                                 
     worknum = %diff(workdate:anysunday:*days);  
     workday = %rem(worknum:7);                  
                                                 
     if (workday < 1);                           
         return workday + 7;                     
     else;                                       
         return workday;                         
     endif;                                      
end-proc;   

dcl-proc dow_num;                                        
     dcl-pi *N zoned(1);                                 
          workdate2 zoned(8) const;                      
     end-pi;                                             
     dcl-c anysunday  const(D'2015-12-27');              
     dcl-s worknum    zoned(7);                          
     dcl-s workday    zoned(1);                          
     dcl-s fecha2     date;                              
     dcl-s fecha2char char(10) inz;                      
                                                         
     fecha2char  = %subst(%char(workdate2):1:4) + '-' +  
                   %subst(%char(workdate2):5:2) + '-' +  
                   %subst(%char(workdate2):7:2);         
                                                         
     fecha2 = %date(fecha2char:*ISO);                    
                                                         
     worknum = %diff(fecha2:anysunday:*days);            
     workday = %rem(worknum:7);                          
                                                         
     if (workday < 1);                                   
         return workday + 7;                             
     else;                                               
         return workday;                                 
     endif;                                              
end-proc;                                           
                                                    
dcl-proc dow_char;                                  
     dcl-pi *N zoned(1);                            
          workdate3 char(8) const;                  
     end-pi;                                        
     dcl-c anysunday  const(D'2015-12-27');         
     dcl-s worknum    zoned(7);                     
     dcl-s workday    zoned(1);                     
     dcl-s fecha2     date;                         
     dcl-s fecha2char char(10) inz;                 
                                                    
     fecha2char  = %subst(workdate3:1:4) + '-' +    
                   %subst(workdate3:5:2) + '-' +    
                   %subst(workdate3:7:2);           
                                                    
     fecha2 = %date(fecha2char:*ISO);               
                                                    
     worknum = %diff(fecha2:anysunday:*days);       
     workday = %rem(worknum:7);                     
                                                    
     if (workday < 1);                              
         return workday + 7;
     else;                       
         return workday;         
     endif;                      
end-proc;                        