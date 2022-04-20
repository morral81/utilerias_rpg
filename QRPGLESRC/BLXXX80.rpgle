**free
//EJEMPLO PARA VALIDA CORREO CON REGEX LEYENDO DESDE UN DATAARA
//NOMBRE: JUAN GOMEZ
//20-04-2022
//_____________________________________________________________________________
ctl-opt dftactGrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt:*nounref);              
ctl-opt fixnbr(*zoned) aut(*all);                   
                                                    
//declaracion de variables                          
dcl-s email  char (50) inz;                         
                                                    
dcl-ds vld8email dtaara len(1024) end-ds;           
                                                    
exsr principal;                                     
*inlr = *on;
return;
                                                    
begsr principal;                                    
 //email = 'morral81@hotmail.com';                  
   email = 'morral81hotmail.com';                   
   if (email_is_valid(email));                      
        dsply 'correo correcto';                    
   else;                                            
        dsply 'correo incorrecto';                  
   endif;                                           
endsr;                                              

dcl-proc email_is_valid;                             
   dcl-pi *n ind;                                    
        myemail like(email);                         
   end-pi;                                           
   dcl-s mycount uns(10);                            
   dcl-s emailvalidaregex  varchar(1024);            
                                                     
   in vld8email;                                     
   emailvalidaregex = %trim(vld8email);              
                                                     
   exec sql set :mycount = regexp_count(:myemail,    
                            :emailvalidaregex);      
                                                     
   if (mycount = 1);                                 
        return *on;                                  
   else;                                             
        return *off;                                 
   endif;                                            
end-proc;                                            