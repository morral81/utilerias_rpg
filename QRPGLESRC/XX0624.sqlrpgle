**free
//EJEMPLO PARA MANEJAR LOS ALIAS EN LA DECLARACION DE ESTRUCTURA
//NOMBRE: JUAN GOMEZ
//15-04-2022
//_____________________________________________________________________________
dcl-ds dsmytable2 extname('ESQUEMA/MYTABLE2') alias qualified end-ds;   
                                                                                                                                              
//Inicio Programa                                                      
exsr main;                                                             
*inlr = *on;                                                           
return;                                                                
                                                                       
begsr main;                                                            
  exec sql select * into: dsmytable2                                   
             from esquema.mytable2;                                       

  if (sqlcode = *zeros);                                               
        dsply DSMYTABLE2.THIRD_COLUMN;                                 
  endif;                                                               
endsr;                                                                 