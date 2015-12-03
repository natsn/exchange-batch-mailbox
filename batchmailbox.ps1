Add-PSSnapin Microsoft.Exchange.Management.Powershell.E2010
Import-Module ActiveDirectory


Import-CSV ".\ebc.csv" | foreach {
	$alias = $_.alias
	$fn = $_.firstname
	$ln = $_.lastname
	$upn = $alias + "@domain.com"
	$db = "NormalMailboxes"
	$ou = "domain.com/Eugene/Users"
	
	$name = $fn + " " + $ln 
	
	New-Mailbox -Name $name -Alias $alias -FirstName $fn -LastName $ln -UserprincipalName $upn -Database $db -OrganizationalUnit $ou -password (ConvertTo-SecureString $_.password -AsPlainText -force)
	
	$idents = 'Group1','Group2'
	foreach ($i in $idents){Add-AdGroupMember -Identity $i -Members $_.alias -Server dc1} 
}
