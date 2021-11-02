#Si se tienen varios servidores añadidos al dominio, hay que asegurarse que replican correctamente
#para ello hay que realizar la replicación desde la máquina principal y posteriormente se accede a la consola cmd o powershell
#Esto hay que realizarlo antes de promover el nuevo servidor a controlador de dominio


repadmin /showrepl

repadmin /ReplSummary
dcdiag /test:replications

repadmin /replsum * /bysrc /bydest /sort:delta


#Comando para que se sincronizen todos los controladores de dominio del dominio
repadmin /syncall /AdeP

#Generar informe en formato csv  con el estado de replicación
repadmin /showrepl * /csv > showrepl.csv
#Referencia: https://docs.microsoft.com/es-es/windows-server/identity/ad-ds/manage/troubleshoot/troubleshooting-active-directory-replication-problems
