# Activer les scripts PowerShell non signés (à exécuter en tant qu'administrateur)
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force




# Changer le thème de la console Windows (vous pouvez personnaliser les couleurs)
Set-ItemProperty -Path HKCU:\Console -Name ColorTable00 0x000000
Set-ItemProperty -Path HKCU:\Console -Name ColorTable07 0xFFFFFF
Set-ItemProperty -Path HKCU:\Console -Name ColorTable08 0x000000
Set-ItemProperty -Path HKCU:\Console -Name ColorTable09 0xFF0000
Set-ItemProperty -Path HKCU:\Console -Name ColorTable10 0x00FF00
Set-ItemProperty -Path HKCU:\Console -Name ColorTable11 0xFFFF00
Set-ItemProperty -Path HKCU:\Console -Name ColorTable12 0x0000FF
Set-ItemProperty -Path HKCU:\Console -Name ColorTable13 0xFF00FF
Set-ItemProperty -Path HKCU:\Console -Name ColorTable14 0x00FFFF
Set-ItemProperty -Path HKCU:\Console -Name ColorTable15 0xFFFFFF

Write-Host @"
$$$$$$\ $$\ $$\      $$\       $$$$$$$$\ $$\   $$\ $$$$$$$$\       $$$$$$$\  $$$$$$$$\ $$\    $$\ 
\_$$  _|$  |$$$\    $$$ |      \__$$  __|$$ |  $$ |$$  _____|      $$  __$$\ $$  _____|$$ |   $$ |
  $$ |  \_/ $$$$\  $$$$ |         $$ |   $$ |  $$ |$$ |            $$ |  $$ |$$ |      $$ |   $$ |
  $$ |      $$\$$\$$ $$ |         $$ |   $$$$$$$$ |$$$$$\          $$ |  $$ |$$$$$\    \$$\  $$  |
  $$ |      $$ \$$$  $$ |         $$ |   $$  __$$ |$$  __|         $$ |  $$ |$$  __|    \$$\$$  / 
  $$ |      $$ |\$  /$$ |         $$ |   $$ |  $$ |$$ |            $$ |  $$ |$$ |        \$$$  /  
$$$$$$\     $$ | \_/ $$ |         $$ |   $$ |  $$ |$$$$$$$$\       $$$$$$$  |$$$$$$$$\    \$  /   
\______|    \__|     \__|         \__|   \__|  \__|\________|      \_______/ \________|    \_/    
"@ -ForegroundColor Yellow

# Télécharger et installer Python
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.9.7/python-3.9.7-amd64.exe" -OutFile "$env:TEMP\python-installer.exe"
Start-Process -Wait -FilePath "$env:TEMP\python-installer.exe" -ArgumentList "/quiet", "InstallAllUsers=1", "PrependPath=1"
Remove-Item "$env:TEMP\python-installer.exe"

# Télécharger et installer Node.js
Invoke-WebRequest -Uri "https://nodejs.org/dist/v16.11.1/node-v16.11.1-x64.msi" -OutFile "$env:TEMP\node-installer.msi"
Start-Process -Wait -FilePath "msiexec.exe" -ArgumentList "/i", "$env:TEMP\node-installer.msi", "/quiet"
Remove-Item "$env:TEMP\node-installer.msi"

# Vérifier les versions installées
python --version
node --version
npm --version

# Effacer la console et afficher le texte personnalisé
Clear-Host
Write-Host @"
$$$$$$\ $$\ $$\      $$\       $$$$$$$$\ $$\   $$\ $$$$$$$$\       $$$$$$$\  $$$$$$$$\ $$\    $$\ 
\_$$  _|$  |$$$\    $$$ |      \__$$  __|$$ |  $$ |$$  _____|      $$  __$$\ $$  _____|$$ |   $$ |
  $$ |  \_/ $$$$\  $$$$ |         $$ |   $$ |  $$ |$$ |            $$ |  $$ |$$ |      $$ |   $$ |
  $$ |      $$\$$\$$ $$ |         $$ |   $$$$$$$$ |$$$$$\          $$ |  $$ |$$$$$\    \$$\  $$  |
  $$ |      $$ \$$$  $$ |         $$ |   $$  __$$ |$$  __|         $$ |  $$ |$$  __|    \$$\$$  / 
  $$ |      $$ |\$  /$$ |         $$ |   $$ |  $$ |$$ |            $$ |  $$ |$$ |        \$$$  /  
$$$$$$\     $$ | \_/ $$ |         $$ |   $$ |  $$ |$$$$$$$$\       $$$$$$$  |$$$$$$$$\    \$  /   
\______|    \__|     \__|         \__|   \__|  \__|\________|      \_______/ \________|    \_/    
"@ -ForegroundColor Yellow
