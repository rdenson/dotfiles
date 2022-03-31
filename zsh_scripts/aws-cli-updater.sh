#!/bin/zsh
. ./shared.sh

cprint "\n/// AWS command-line interface updater"
cprint "--------------------------------------"
printf "$ctm_std%s$ct_reset" 'getting current version... '
aws_version=$(aws --version 2> /dev/null)
if [ $? = 0 ]; then
  printf "$ct_yellow$aws_version$ct_reset\n\n"
  cprompt "delete current install and continue?"
  if [ $user_reply = "y" ]; then
    rm /usr/local/bin/aws
    rm /usr/local/bin/aws_completer
    sudo rm -rf /usr/local/aws-cli
  else
    cprint "halting update"
    exit 0
  fi
else
  cprint_error "no version found"
  printf "\n"
fi

cprint "installing latest aws cli version"
installer="AWSCLIV2.pkg"
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "$installer"
sudo installer -pkg $installer -target /
cprint "removing installer"
rm $installer
cprint "aws cli version: $ct_reset$ct_yellow$(aws --version)$ct_reset\n"
