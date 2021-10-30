# Install the OpenSSH Server
Get-WindowsCapability -name openssh.server* -online | Add-WindowsCapability –Online

#Ponemos en marcha el servicio en modo automático
Set-Service -Name sshd -StartupType 'Automatic'
#Iniciamos el servicio
Start-Service sshd
# Añadimos la regla al Firewall para permitr conexiones al puerto 22 si no está configurada
if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
    Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' no existe, la creamos.."
    New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'Servidor OpenSSH (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
} else {
    Write-Output "La regla OpenSSH-Server-In-TCP' ya existe."
}



Para conectarnos
ssh ip_remota -l Usuario
#Referencia
https://docs.microsoft.com/es-es/windows-server/administration/openssh/openssh_install_firstuse
