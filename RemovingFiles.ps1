# Define o caminho da pasta a ser limpa
$folderPath = "D:\website\website1"

# Define os nomes dos arquivos e diretórios que devem ser mantidos
$exceptions = @("teste1", "teste2", "source", "favicon.ico", "url.test", "redirect.xml")

# Remove os arquivos e subpastas do caminho especificado, exceto para os nomes definidos em $exceptions
Get-ChildItem $folderPath -Recurse | Where-Object { $_.FullName -notmatch [regex]::Escape(($exceptions -join "|")) } | Remove-Item -Recurse -Force
