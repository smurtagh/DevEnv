#first things first. you are going need chocolatey if this is going to work.   
Write-Output "First we are going to install Chocolatey, this will allow us to install the other applications in this script"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$communication = ("slack", "zoom", "whatsapp")
$browsers = ("microsoft-edge", "firefox", "googlechrome")

$vscode = ("vscode")
$visualstudio = ("visualstudio2022professional" )

$git = ("git", "github-desktop")

$runtime = ("nodejs", "dotnet4.7.1", "dotnetcore", "dotnet-6.0-sdk")
$db = ("sql-server-2019", "sql-server-management-studio")
$misc = ("notepadplusplus", "postman", "fiddler", "winmerge", "microsoftazurestorageexplorer", "spotify", "powershell")

# the order of this is important
$all = $communication + $runtime + $browsers + $vscode +  $visualstudio + $git + $db + $misc 

choco config set cacheLocation "C:\Temp"

Write-Output "Packages ready to install" 
foreach ($package in $all) {
    Write-Output "Downloading and installing $package"

    if ($package -eq "wsl2") {
            $params = "/Version:2"
            choco install $package --params $params -y
        }
        
        choco install $package -y
    }


Write-Output "Deleting temp chocolatey files"
Remove-Item "C:\Temp" -Recurse -Force