#!/bin/zsh

# colorterminal_[color_name]
ct_cyan='\x1b[36m'
ct_green='\x1b[32m'
ct_green_highlight='\x1b[42;39m'
ct_yellow='\x1b[33m'
ct_yellow_highlight='\x1b[43;30m'
ct_red='\x1b[31m'
ct_red_highlight='\x1b[41;97m'
ct_white_highlight='\x1b[107;30m'
# standard
ctm_std='\x1b[38;5;69m'
# instructions
ctm_instr='\x1b[38;5;140m'
# reset escape codes
ct_reset='\x1b[0m'

cprint() {
  printf "$ctm_std$1$ct_reset\n"
}
cprint_info() {
  printf "$ct_yellow$1$ct_reset\n"
}
cprint_note() {
  printf "$ctm_instr$1$ct_reset\n"
}
cprint_error() {
  printf "$ct_red_highlight $1 $ct_reset\n"
}
cprompt() {
  printf "$ctm_std$1$ct_reset"
  read -q "user_reply? (y/n) "
  printf "\n"
}
cread() {
  printf "$ctm_std%s$ct_reset" 'input (hit enter when done): '
  read "user_reply"
}

# printf "yo, this is $ct_white_highlight highlighted in white $ct_reset\n"
# printf "hello $ct_green< foo >$ct_reset, $ct_green_highlight $(date) $ct_reset\n"
# printf "$ct_red$(uname -a)$ct_reset\n"
# printf "asdf $ct_yellow_highlight this thing 3289z& $ct_reset\n\n"
# printf "this is a $ct_red_highlight WARNING !!! $ct_reset\n"
# printf "${ct_green}able $ct_reset${ctm_std}was i ere i saw elba$ct_reset\n"

check_for_vpn_connection_fail_on_absent() {
  vpn_connection=$(lsof -n -i4UDP | grep openvpn)
  if [ "$?" != 0 ]; then
    printf "\n"
    cprint_error "missing vpn connection"
    cprint_note "check your vpn connection and try again\n"
    exit 1
  fi
}

display_current_time() {
  cprint "current time is: $ct_white_highlight $(date) $ct_reset"
}
