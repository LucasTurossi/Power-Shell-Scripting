$domain = Read-Host "Digite o domínio: "
$web = Invoke-WebRequest -uri "$domain" -Method Options 
echo "O server roda: "
echo " "
$web.headers.server
echo ""
echo "O server aceita os métodos: "
echo " "
$web.headers.allow
echo " "
echo "Links encontrados: "
echo " "
$links = Invoke-WebRequest -uri "$domain"
$links.links.href | Select-String "http://"