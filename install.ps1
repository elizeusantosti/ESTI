Invoke-WebRequest https://raw.githubusercontent.com/elizeusantosti/esti/main/core.ps1 | Invoke-Expression

nova_pasta  $pasta_esti

foreach ($script in $scripts){
    download $script $main_scripts $pasta_esti_scripts
}

download Microsoft.Powershell_profile.ps1 $pasta_powershell