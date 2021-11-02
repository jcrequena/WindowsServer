#Eliminar datos en el dominio raíz de sus subdominios.
#Hay que realizar esto cuando se ha despromocionado un subdominio y en el dominio raíz
#queda infiormación del mismo

4.Limpiar los metadatos (por si existe información residual de los subdominios que se han despromocionado)
5.Abrir una consola cmd como Administrador
6.Ejecutar el comando ntdsutil y pulsar Enter.
7.Aparecerá en la consola esto --> ntdsutil: --> Hay que escribir metadata cleanup y pulsar Enter.
8.Aparecerá en la consola esto --> metadata cleanup: --> Hay que escribir remove selected domain <domain> y pulsar Enter, 
donde <domain> es el nombre del dominio a eliminar.
 Ejemplo: 
  remove selected domain subdominio.domino.es
9.Aparecerá en la consola esto --> metadata cleanup: --> Hay que escribir remove selected server <ServerName> y pulsar Enter, 
donde <ServerName> es el servidor a eliminar.
 Ejemplo: 
  remove selected server srv1.subdominio.domino.es
10.En el cuadro de diálogo Quitar configuración del servidor,revisad la información y la advertencia y, a continuación, 
  hay que hacer clic en Sí para quitar el objeto de servidor y los metadatos.
11.En este momento, Ntdsutil confirma que el controlador de dominio se quitó correctamente. 
 Si recibe un mensaje de error que indica que no se encuentra el objeto, es posible que el controlador de dominio se haya quitado anteriormente.
12.Escribe quit para salir.






#Fuente: https://docs.microsoft.com/en-US/troubleshoot/windows-server/identity/remove-orphaned-domains
