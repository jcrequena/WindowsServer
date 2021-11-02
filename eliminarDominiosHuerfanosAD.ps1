#Eliminar datos en el dominio raíz de sus subdominios.
#Hay que realizar esto cuando se ha despromocionado un subdominio y en el dominio raíz
#queda infiormación del mismo

1.Limpiar los metadatos (por si existe información residual de los subdominios que se han despromocionado)
2.Abrir una consola cmd como Administrador
3.Ejecutar el comando ntdsutil y pulsar Enter.
4.Aparecerá en la consola esto --> ntdsutil: --> Hay que escribir metadata cleanup y pulsar Enter.
5.Aparecerá en la consola esto --> metadata cleanup: --> Hay que escribir remove selected domain <domain> y pulsar Enter, 
donde <domain> es el nombre del dominio a eliminar.
 Ejemplo: 
  remove selected domain subdominio.domino.es
6.Aparecerá en la consola esto --> metadata cleanup: --> Hay que escribir remove selected server <ServerName> y pulsar Enter, 
donde <ServerName> es el servidor a eliminar.
 Ejemplo: 
  remove selected server srv1.subdominio.domino.es
7.En el cuadro de diálogo Quitar configuración del servidor,revisad la información y la advertencia y, a continuación, 
  hay que hacer clic en Sí para quitar el objeto de servidor y los metadatos.
8.En este momento, Ntdsutil confirma que el controlador de dominio se quitó correctamente. 
 Si recibe un mensaje de error que indica que no se encuentra el objeto, es posible que el controlador de dominio se haya quitado anteriormente.
9.Escribe quit para salir.






#Fuente: https://docs.microsoft.com/en-US/troubleshoot/windows-server/identity/remove-orphaned-domains
