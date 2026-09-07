# Hotel Paradise

Site de exemplo criado para a disciplina/trabalho — Hotel Paradise

Conteúdo
- `index.html` — página principal do site
- `pagina2.html` — página de reservas (formulário com calendário e cálculo de total)
- `estilo.css` — estilos do site

Como abrir localmente
1. Abra a pasta do projeto no Explorador de Arquivos
2. Clique duas vezes em `index.html` para abrir no navegador

Publicar no GitHub Pages (resumo)
1. Crie um repositório no GitHub (público) — ex.: `Hotel_Paradise`
2. No seu computador, dentro da pasta do projeto rode:

```powershell
git init
git add .
git commit -m "Site inicial - Hotel Paradise"
git branch -M main
git remote add origin https://github.com/<SEU_USUARIO>/<SEU_REPO>.git
git push -u origin main
```

3. No GitHub vá em Settings → Pages, escolha `main` branch e `/ (root)`, salve.
4. Aguarde alguns minutos; a URL pública ficará em `https://<SEU_USUARIO>.github.io/<SEU_REPO>`.

Atualizar o rodapé com a URL pública
- Quando o Pages estiver ativo, me avise que eu atualizo `index.html` com o link público no rodapé e faço o commit.

Observações
- Avisos `LF will be replaced by CRLF` no Windows são normais; podem ser evitados com `git config --global core.autocrlf true`.

---
Gerado automaticamente para facilitar a publicação.
