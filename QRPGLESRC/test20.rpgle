**free
//Declaracion Pantalla
dcl-f test20 worktn extdec('DSGOGAMTJ1/TEST20') extfile(*extdesc) 
                                                indds(wsind);

//Declaracion Variables
dcl-s var1   char(20);
dcl-s exit00 char(01)
dcl-c ok     'S';

//Estructura para saber que tecla presiono
dcl-ds wsind qualified;
    f3 ind   pos(3);
end-ds;

//Inicio programa
exsr main;
*inlr = *on;
return;

//rutina principal
begsr main;
   dou exit00 = ok;
      wsmessage = 'hello world from Ibm i'
      extfmt data00;
      if (wsind.f3 = ok);
         exit00 = ok;
      endif;
   enddo;
endsr;