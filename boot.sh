#!/bin/bash

ansi_art='
-----------     ------    ------------   --------   ------------ 
***********    ********   ************  **********  ************ 
----    ---   ----------  ------------ ----    ---- ----         
*********    ****    ****     ****     ***      *** ************ 
---------    ------------     ----     ---      --- ------------ 
****  ****   ************     ****     ****    ****        ***** 
----   ----  ----    ----     ----      ----------  ------------ 
****    **** ****    ****     ****       ********   ************'

clear
echo -e "\n$ansi_art\n"

sudo pacman -Syu --noconfirm --needed git

RATOS_REPO="${RATOS_REPO:-YaBoiManiac/ratos}"

echo -e "\nCloning RatOS from: https://github.com/${RATOS_REPO}.git"
rm -rf ~/.local/share/ratos/
git clone "https://github.com/${RATOS_REPO}.git" ~/.local/share/ratos >/dev/null
# Use custom branch if instructed, otherwise default to master
RATOS_REF="${RATOS_REF:-master}"
if [[ $RATOS_REF != "master" ]]; then
  echo -e "\e[32mUsing branch: $RATOS_REF\e[0m"
  cd ~/.local/share/ratos
  git fetch origin "${RATOS_REF}" && git checkout "${RATOS_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/ratos/install.sh
