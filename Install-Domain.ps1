## Author - KP - Installation of Domain Services and Domain via Powershell

$domainName = "yoonsi.com"
$domainNetBiosName = "YOONSI"

Install-WindowsFeature AD-Domain-Services

Import-Module ADDSDeployment

Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath “C:\Windows\NTDS” `
-DomainMode “Win2012R2” `
-DomainName $domainName `
-DomainNetbiosName $domainNetBiosName `
-ForestMode “Win2012R2” `
-InstallDns:$true `
-LogPath “C:\Windows\NTDS” `
-NoRebootOnCompletion:$false `
-SysvolPath “C:\Windows\SYSVOL” `
-Force:$true `
