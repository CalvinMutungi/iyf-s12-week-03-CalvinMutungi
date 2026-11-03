param (
    [Parameter(Mandatory=$true)]
    [string]$ProjectName
)

Write-Host "Creating project directory: $ProjectName..."
New-Item -ItemType Directory -Path "$ProjectName\src", "$ProjectName\docs", "$ProjectName\tests" -Force | Out-Null
New-Item -ItemType File -Path "$ProjectName\README.md", "$ProjectName\src\index.js", "$ProjectName\.gitignore" -Force | Out-Null

Set-Content -Path "$ProjectName\README.md" -Value "# $ProjectName"
Set-Content -Path "$ProjectName\.gitignore" -Value "node_modules/"

Write-Host "Project $ProjectName successfully initialized!"
