
# Hotel Paradise

Projeto de exemplo — site estático para um hotel com página de reservas.

Resumo
- `index.html` — página principal (apresentação e quartos)
- `pagina2.html` — formulário de reserva (cálculo de noites e total)
- `estilo.css` — folha de estilos principal

Como abrir localmente
1. Abra a pasta do projeto no Explorador de Arquivos.
2. Dê duplo-clique em `index.html` para abrir no navegador.

Estrutura do repositório

- `index.html` — conteúdo e links para a página de reserva
- `pagina2.html` — formulário com JavaScript para calcular total
- `estilo.css` / `estilo2.css` — estilos do site
- `README.md` — este arquivo

Publicar no GitHub (passos rápidos)

1. Crie um repositório público no GitHub (ex.: `Hotel_paradise`).
2. Na pasta do projeto (local) rode:

```powershell
cd "C:\Users\Usuario\OneDrive\Desktop\primeiro trabalho em html .html"
git init
git add index.html pagina2.html estilo.css estilo2.css README.md
git commit -m "Site inicial - Hotel Paradise"
git branch -M main
git remote add origin https://github.com/<SEU_USUARIO>/<SEU_REPO>.git
git push -u origin main
```

3. No GitHub, vá em Settings → Pages e selecione: Branch = `main`, Folder = `/ (root)`. Clique `Save`.
4. Aguarde alguns minutos; a URL pública aparecerá em Settings → Pages (ex.: `https://<SEU_USUARIO>.github.io/<SEU_REPO>`).

Atualizar o rodapé com a URL pública

- Depois que o Pages estiver ativo, substitua o link do rodapé em `index.html` pela URL pública exata.
- Se quiser, eu faço essa edição e crio o commit/push quando você disser `Pages ativo`.

Comandos úteis (autenticação)

- Se o Git pedir autenticação, conclua o fluxo no navegador (Git Credential Manager) ou use `gh auth login` / um Personal Access Token.
- Para evitar avisos CRLF no Windows: `git config --global core.autocrlf true`.

Suporte / Contato

Se quiser que eu:
- escreva um README mais detalhado com screenshots e exemplos (responda: `A`)
- liste os arquivos do repositório e confirme que tudo está no `main` (responda: `B`)
- gere um script PowerShell com os comandos prontos para rodar (responda: `C`)
- faça tudo acima e faça o commit remoto (responda: `D`)

---
Arquivo atualizado para facilitar publicação e uso.
