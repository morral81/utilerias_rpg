**free
//EJEMPLO Programa para leer dtaara 
//NOMBRE: JUAN GOMEZ
//18-04-2022
//_____________________________________________________________________________
ctl-opt dftactGrp(*no) datedit(*ymd);                           
ctl-opt option(*nodebugio:*srcstmt:*nounref);                   
ctl-opt fixnbr(*zoned) aut(*all);                               
                                                                
 //para hacer la prueba se creo la siguiente dtaara             
 // CRTDTAARA DTAARA(QTEMP/PPZ500D) TYPE(*CHAR) LEN(100) +      
//       VALUE('abcdefghijklmnopqrstuvwxyz01234567890')         
                                                                
                                                                
 // se puede ver lo valores cagados con el siguiente comando                                                             
 // DSPDTAARA DTAARA(QTEMP/PPZ500D)                             
                                                                
dcl-ds PPZ500D dtaara len(100);                                 
      char25   char(5) pos(25);                                 
end-ds ;                                                        
                                                                
exsr main;                                                 
*inlr = *on;
return;                                                   

begsr main; 
   in PPZ500D;   
endsr;           