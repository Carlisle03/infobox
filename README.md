# INFOBOX-X 1.0.0

## NAME 

### **Infobox-x=shows info of a file**

## SYPNOSIS

### infobox-x 

## INSTALLATION

Install this github repo by doing
```sh
git clone https://github.com/Carlisle03/infobox.git
```
then do 
```sh
make
```

## REQUIREMENTS

### GUM
```sh
# macOS or Linux
brew install gum

# Arch Linux
pacman -S gum

# Nix
nix-env -iA nixpkgs.gum
# Or, with flakes
nix run "github:charmbracelet/gum" -- --help

# Debian/Ubuntu
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install gum

# Fedora/RHEL
echo '[charm]
name=Charm
baseurl=https://repo.charm.sh/yum/
enabled=1
gpgcheck=1
gpgkey=https://repo.charm.sh/yum/gpg.key' | sudo tee /etc/yum.repos.d/charm.repo
sudo yum install gum

# Alpine
apk add gum

# Android (via termux)
pkg install gum

# Windows (via WinGet or Scoop)
winget install charmbracelet.gum
scoop install charm-gum
```

### PYTHON3

### Go to the [Python website](https://python.org) to install on your system


## DESC

Infobox-x is a shell script that finds files and prints its info 


## REMINDERS
### THE FULL INFO IS STILL NOT AVAILABLE

## PLATFORMS 

Windows WSL

MacOSX 12

Linux 

BSD operating systems (Maybe?)
