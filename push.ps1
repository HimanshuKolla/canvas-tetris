param(
  [Parameter(Mandatory=$true)][string]$User,
  [Parameter(Mandatory=$true)][string]$Repo
)

git init
git add .
git commit -m "Initial commit: Canvas Tetris"
git branch -M main
git remote add origin "https://github.com/$User/$Repo.git"
git push -u origin main

Write-Host ""
Write-Host "Now enable GitHub Pages: Settings → Pages → Branch: main, Folder: /(root)"
Write-Host "URL: https://$User.github.io/$Repo/"
