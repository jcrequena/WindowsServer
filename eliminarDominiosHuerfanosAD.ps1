#Eliminar datos en el dominio raíz de sus subdominios.
#Hay que realizar esto cuando se ha despromocionado un subdominio y en el dominio raíz
#queda infiormación del mismo

1.Limpiar los metadatos (por si existe información residual de los subdominios que se han despromocionado)
2.Abrir una consola cmd como Administrador
3.Ejecutar el comando ntdsutil y pulsar Enter.
4.Aparecerá en la consola esto --> ntdsutil: --> Hay que escribir connections y pulsar Enter.
5.Aparecerá en la consola esto --> connections: --> Hay que escribir connect to server <ServerName> (donde <ServerName> es el Controlador de dominio a donde nos conectaremos para limpiar el AD. Pulsar Enter)
connect to server orion
6.Aparecerá en la consola esto --> server connections: --> Hay que escribir quit y pulsar Enter.
7.Aparecerá en la consola esto --> metadata cleanup: --> Hay que escribir select operation target y pulsar Enter.
8.Aparecerá en la consola esto --> select operation target: --> Hay que escribir list domains y pulsar Enter.
9.Hay que escribir --> select operation target: select domain % (donde % es el número que identifica al dominio donde se encuentra el Controlador de dominio a eliminar.)
10.Hay que escribir --> select operation target: list sites (Lista los sites).
11. Hay que escribir --> select operation target: select site % (donde % es el número que identifica el site donde se encuentra el Controlador de dominio a eliminar).
12. Hay que escribir --> select operation target: list servers in site (Lista los Controladores de dominios en el site seleccionado anteriormente).
13. Hay que escribir --> select operation target: select server % (donde % es el número que identifica al Controlador de dominio a eliminar).
14. Hay que escribir --> quit.
15. Hay que escribir -->  remove selected server. Debemos aceptar el mensaje que nos informa que eliminaremos un DC.
16. Escrir quit para salir.


#Fuente: https://docs.microsoft.com/en-US/troubleshoot/windows-server/identity/remove-orphaned-domains
