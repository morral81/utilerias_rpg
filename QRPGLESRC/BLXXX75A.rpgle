**free
//EJEMPLO PARA FUNCION SPLIT
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactgrp(*no) datedit(*dmy) option(*nodebugio:*srcstmt:*nounref);                                  
ctl-opt fixnbr(*zoned) aut(*all);                                             
                                                                              
dcl-s string  char(100) inz('"Simon","Hutchinson","RPGPGM.COM",1');           
dcl-s wkarray char(10)  dim(10);                                              
dcl-s i       zoned(3)  inz;                                                  
                                                                              
exsr principal;                                                               
*inlr = *on;
return;
                                                                              
begsr principal;                                                              
   //string  = %scanrpl('"':'':string);                                       
   //wkarray = %split(string:',') ;                                                                                                               
   wkarray = %split(%scanrpl('"':'':string):',');                           
                                                                           
   for i = 1 to %elem(wkarray);                                             
      if wkarray(i) <> *blanks;                                            
            dsply wkarray(i);                                               
      endif;                                                               
   endfor;                                                                  
endsr;                                                                        