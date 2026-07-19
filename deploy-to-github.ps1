param(
    [string]$Username = "jejakgabut0",
    [string]$RepoName = "jejak-teman-jalur"
)

$remoteUrl = "https://github.com/$Username/$RepoName.git"

Write-Host "Menambahkan remote origin: $remoteUrl"
if (-not (git remote | Select-String -Pattern '^origin$')) {
    git remote add origin $remoteUrl
} else {
    git remote set-url origin $remoteUrl
}

git branch -M main

git push -u origin main

Write-Host "Selesai. Selanjutnya buka GitHub repo dan aktifkan Pages di branch main dengan folder / (root)." -ForegroundColor Green
