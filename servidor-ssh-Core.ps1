# Install the OpenSSH Server
Get-WindowsCapability -name openssh.server* -online | Add-WindowsCapability –Online

#Ponemos en marcha el servicio en modo automático
Set-Service -Name sshd -StartupType 'Automatic'
#Iniciamos el servicio
Start-Service sshd
#
# Añadimos la regla al Firewall para permitr conexiones al puerto 22 si no está configurada
#
New-NetFirewallRule -Name 'Servidor ssh TCP 22' -DisplayName 'Servidor OpenSSH (sshd)' -Enabled True -Direction Inbound -Action Allow -Protocol TCP -LocalPort 22


Para conectarnos
ssh ip_remota -l Usuario
#Referencia
https://docs.microsoft.com/es-es/windows-server/administration/openssh/openssh_install_firstuse
