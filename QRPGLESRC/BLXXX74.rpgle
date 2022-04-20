**free
//EJEMPLO PARA BASE64
//NOMBRE: JUAN GOMEZ
//20-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) option(*nodebugio:*srcstmt);                               
ctl-opt bnddir('BASE64':'QC2LE');                      
                                                       
/copy BASE64_H                                         
                                                       
dcl-s input  char(08) inz;                             
dcl-s output char(10) inz;                             
                                                       
exsr principal;                                        
*inlr = *on;                                           
                                                       
begsr principal;                                       
                                                       
     input =  'YWJrNzU=';                              
                                                       
  // declen = base64_decode(%addr(input)               
              base64_decode(%addr(input)               
                            :%len(%trimr(input))       
                            :%addr(output)             
                            :%size(output));           
                                                       
endsr;                                                 