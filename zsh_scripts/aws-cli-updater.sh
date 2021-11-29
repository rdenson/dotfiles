#!/bin/zsh
. /Users/denson/Documents/hold/shared.sh

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

# cliToolLocation=$(which aws)
# printf "installed in → $cliToolLocation\n"
# printf "symlinked below:\n"
# ls -l $cliToolLocation
# exit 99
#printf "\nremoving installation...\n"

## remove symlinks
## ----------------
##while IFS= read -r line; do
##  #rm $line
##  echo "> [$line]"
##done <<< "$(ls $cliToolLocation* | cut -f1 )"
#for f in $(which aws)*; do
  #echo "rm -i $f"
#  rm -i "$f"
#done
#exit 1

# remove main installation
# -------------------------
# "/aws" → length 4
#EXEC_SIZE=4
#sourceToLink=$(perl -MCwd -e 'print Cwd::abs_path shift' $cliToolLocation)
#sourceSize=$(( ${#sourceToLink} - 4 ))
#mainInstallDir=$(echo $sourceToLink | cut -c1-$sourceSize)
#echo "sudo rm -rf $mainInstallDir"
#sudo rm -rf "$mainInstallDir"
#printf "done\n"
