# change this as needed
# didn't put the --noconfirm flag so the user knows what is going to get downloaded
# requires the user to be in the 'dotfiles' directory

# don't re-install packages that are already installed
sudo pacman --needed -S dolphin feh dunst picom rofi qutebrowser nvim

# i3 config

mkdir -p ~/.config/i3 # create all parent directories if the don't exist
mkdir -p ~/.config/i3status
mkdir -p ~/.config/i3blocks

# instead of moving the files, let's copy them and the user can choose to remove them or not

cp ./i3/config ~/.config/i3/
cp ./i3/etc/i3status.conf ~/.config/i3status/config
cp ./i3/etc/i3blocks.conf ~/.config/i3blocks/config

# neovim config

mkdir -p ~/.config/nvim
cp -r ./neovim/* ~/.config/nvim/ # -r to not ommit (not copy) directories but we want the lua/ directory to be copied

# check if the user wants to delete those files or not

	read -p "Do you want to remove un-needed files and cleanup? (y/n) " yn
    case $yn in
        [Yy]* ) echo "rm -rf ~/dotfiles/"; break;;
        [Nn]* ) echo "Quitting..."; exit;;
        * ) exit;;
    esac
done


