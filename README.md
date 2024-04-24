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
the depending on your shell run one of this commands:

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
You are all set!!

## Usage:
You can now use the script in your terminal by using the ```rm``` command as you are accustomed to, but the files or directories will be moved to the trash instead.
NOTE: The only adjustment you'll need to make is to avoid using rm -rf for directories, and just use rm since the script automatically performs recursive actions by recognizing whether the target is a directory or a file.

The actual command to permanently delete files or directories is now the ```del``` command in your terminal.

#### Enjoy no more pain in permanently deleting files accidentaly!









