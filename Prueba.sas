/********************************************\
| Calculo de la altura en cm.                |
| khhfdslnvldknvkdlv                         |
| Autor: Jose
| Fecha actualizacion: 77777
\********************************************/ 

/*A�ado este comentario */

title 'Buenos dias';

data work.myclass;
  set sashelp.class;
  alturacm=height*2.54; /* msbckjsdnbcknc */
run;

proc print data=myclass;
run;

proc means data=myclass;
   var alturacm;
run;