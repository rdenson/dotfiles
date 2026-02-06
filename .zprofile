# --- ENV VARS --- #
# ~~~~~~~~~~~~~~~~ #
export GOPATH=$HOME/repos/go
export N_PREFIX=$HOME/n_mgr
export TMPDIR=/Users/richard.denson/tmp/go-runit/
# kubectl pre-1.25
export USE_GKE_GCLOUD_AUTH_PLUGIN=true

# CUSTOM EXPORTS
export GOOGLE_APPLICATION_CREDENTIALS=/Users/richard.denson/.config/gcloud/legacy_credentials/PRIN/adc.json
#export FRAAS_CONFIG_PATH=
export SAAS_PATH=/Users/richard.denson/repos/go/src/github.com/ForgeCloud/saas
# ~~~

path=($N_PREFIX'/bin' $path)
path=($HOME'/.tfenv/bin' $path)
path=($GOPATH'/bin' $path)
# special brew path fo apple silicon
path=('/opt/homebrew/bin' $path)
path+=('/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin')
# ~~~
path+=($HOME'/bin')
export path

# remove path dups
typeset -U PATH path

