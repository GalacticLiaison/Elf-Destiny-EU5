# Export-Mod.ps1
#
# Copies the distributable mod files to a clean "Elf Destiny Upload" sibling folder,
# leaving all development-only files (git history, docs, changelogs, CLAUDE.md, etc.)
# behind. Point pdx-workshop-manager at the Upload folder permanently — just re-run
# this script before each upload to refresh it.
#
# How to run (pick any):
#   - Right-click Export-Mod.ps1 in Explorer → "Run with PowerShell"
#   - In a terminal: .\Export-Mod.ps1
#   - In VS Code: open the file and press F5
#
# What gets exported:
#   in_game/           - all in-game mod content
#   loading_screen/    - loading screen defines
#   main_menu/         - UI, graphics, localization
#   .metadata/         - mod ID and version info read by the game and Workshop
#   _assets/           - images referenced by README.md
#   _docs/changelog/   - per-version changelogs
#   thumbnail.png      - Steam Workshop thumbnail
#   README.md          - public readme

$src = $PSScriptRoot
$dst = Join-Path (Split-Path $src -Parent) "Elf Destiny Upload"

if (Test-Path $dst) { Remove-Item $dst -Recurse -Force }
New-Item $dst -ItemType Directory | Out-Null

$folders = @("in_game", "loading_screen", "main_menu", ".metadata", "_assets")
foreach ($folder in $folders) {
    robocopy "$src\$folder" "$dst\$folder" /E /NFL /NDL /NJH /NJS | Out-Null
}

# Only the changelog subfolder from _docs, not the full docs directory
robocopy "$src\_docs\changelog" "$dst\_docs\changelog" /E /NFL /NDL /NJH /NJS | Out-Null

Copy-Item "$src\thumbnail.png" "$dst\thumbnail.png"
Copy-Item "$src\README.md" "$dst\README.md"

Write-Host "Export complete -> $dst"
