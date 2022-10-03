@{
    Root = 'c:\gitea\powershell-scripts\v.7\utility\machine-installer-gui\pfcode-installer.ps1'
    OutputPath = 'c:\gitea\powershell-scripts\v.7\utility\machine-installer-gui\standalone'
    Package = @{
        Enabled = $true
        Obfuscate = $false
        HideConsoleWindow = $false
        DotNetVersion = 'v4.6.2'
        FileVersion = '1.0.0'
        FileDescription = 'Pfcode Instsller GUI'
        ProductName = 'Pfcode Installer'
        ProductVersion = '1.0.0'
        Copyright = '2022'
        RequireElevation = $true
        ApplicationIconPath = 'c:\gitea\powershell-scripts\v.7\utility\machine-installer-gui\img\install.ico'
        PackageType = 'Console'
    }
    Bundle = @{
        Enabled = $true
        Modules = $true
        # IgnoredModules = @()
    }
}