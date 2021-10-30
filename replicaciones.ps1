#Si se tienen varios servidores añadidos al dominio, hay que asegurarse que replican correctamente
#para ello hay que realizar la replicación desde la máquina principal y posteriormente se accede a la consola cmd o powershell
#Esto hay que realizarlo antes de promover el nuevo servidor a controlador de dominio


repadmin /showrepl
repadmin /ReplSummary
dcdiag /test:replications
