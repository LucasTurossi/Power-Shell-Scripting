
#Comentário
echo "Meu diret�rio atual: $(Get-Location)"
Write-Host "Meu usu�rio atual: $(whoami)"

echo "################################"

$ip = "192.168.0.1"
echo " "
echo "Varrendo o host: $ip"
echo "Lendo a vari�vel:"
echo " "
$var = Read-host "Digite o IP"
echo "Varrendo o host: $var"

echo " "
echo "######################################"

echo "Fun��o de ping:"
$ping = Read-Host "Digite o ende�o de IP"
ping -n 1 $ping | Select-String  "bytes=32"