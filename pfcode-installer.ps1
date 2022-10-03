. (Join-Path $PSScriptRoot 'gui-methods.ps1')

Install-Chocolatey

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'installer-gui.designer.ps1')

[System.Windows.Forms.Application]::EnableVisualStyles()

Add-Checkbox -section 'editors' -panel $editorsPanel
Add-Checkbox -section 'browsers' -panel $browsersPanel
Add-Checkbox -section 'terminals' -panel $terminalsPanel
Add-Checkbox -section 'cli' -panel $cliPanel
Add-Checkbox -section 'devTools' -panel $devToolsPanel
Add-Checkbox -section 'desktopApps' -panel $desktopAppsPanel
Add-Checkbox -section 'utils' -panel $utilitiesPanel
Add-Checkbox -section 'vpns' -panel $vpnsPanel
Add-Checkbox -section 'gaming' -panel $gamingPanel
Add-Checkbox -section 'passwordManagers' -panel $passwordManagersPanel
Add-Checkbox -section 'networking' -panel $networkingPanel

$appCount.Text = "App count: $(Get-AppCount)"

Install-Apps

$app.ShowDialog()

$app.Dispose()