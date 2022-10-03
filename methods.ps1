function Install-Chocolatey {

    $chocoPath = "$env:ProgramData\Chocolatey"

    $chocoInstall = Test-Path $chocoPath

    if ($chocoInstall -eq $false) {

        Write-Host "`n Chocolatey is not installed. Installing Chocolatey..."

        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

    }
    else {

        Write-Host "`n Chocolatey is already installed." -ForegroundColor Yellow

    }
}

function Install-Applications {

    param (
        [Parameter(Mandatory=$true)]
        [string[]]$sections
    )

    $config = Get-Content -Path "$PSScriptRoot\config.json" | ConvertFrom-Json

    $pakages = $config.packages

    Write-Host "`n Installing Chocolatey packages..." -ForegroundColor Green

    Write-Host "`n To install packages, you need to use the 'install' option in config.json. Set it to true or false." -ForegroundColor Magenta

    foreach ($section in $sections.GetEnumerator()) {

        $app = $pakages.$section

        if($true -in $app.install) {

            $app | Where-Object {$_.install -eq $true} | ForEach-Object {

                Write-Host "`n Installing $($_.name)" -ForegroundColor Green

                choco install $_.package -y

            }

        }
        else {

            Write-Host "`n No app selected in section: $section." -ForegroundColor Yellow

        }

    }

    Write-Host "`r"

}
