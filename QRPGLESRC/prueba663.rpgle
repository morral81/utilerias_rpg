**free

dcl-s variable1 char(10) inz('HOLA JUAN');

exsr main;
*inlr = *on;
return;

begsr main;
   dsply variable1;
endsr;