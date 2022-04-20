**free
//EJEMPLO PARA BASE64
//EJEMPLO OBTIENE TIMESTAMP POR INSTRUCCION SQL
//20-04-2022
//_____________________________________________________________________________
ctl-opt dftactGrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt:*nounref);                     
ctl-opt fixnbr(*zoned) aut(*all);                        
                                                         
dcl-s fechaactual timestamp inz;                         
                                                         
exsr principal;                                          
*inlr = *on;
return;                                             
                                                         
begsr principal;                                                                                               
   exec sql set :fechaactual = current_timestamp;                                                          
   dsply fechaactual;                                   
                                                      
   exec sql set :fechaactual = now();                   
   dsply fechaactual;                                   
endsr; 
