<#
Script: deploy_pages.ps1
Função: Tenta automatizar resolução de rebase/commit, envia o branch main e abre a página de GitHub Pages.
Uso: Abra PowerShell, cole/execute este script. Você precisará autenticar no navegador quando for solicitado.
Aviso: Eu não tenho acesso remoto à sua conta; este script roda localmente no seu PC.
#>

$proj = "C:\Users\Usuario\OneDrive\Desktop\primeiro trabalho em html .html"
Set-Location -Path $proj

Write-Host "Diretório do projeto: $proj"

# remover swap do editor se existir (força limpar estado do editor)
if (Test-Path "$proj\.git\COMMIT_EDITMSG.swp") {
    Write-Host "Detectado swap file do editor. Removendo..."
    Remove-Item "$proj\.git\COMMIT_EDITMSG.swp" -ErrorAction SilentlyContinue
}

Write-Host "Estado git antes:"; git status -s

# Se houver rebase em progresso, tente usar a versão local do README e continuar
try {
    git rev-parse --git-dir > $null 2>&1
} catch {
    Write-Host "Esta pasta não parece ser um repositório git. Saindo."; exit 1
}

Write-Host "Tentando aplicar 'ours' no README.md (manter sua versão local)..."
git checkout --ours README.md 2>$null | Out-Null
git add README.md 2>$null | Out-Null

Write-Host "Tentando continuar rebase (se houver)..."
git rebase --continue 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Não foi possível continuar o rebase automaticamente. Tentando abortar rebase e usar merge." 
    git rebase --abort 2>$null | Out-Null

    Write-Host "Buscando remoto e fazendo merge com origin/main (allow-unrelated-histories)..."
    git fetch origin
    git merge origin/main --allow-unrelated-histories
}

Write-Host "Configurando branch main e remote (origin)..."
git branch -M main
git remote remove origin 2>$null | Out-Null
git remote add origin https://github.com/lucas812230-beep/Hotel_paradise.git

Write-Host "Fazendo git add dos arquivos (index.html, pagina2.html, estilo.css, README.md)..."
git add index.html pagina2.html estilo.css estilo2.css README.md 2>$null | Out-Null

Write-Host "Commitando alterações locais pendentes (se houver)..."
git commit -m "Automated: resolve rebase/merge and prepare for Pages" 2>$null | Out-Null

Write-Host "Enviando para o remoto (push)..."
git push -u origin main

if ($LASTEXITCODE -ne 0) {
    Write-Host "Push falhou. Rode 'git status' e verifique mensagens de erro. Saindo."; exit 2
}

Write-Host "Push concluído. Abrindo a tela de Pages no navegador para ativação..."
Start-Process "https://github.com/lucas812230-beep/Hotel_paradise/settings/pages"

Write-Host "
Agora no navegador: em Settings → Pages selecione Branch = main e Folder = / (root) e clique Save.
Quando a URL pública aparecer (ex.: https://lucas812230-beep.github.io/Hotel_paradise), volte e diga 'Pages ativo'."

exit 0
