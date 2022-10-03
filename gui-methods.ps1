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

function Add-Apps() {

    [void] [System.Windows.Forms.MessageBox]::Show(

        "Error: No app selected. Please select at least one app to install.",

        "Error",

        "OK",

        "Error"
    )

}

function Add-Checkbox {

    param (

        [Parameter(Mandatory=$true)]
        [string]$section,
        [Parameter(Mandatory=$true)]
        [System.Object]$panel

    )

    $config = Get-Content -Path "$PSScriptRoot\config.json" | ConvertFrom-Json

    $app = $config.packages.$section

    #$increment = 30

    $app | ForEach-Object {

        $checkbox = (New-Object System.Windows.Forms.CheckBox)

        $checkbox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]($i)))

        $checkbox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]30))

        $checkbox.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))

        $checkbox.UseVisualStyleBackColor = $true

        $checkbox.Cursor = [System.Windows.Forms.Cursors]::Hand

        $checkbox.Text = [System.String] $_.name

        $checkbox.Checked = $_.install

        $checkbox.Tag = $_.package

        $i+=30

        $panel.Controls.Add($CheckBox)

    }

}

function Install-Apps {

    $install.Add_click({

        $install.Enabled = $false

        $apps = @()

        $panels = @(
            $editorsPanel
            $browsersPanel
            $terminalsPanel
            $cliPanel
            $devToolsPanel
            $desktopAppsPanel
            $utilitiesPanel
            $vpnsPanel
            $gamingPanel
            $passwordManagersPanel
            $networkingPanel
        )

        foreach ($panel in $panels) {

            foreach ($control in $panel.Controls) {

                if ($control.Checked) {

                    $apps += $control.Tag

                }

            }

        }

        if ($apps.Count -gt 0) {

            Write-Host "`n ---- Installing $($apps.Count) packages ---- `n" -ForegroundColor Green

            Write-Host choco install -y $apps

            choco install -y $apps | Write-Host

        }
        else {

                Write-Host "`n ---- No packages selected ---- `n" -ForegroundColor Green
                Add-Apps

        }

        $install.Enabled = $true
    })

}
function Get-AppCount {

    $config = Get-Content -Path "$PSScriptRoot\config.json" | ConvertFrom-Json

    $pakages = $config.packages

    $sections = @("editors", "browsers", "terminals", "cli", "devTools", "desktopApps", "utils", "vpns", "gaming", "passwordManagers", "networking")

    foreach ($section in $sections.GetEnumerator()) {

        $appCount += $pakages.$section.Count

    }

    return $appCount

}

# get checked checkbox count
function Get-CheckedCount {

    param (
        [Parameter(Mandatory=$true)]
        [string]$section
    )

    $config = Get-Content -Path "$PSScriptRoot\config.json" | ConvertFrom-Json

    $pakages = $config.packages

    $app = $pakages.$section

    $checkedCount = $app | Where-Object {$_.install -eq $true} | Measure-Object | Select-Object -ExpandProperty Count

    return $checkedCount

}

# Get-CheckedCount -section 'editors'
# Get-CheckedCount -section 'browsers'