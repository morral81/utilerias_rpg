**free
//EJEMPLO PARA FUNCION BASE64
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no);                                        
ctl-opt option(*nodebugio:*srcstmt);                           
                                                               
//dcl-s locjson    sqltype(clob:100000) ccsid(*utf8);          
//dcl-s locbase64  sqltype(clob:100000) ccsid(*utf8);          
dcl-s locjson    sqltype(clob:100000);                         
dcl-s locbase64  sqltype(clob:100000);                         
                                                               
exsr principal;                                                
*inlr = *on;
return;                                                  
                                                               
begsr principal;                                               
     exec sql set: locjson = json_object(                      
                   'data' value json_array(                    
                   json_object(                                
                   'id'   value 1 format json,                 
                   'name' value 'Rajesh')));                   
                                                               
     exec sql set: locbase64 = qsys2.base64_encode(:locjson);  
                                                               
endsr;                                                         