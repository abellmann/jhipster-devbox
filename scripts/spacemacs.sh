#!/bin/bash
sudo apt-get install -y emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/abellmann/emacs.git ~/emacs-config
ln -sf ~/emacs-config/spacemacs/.spacemacs ~/.spacemacs

rm -rf ~/.emacs.d/private/local/org-ab
ln -s ~/emacs-config/spacemacs/layers/org-ab ~/.emacs.d/private/local/org-ab

rm -rf ~/.emacs.d/private/local/org-ab-convenience
ln -s ~/emacs-config/spacemacs/layers/org-ab-convenience ~/.emacs.d/private/local/org-ab-convenience
