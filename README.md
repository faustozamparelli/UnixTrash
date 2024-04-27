# UnixTrash
A simple tool to remap the rm command to move files or directories into the trash instead of permanently deleting them.  
Works on both macOS and Linux, and is easy to set up.  

## Installation:
just run these commands:
```shell
git clone https://github.com/faustozamparelli/UnixTrash
sudo mv UnixTrash/trashyscript.sh /usr/local/bin
rm -rf UnixTrash
```
Now if you want to remap the command to rm go to seaction ```2.0``` if not (preferred) keep reading.  
Depending on your shell run one of this commands:  
For bash shell:
```shell
echo "alias rm='/usr/local/bin/trashyscript.sh'" >> ~/.bashrc
source ~/.bashrc
```
For zsh shell:  
```shell
echo "alias rm='/usr/local/bin/trashyscript.sh'" >> ~/.zshrc
source ~/.zshrc
```
For fish shell:  
```shell
echo "alias rm '/usr/local/trashyscript.sh'" >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
```
You are all set!!  

## Usage:  
You can now use the script in your terminal by using the ```r``` command (better than using the defaul rm because some tool you install may need the original one) to move the files into your system trash  
NOTE: One adjustment you'll need to get used to is to avoid using ```r -rf``` for directories, and just use r command since the script automatically performs recursive actions by recognizing whether the target is a directory or a file.  
And you can use r --empty to empty your trash, right from the cli!  

You can keep using the rm command for files you want to delete immediatly  

#### Enjoy no more pain in permanently deleting files accidentaly!  

### 2.0 If you are too used to the rm command and want to use that one:  
For bash shell:  
```shell
echo "alias rm='/usr/local/bin/trashyscript.sh'" >> ~/.bashrc
echo "alias del='rm'" >> ~/.bashrc
source ~/.bashrc
```
For zsh shell:  
```shell
echo "alias rm='/usr/local/bin/trashyscript.sh'" >> ~/.zshrc
echo "alias del='rm'" >> ~/.zshrc
source ~/.zshrc
```
For fish shell:  
```shell
echo "alias rm '/usr/local/trashyscript.sh'" >> ~/.config/fish/config.fish
echo "alias del 'rm'" >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
```
Use ```rm``` to move to the trash (no need for flags like -rf) and ```del``` as your old rm command. And rm --empty to empty your trash.
















