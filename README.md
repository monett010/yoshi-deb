## Debian Bookworm on Yoshi

### kde plasma standard with some packages removed


## Pre Setup
- Make sure partitions are right and transfer files to the other partition

### Partitions
- / main
- /files partition with dotfiles, Desktop, Pictures, Downloads

## Initial Setup
1. Debian Bookworm 12.6 netinstall with no desktop environment, ssh server, basic programs
2. reboot and do first update
3. install some necessary packages:
  ```bash
  git vim nala wget curl samba python3-pip python3-venv zoxide zsh
  ```

4. Clone yoshi-deb repository into home folder
5. Run ``install_desktop-env.sh`` and reboot
6. Transfer files and do symlinks. Setup firefox.
7. Run ``install_spotify.sh`` and ``install_konsave.sh``
8. Install and setup Powerlevel 10k

- 
xorg sddm kde-standard [see kde_install.txt]

firefox vlc smb4k 

libreoffice

dropbox - https://linux.dropboxstatic.com/packages/debian/
https://linux.dropboxstatic.com/packages/debian/dropbox_2024.04.17_amd64.deb
