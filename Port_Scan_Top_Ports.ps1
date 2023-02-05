param($ip)

if(!$ip ){
    echo "DESEC SECURITY - PORTSCAN"
    echo "Developed BY N0KK"
    echo ".\portscan.ps1 192.168.0.1"
}
else{
    $topports = 21, 22, 25, 3306, 80, 444 
    try {foreach ($port in $topports){
      If (Test-NetConnection $ip -port $port -WarningAction SilentlyContinue -InformationLevel Quiet) {
        echo “Porta $port Aberta”}
        }
    else {
        echo “Porta $port fechada”} 

        }
    catch {}

}
       