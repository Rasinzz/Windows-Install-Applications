$InstallEssentialApplications
$InstallProductivity
$InstallGames

# Check if Winget is installed
Write-Host "Checking if Winget is installed..."

if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe) {
    "Winget is already installed"
} else {
    # Install Winget
    Write-Host "Winget was not detected. Installing Winget now..."
    Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
    $nid = (Get-Process AppInstaller).Id
    Wait-Process -Id $nid
    Write-Host "Winget installed"
}

function InstallEssentialApplications {
    # 7-Zip
    $choice = Read-Host "Install 7-Zip (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing 7-Zip..."
        winget install -e --id 7zip.7zip
        Write-Host "Installed 7-Zip"
    }

    # Google Chrome
    $choice = Read-Host "Install Google Chrome (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Google Chrome..."
        winget install -e --id Google.Chrome
        Write-Host "Installed Google Chrome"
    }

    # NVIDIA Drivers
    $choice = Read-Host "Install NVIDIA Drivers (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Opening a URL to install NVIDIA Drivers..."
        Start-Process "https://www.nvidia.com/download/index.aspx"
        Write-Host "Opened a URL to install NVIDIA Drivers"
    }

    # Corsair iCUE 4
    $choice = Read-Host "Install Corsair iCUE 4 (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Corsair iCUE 4..."
        winget install -e --id Corsair.iCUE.4
        Write-Host "Installed Corsair iCUE 4"
    }

    # MSI Afterburner
    $choice = Read-Host "Install MSI Afterburner (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Opening a URL to install MSI Afterburner..."
        Start-Process "https://www.msi.com/Landing/afterburner/graphics-cards"
        Write-Host "Opened a URL to install MSI Afterburner"
    }

    # Logitech G HUB
    $choice = Read-Host "Install Logitech G HUB (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Logitech G HUB..."
        winget install -e --id Logitech.GHUB
        Write-Host "Installed Logitech G HUB"
    }

    # ShareX
    $choice = Read-Host "Install ShareX (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing ShareX..."
        winget install -e --id ShareX.ShareX
        Write-Host "Installed ShareX"
    }

    # OBS Studio
    $choice = Read-Host "Install OBS Studio (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing OBS Studio..."
        winget install -e --id OBSProject.OBSStudio
        Write-Host "Installed OBS Studio"

        Write-Host "Opening 2 URLs (these may be helpful if you are using OBS Replay Buffer)"
        Start-Process "https://youtu.be/TBBk-EfUvBU"
        Start-Process "https://youtu.be/Qe-2wUwqlcA"
        Write-Host "Opened 2 URLs (these may be helpful if you are using OBS Replay Buffer)"
    }

    # Discord
    $choice = Read-Host "Install Discord (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Discord..."
        winget install -e --id Discord.Discord
        Write-Host "Installed Discord"
    }

    # Spotify
    $choice = Read-Host "Install Spotify (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Spotify..."
        winget install -e --id Spotify.Spotify
        Write-Host "Installed Spotify"
    }

    # Steam
    $choice = Read-Host "Install Steam (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Steam..."
        winget install -e --id Valve.Steam
        Write-Host "Installed Steam"
    }

    # Medal TV
    $choice = Read-Host "Install Medal TV (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Medal TV..."
        winget install -e --id MedalB.V.Medal
        Write-Host "Installed Medal TV"
    }

    # VibranceGUI
    $choice = Read-Host "Install VibranceGUI (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Opening a URL to install VibranceGUI..."
        Start-Process "https://vibrancegui.com/vibrance/download"
        Write-Host "Opened a URL to install VibranceGUI"
    }
}

function InstallProductivity {
    # Visual Studio Code
    $choice = Read-Host "Install Visual Studio Code (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Visual Studio Code..."
        winget install -e --id Microsoft.VisualStudioCode
        Write-Host "Installed Visual Studio Code"
    }

    # Git
    $choice = Read-Host "Install Git (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Git..."
        winget install -e --id Git.Git
        Write-Host "Installed Git"
    }

    # GitHub Desktop
    $choice = Read-Host "Install GitHub Desktop (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing GitHub Desktop..."
        winget install -e --id GitHub.GitHubDesktop
        Write-Host "Installed GitHub Desktop"
    }

    # Python 3
    $choice = Read-Host "Install Python 3 (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Python 3..."
        winget install -e --id Python.Python.3
        Write-Host "Installed Python 3"
    }

    # Java 8
    $choice = Read-Host "Install Java 8 (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Java 8..."
        winget install -e --id Oracle.JavaRuntimeEnvironment
        Write-Host "Installed Java 8"
    }
}

function InstallGames {
    # League of Legends (NA)
    $choice = Read-Host "Install League of Legends (NA) (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing League of Legends (NA)..."
        winget install -e --id RiotGames.LeagueOfLegends.NA
        Write-Host "Installed League of Legends (NA)"
    }

    # U.GG
    $choice = Read-Host "Install U.GG (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Opening a URL to install U.GG..."
        Start-Process "https://u.gg/app?utm_source=uggtop"
        Write-Host "Opened a URL to install U.GG"
    }

    # Porofessor
    $choice = Read-Host "Install Porofessor (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Opening a URL to install Porofessor..."
        Start-Process "https://porofessor.gg/download"
        Write-Host "Opened a URL to install Porofessor"
    }

    # Epic Games Launcher
    $choice = Read-Host "Install Epic Games Launcher (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Installing Epic Games Launcher..."
        winget install -e --id EpicGames.EpicGamesLauncher
        Write-Host "Installed Epic Games Launcher"
    }

    # FiveM
    $choice = Read-Host "Install FiveM (Y/N)?"
    if ($choice -eq "Y") {
        Write-Host "Opening a URL to install FiveM..."
        Start-Process "https://fivem.net/"
        Write-Host "Opened a URL to install FiveM"
    }
}

$InstallEssentialApplications = Read-Host "Would you like to install Essential Applications (Y/N)?"
if ($InstallEssentialApplications -eq "Y") {
    InstallEssentialApplications
}

$InstallProductivity = Read-Host "Would you like to install Productivity Applications (Y/N)?"
if ($InstallProductivity -eq "Y") {
    InstallProductivity
}

$InstallGames = Read-Host "Would you like to install Games (Y/N)?"
if ($InstallGames -eq "Y") {
    InstallGames
}
