**free
//EJEMPLO PARA CONVERTIR DE MAYUSCULAS A MINUSCULAS
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*ymd) option(*nodebugio:*srcstmt);

dcl-s mixedcasestring char(10) inz('UpPeRcaSE');            
dcl-s lowercasestring char(10) inz;                         
dcl-s uppercasestring char(10) inz;                         

//Inicio Programa                                                   
exsr main;                                           
*inlr = *on;
return;   

begsr main;
   // Converting the full string to lowercase                  
   lowercasestring = %lower('LOWERCASE');         
   dsply lowercasestring ;                                     
                                                                                                                          
   // Converting the portion of a string to lowercase          
   lowercasestring = %lower('LOWERCASE' : 2);     //Lowercase  
   dsply lowercasestring ;                                     
                                                                                                
   // Converting the portion of a string to lowercase          
   lowercasestring = %lower('LOWERCASE' : 2 : 4); //LowerCASE  
   dsply lowercasestring;                                      
                                                                                                                   
   // Converting the string to uppercase                       
   uppercasestring = %upper(MixedCaseString); //UPPERCASE      
   dsply uppercasestring;     
endsr;