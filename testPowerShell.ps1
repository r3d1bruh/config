# Set the backup file path
$BackupPath = "$env:USERPROFILE\Desktop\RegistryBackup.reg"

# Backup the relevant registry key
reg export "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" $BackupPath /y

if (Test-Path $BackupPath) {
    Write-Host "Registry backup created at $BackupPath"
    
    # Define the registry path and value name
    $RegPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons"
    $ValueName = "29"
    
    # Create the registry key if it doesn't exist
    if (!(Test-Path $RegPath)) {
        New-Item -Path $RegPath -Force
    }

    # Set the value to an empty string to remove the shortcut icon
    Set-ItemProperty -Path $RegPath -Name $ValueName -Value ""

    Write-Host "Shortcut overlay icon has been removed. Restart your computer for the changes to take effect."
} else {
    Write-Host "Failed to create registry backup. Aborting operation."
}
