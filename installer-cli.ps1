
. (Join-Path $PSScriptRoot 'methods.ps1')

try {

    Install-Chocolatey

}
catch {

    Write-Error $_.Exception.Message

    exit 1

}

try {

    Install-Applications -sections @("editors", "browsers", "terminals", "cli", "devTools", "desktopApps", "utils", "vpns", "gaming", "passwordManagers", "networking")

}
catch {

    Write-Error $_.Exception.Message

    exit 1

}

