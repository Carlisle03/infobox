#!/bin/zsh

files=$1
# Check if a command is not found
if ! command -v gum &> /dev/null; then
    echo "Infobox requires gum command to run. Command 'gum' not found. You need to install the corresponding package."

    # Suggest package installation based on common package managers
    if command -v apt-get &> /dev/null; then
        echo "You can try installing it with 'sudo apt-get install gum"
    elif command -v yum &> /dev/null; then
        echo "You can try installing it with 'sudo yum install gum"
    elif command -v dnf &> /dev/null; then
        echo "You can try installing it with 'sudo dnf install gum"
    elif command -v brew &> /dev/null; then
        echo "You can try installing it with 'brew install gum"
    fi
	exit 1
fi
vers="1.0.0"
echo -e "\033[1;34m								INFOBOX-X $vers							\033[0;37m"
# Execute the command and capture its output
file="gum file ./"
a=$(eval "$file")

if echo "$a" | grep -q "\.bin"; then
		python3 ascii.py bin
		gum style \
			--foreground 212 --border-foreground 128 --border double \
			--align center --width 50 --margin "1 2" --padding "2 4" \
			$a 'This is a binary of a certain file, may be a .bin from a x86 ASM file'
elif echo "$a" | grep -q "\.txt"; then 
		python ascii.py txt
		gum style \
			--foreground 212 --border-foreground 212 --border double \
			--align center --width 50 --margin "1 2" --padding "2 4" \
			$a 'It is a plain text file'

elif echo "$a" | grep -q "\.py"; then
		python3 ascii.py py
		gum style \
			--foreground 212 --border-foreground 255 --border double \
			--align center --width 50 --margin "1 2" --padding "2 4" \
			$a 'A Python Script' 'Uses python3 [file] to execute'
elif echo "$a" | grep -q "\.c"; then 
		python3 ascii.py c
		gum style \
			--foreground 212 --border-foreground 212 --border double \
			--align center --width 50 --margin "1 2" --padding "2 4" \
			$a 'This is a C Source File' 'Compile this with gcc/clang [file] and ./[file]'
elif echo "$a" | grep -q "\.s|\.asm"; then
		python3 ascii.py bin
		gum style \
			--foreground 212 --border-foreground 212 --border double \
			--align center --width 50 --margin "1 2" --padding "2 4" \
			$a 'A Assembly Code' 'It may be x86_64 or ARM'
else
		echo "The file is not yet available in version $vers or not a file type"
fi

