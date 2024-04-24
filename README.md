# UnixTrash
A simple tool to remap the rm command to move files/directories into the trash instead of permanently removing them.
Works both on macOs and on Linux, easy and simple to set up.

## Installation:
just run these commands:
```shell
git clone https://github.com/faustozamparelli/UnixTrash
sudo mv UnixTrash/trashyscript.sh /usr/local/bin
rm -rf UnixTrash
```
the depending on your shell run one of this commands:

bash shell:
```shell
echo "alias rm='/usr/local/bin/trashyscript.sh'" >> ~/.bashrc
echo "alias del='rm'" >> ~/.bashrc
source ~/.bashrc
```
zsh shell:
```shell
echo "alias rm='/usr/local/bin/trashyscript.sh'" >> ~/.zshrc
echo "alias del='rm'" >> ~/.zshrc
source ~/.zshrc
```
fish shell:
```shell
echo "alias rm '/usr/local/trashyscript.sh'" >> ~/.config/fish/config.fish
echo "alias del 'rm'" >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
```
your are all set!

## Usage:
You can now use the script in in your terminal by just doing the command rm like you where used to but you will then see the file or directory inside the trash.
NOTE: the only thing you will need to 'get used to' is to do not do rm -rf for direcotyes but just rm because it does the recursive action by itelf recognizing if the object passed is a directory or a file

The actual remove to permanently delete folder or directories can now be used with the 'del' command in your terminal

#### Enjoy! never ever accidentaly removing permanently files!









