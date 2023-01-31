
#ComentÃ¡rio
echo "Meu diretório atual: $(Get-Location)"
Write-Host "Meu usuário atual: $(whoami)"

echo "################################"

$ip = "192.168.0.1"
echo " "
echo "Varrendo o host: $ip"
echo "Lendo a variável:"
echo " "
$var = Read-host "Digite o IP"
echo "Varrendo o host: $var"

echo " "
echo "######################################"

echo "Função de ping:"
$ping = Read-Host "Digite o endeço de IP"
ping -n 1 $ping | Select-String  "bytes=32"