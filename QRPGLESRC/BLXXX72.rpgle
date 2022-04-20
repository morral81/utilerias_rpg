**free
//EJEMPLO PARA BASE64
//NOMBRE: JUAN GOMEZ
//20-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no);                        
ctl-opt option(*nodebugio:*srcstmt);           
ctl-opt bnddir('BASE64':'QC2LE');              
                                               
/copy BASE64_H                                 
                                               
dcl-s input  char(06) inz;                     
dcl-s output char(08) inz;                     
                                               
exsr principal;                                
*inlr = *on;
return;
                                               
begsr principal;                               
     input  = x'61626b3735';                   
     output = *blanks;                         
                                               
     base64_encode(%addr(input)                
                   :%len(%trimr(input))        
                   :%addr(output)              
                   :%size(output));            
                                               
     dsply output;                             
endsr;                                         