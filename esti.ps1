# Criar alias esti
# esti | Exibe a p�gina de ajuda do comando.
# esti help | Exibe a p�gina de ajuda.
# esti update | Checa a vers�o, atualiza o c�digo fonte e faz download dos demais scripts em sua �ltima vers�o se necess�rio.


function esti {
    foreach ($arg in $args) {
        $url = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/esti/testing/$arg.ps1
        Invoke-Expression $($url.Content)
    }
}