param ($ip)
if (!$ip) {

    echo "Desec Security"
    echo "Modo de uso:"
    echo ".\script2.ps1 192.168.0.1"
} 

else {
    echo "Efetuando Ping no Host: $ip"
    ping -n 1 $ip | Select-String  "bytes=32"
}

