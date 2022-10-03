$app = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$install = $null
[System.Windows.Forms.GroupBox]$editors = $null
[System.Windows.Forms.Panel]$editorsPanel = $null
[System.Windows.Forms.GroupBox]$browsers = $null
[System.Windows.Forms.Panel]$browsersPanel = $null
[System.Windows.Forms.GroupBox]$terminals = $null
[System.Windows.Forms.Panel]$terminalsPanel = $null
[System.Windows.Forms.GroupBox]$cli = $null
[System.Windows.Forms.Panel]$cliPanel = $null
[System.Windows.Forms.GroupBox]$devTools = $null
[System.Windows.Forms.Panel]$devToolsPanel = $null
[System.Windows.Forms.GroupBox]$desktopApps = $null
[System.Windows.Forms.Panel]$desktopAppsPanel = $null
[System.Windows.Forms.GroupBox]$utils = $null
[System.Windows.Forms.Panel]$utilitiesPanel = $null
[System.Windows.Forms.GroupBox]$vpn = $null
[System.Windows.Forms.Panel]$vpnsPanel = $null
[System.Windows.Forms.GroupBox]$gaming = $null
[System.Windows.Forms.Panel]$gamingPanel = $null
[System.Windows.Forms.GroupBox]$passwordManagers = $null
[System.Windows.Forms.Panel]$passwordManagersPanel = $null
[System.Windows.Forms.GroupBox]$networking = $null
[System.Windows.Forms.Panel]$networkingPanel = $null
[System.Windows.Forms.Label]$appCount = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'installer-gui.resources.ps1')
$install = (New-Object -TypeName System.Windows.Forms.Button)
$editors = (New-Object -TypeName System.Windows.Forms.GroupBox)
$editorsPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$browsers = (New-Object -TypeName System.Windows.Forms.GroupBox)
$browsersPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$terminals = (New-Object -TypeName System.Windows.Forms.GroupBox)
$terminalsPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$cli = (New-Object -TypeName System.Windows.Forms.GroupBox)
$cliPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$devTools = (New-Object -TypeName System.Windows.Forms.GroupBox)
$devToolsPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$desktopApps = (New-Object -TypeName System.Windows.Forms.GroupBox)
$desktopAppsPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$utils = (New-Object -TypeName System.Windows.Forms.GroupBox)
$utilitiesPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$vpn = (New-Object -TypeName System.Windows.Forms.GroupBox)
$vpnsPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$gaming = (New-Object -TypeName System.Windows.Forms.GroupBox)
$gamingPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$passwordManagers = (New-Object -TypeName System.Windows.Forms.GroupBox)
$passwordManagersPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$networking = (New-Object -TypeName System.Windows.Forms.GroupBox)
$networkingPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$appCount = (New-Object -TypeName System.Windows.Forms.Label)
$editors.SuspendLayout()
$browsers.SuspendLayout()
$terminals.SuspendLayout()
$cli.SuspendLayout()
$devTools.SuspendLayout()
$desktopApps.SuspendLayout()
$utils.SuspendLayout()
$vpn.SuspendLayout()
$gaming.SuspendLayout()
$passwordManagers.SuspendLayout()
$app.SuspendLayout()
#
#install
#
$install.Cursor = [System.Windows.Forms.Cursors]::Hand
$install.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]989,[System.Int32]629))
$install.Name = [System.String]'install'
$install.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$install.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]30))
$install.TabIndex = [System.Int32]0
$install.Text = [System.String]'Install'
$install.UseVisualStyleBackColor = $true
#
#editors
#
$editors.BackColor = [System.Drawing.SystemColors]::Control
$editors.Controls.Add($editorsPanel)
$editors.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$editors.Name = [System.String]'editors'
$editors.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$editors.TabIndex = [System.Int32]1
$editors.TabStop = $false
$editors.Text = [System.String]'Editors/IDE'
#
#editorsPanel
#
$editorsPanel.AutoScroll = $true
$editorsPanel.BackColor = [System.Drawing.SystemColors]::Window
$editorsPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$editorsPanel.Name = [System.String]'editorsPanel'
$editorsPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$editorsPanel.TabIndex = [System.Int32]0
#
#browsers
#
$browsers.BackColor = [System.Drawing.SystemColors]::Control
$browsers.Controls.Add($browsersPanel)
$browsers.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]278,[System.Int32]12))
$browsers.Name = [System.String]'browsers'
$browsers.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$browsers.TabIndex = [System.Int32]2
$browsers.TabStop = $false
$browsers.Text = [System.String]'Browsers'
#
#browsersPanel
#
$browsersPanel.AutoScroll = $true
$browsersPanel.BackColor = [System.Drawing.SystemColors]::Window
$browsersPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$browsersPanel.Name = [System.String]'browsersPanel'
$browsersPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$browsersPanel.TabIndex = [System.Int32]0
#
#terminals
#
$terminals.BackColor = [System.Drawing.SystemColors]::Control
$terminals.Controls.Add($terminalsPanel)
$terminals.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]544,[System.Int32]12))
$terminals.Name = [System.String]'terminals'
$terminals.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$terminals.TabIndex = [System.Int32]3
$terminals.TabStop = $false
$terminals.Text = [System.String]'Terminals'
#
#terminalsPanel
#
$terminalsPanel.AutoScroll = $true
$terminalsPanel.BackColor = [System.Drawing.SystemColors]::Window
$terminalsPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$terminalsPanel.Name = [System.String]'terminalsPanel'
$terminalsPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$terminalsPanel.TabIndex = [System.Int32]0
#
#cli
#
$cli.BackColor = [System.Drawing.SystemColors]::Control
$cli.Controls.Add($cliPanel)
$cli.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]810,[System.Int32]12))
$cli.Name = [System.String]'cli'
$cli.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$cli.TabIndex = [System.Int32]4
$cli.TabStop = $false
$cli.Text = [System.String]'Cli'
#
#cliPanel
#
$cliPanel.BackColor = [System.Drawing.SystemColors]::Window
$cliPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$cliPanel.Name = [System.String]'cliPanel'
$cliPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$cliPanel.TabIndex = [System.Int32]0
#
#devTools
#
$devTools.BackColor = [System.Drawing.SystemColors]::Control
$devTools.Controls.Add($devToolsPanel)
$devTools.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]281))
$devTools.Name = [System.String]'devTools'
$devTools.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$devTools.TabIndex = [System.Int32]5
$devTools.TabStop = $false
$devTools.Text = [System.String]'Dev Tools'
#
#devToolsPanel
#
$devToolsPanel.AutoScroll = $true
$devToolsPanel.BackColor = [System.Drawing.SystemColors]::Window
$devToolsPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$devToolsPanel.Name = [System.String]'devToolsPanel'
$devToolsPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$devToolsPanel.TabIndex = [System.Int32]0
#
#desktopApps
#
$desktopApps.Controls.Add($desktopAppsPanel)
$desktopApps.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]278,[System.Int32]281))
$desktopApps.Name = [System.String]'desktopApps'
$desktopApps.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$desktopApps.TabIndex = [System.Int32]6
$desktopApps.TabStop = $false
$desktopApps.Text = [System.String]'Desktop Apps'
#
#desktopAppsPanel
#
$desktopAppsPanel.AutoScroll = $true
$desktopAppsPanel.BackColor = [System.Drawing.SystemColors]::Window
$desktopAppsPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$desktopAppsPanel.Name = [System.String]'desktopAppsPanel'
$desktopAppsPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$desktopAppsPanel.TabIndex = [System.Int32]0
#
#utils
#
$utils.Controls.Add($utilitiesPanel)
$utils.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]544,[System.Int32]281))
$utils.Name = [System.String]'utils'
$utils.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$utils.TabIndex = [System.Int32]7
$utils.TabStop = $false
$utils.Text = [System.String]'Utilities'
#
#utilitiesPanel
#
$utilitiesPanel.AutoScroll = $true
$utilitiesPanel.BackColor = [System.Drawing.SystemColors]::Window
$utilitiesPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$utilitiesPanel.Name = [System.String]'utilitiesPanel'
$utilitiesPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$utilitiesPanel.TabIndex = [System.Int32]0
#
#vpn
#
$vpn.Controls.Add($vpnsPanel)
$vpn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]810,[System.Int32]281))
$vpn.Name = [System.String]'vpn'
$vpn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$vpn.TabIndex = [System.Int32]8
$vpn.TabStop = $false
$vpn.Text = [System.String]'Vpn''s'
#
#vpnsPanel
#
$vpnsPanel.AutoScroll = $true
$vpnsPanel.BackColor = [System.Drawing.SystemColors]::Window
$vpnsPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$vpnsPanel.Name = [System.String]'vpnsPanel'
$vpnsPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$vpnsPanel.TabIndex = [System.Int32]0
#
#gaming
#
$gaming.Controls.Add($gamingPanel)
$gaming.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]550))
$gaming.Name = [System.String]'gaming'
$gaming.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$gaming.TabIndex = [System.Int32]9
$gaming.TabStop = $false
$gaming.Text = [System.String]'Gaming'
#
#gamingPanel
#
$gamingPanel.AutoScroll = $true
$gamingPanel.BackColor = [System.Drawing.SystemColors]::Window
$gamingPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$gamingPanel.Name = [System.String]'gamingPanel'
$gamingPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$gamingPanel.TabIndex = [System.Int32]0
#
#passwordManagers
#
$passwordManagers.Controls.Add($passwordManagersPanel)
$passwordManagers.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]278,[System.Int32]550))
$passwordManagers.Name = [System.String]'passwordManagers'
$passwordManagers.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$passwordManagers.TabIndex = [System.Int32]10
$passwordManagers.TabStop = $false
$passwordManagers.Text = [System.String]'Password Managers'
#
#passwordManagersPanel
#
$passwordManagersPanel.AutoScroll = $true
$passwordManagersPanel.BackColor = [System.Drawing.SystemColors]::Window
$passwordManagersPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]20))
$passwordManagersPanel.Name = [System.String]'passwordManagersPanel'
$passwordManagersPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$passwordManagersPanel.TabIndex = [System.Int32]0
#
#networking
#
$networking.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]544,[System.Int32]550))
$networking.Name = [System.String]'networking'
$networking.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]260,[System.Int32]263))
$networking.TabIndex = [System.Int32]11
$networking.TabStop = $false
$networking.Text = [System.String]'Networking/DevOps'
#
#networkingPanel
#
$networkingPanel.BackColor = [System.Drawing.SystemColors]::Window
$networkingPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]550,[System.Int32]570))
$networkingPanel.Name = [System.String]'networkingPanel'
$networkingPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]237))
$networkingPanel.TabIndex = [System.Int32]0
#
#appCount
#
$appCount.BackColor = [System.Drawing.SystemColors]::Window
$appCount.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$appCount.ForeColor = [System.Drawing.Color]::Black
$appCount.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]816,[System.Int32]570))
$appCount.Name = [System.String]'appCount'
$appCount.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$appCount.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]248,[System.Int32]30))
$appCount.TabIndex = [System.Int32]12
$appCount.Text = [System.String]'Application Count'
#
#app
#
$app.BackColor = [System.Drawing.SystemColors]::Control
$app.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1082,[System.Int32]839))
$app.Controls.Add($appCount)
$app.Controls.Add($networkingPanel)
$app.Controls.Add($networking)
$app.Controls.Add($passwordManagers)
$app.Controls.Add($gaming)
$app.Controls.Add($vpn)
$app.Controls.Add($utils)
$app.Controls.Add($desktopApps)
$app.Controls.Add($devTools)
$app.Controls.Add($cli)
$app.Controls.Add($terminals)
$app.Controls.Add($browsers)
$app.Controls.Add($editors)
$app.Controls.Add($install)
$app.HelpButton = $true
$app.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$app.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1098,[System.Int32]878))
$app.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$app.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$app.Text = [System.String]'Pfcode Installer v.1.0.0'
$editors.ResumeLayout($false)
$browsers.ResumeLayout($false)
$terminals.ResumeLayout($false)
$cli.ResumeLayout($false)
$devTools.ResumeLayout($false)
$desktopApps.ResumeLayout($false)
$utils.ResumeLayout($false)
$vpn.ResumeLayout($false)
$gaming.ResumeLayout($false)
$passwordManagers.ResumeLayout($false)
$app.ResumeLayout($false)
Add-Member -InputObject $app -Name install -Value $install -MemberType NoteProperty
Add-Member -InputObject $app -Name editors -Value $editors -MemberType NoteProperty
Add-Member -InputObject $app -Name editorsPanel -Value $editorsPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name browsers -Value $browsers -MemberType NoteProperty
Add-Member -InputObject $app -Name browsersPanel -Value $browsersPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name terminals -Value $terminals -MemberType NoteProperty
Add-Member -InputObject $app -Name terminalsPanel -Value $terminalsPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name cli -Value $cli -MemberType NoteProperty
Add-Member -InputObject $app -Name cliPanel -Value $cliPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name devTools -Value $devTools -MemberType NoteProperty
Add-Member -InputObject $app -Name devToolsPanel -Value $devToolsPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name desktopApps -Value $desktopApps -MemberType NoteProperty
Add-Member -InputObject $app -Name desktopAppsPanel -Value $desktopAppsPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name utils -Value $utils -MemberType NoteProperty
Add-Member -InputObject $app -Name utilitiesPanel -Value $utilitiesPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name vpn -Value $vpn -MemberType NoteProperty
Add-Member -InputObject $app -Name vpnsPanel -Value $vpnsPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name gaming -Value $gaming -MemberType NoteProperty
Add-Member -InputObject $app -Name gamingPanel -Value $gamingPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name passwordManagers -Value $passwordManagers -MemberType NoteProperty
Add-Member -InputObject $app -Name passwordManagersPanel -Value $passwordManagersPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name networking -Value $networking -MemberType NoteProperty
Add-Member -InputObject $app -Name networkingPanel -Value $networkingPanel -MemberType NoteProperty
Add-Member -InputObject $app -Name appCount -Value $appCount -MemberType NoteProperty
}
. InitializeComponent
