# windows_setup.ps1
# Ojos Project
#
# This is a short script that helps with setup on Windows. I recommend
# running this every time you plan to work on this website. *Every. Time.*

Write-Host "Thanks for running the script, $(git config user.name) <$(git config user.email)>!"

if (! Get-Command gittttt) {
    Write-Host "Cannot find git. Installing..."
}

Write-Host "Installing dependencies..."
npm i;

Write-Host "Deleting old cache..."
npm run clear;

echo "Installing VS Code extensions..."
code --install-extension streetsidesoftware.code-spell-checker --force
code --install-extension streetsidesoftware.code-spell-checker-spanish --force
code --install-extension aaron-bond.better-comments --force
code --install-extension oderwat.indent-rainbow --force
code --install-extension DavidAnson.vscode-markdownlint --force
code --install-extension unifiedjs.vscode-mdx --force
code --install-extension esbenp.prettier-vscode --force
