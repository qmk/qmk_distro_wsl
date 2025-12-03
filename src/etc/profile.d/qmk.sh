maybe_qmk_welcome () {
  local RED='\033[0;31m'
  local YELLOW='\033[1;33m'
  local NC='\033[0m' # No Color

  timeout 3 qmk config user.hide_welcome | grep 'user.hide_welcome=True' &> /dev/null
  if [ "$?" != "0" ]; then
    echo -e "${RED}Welcome to QMK WSL!${NC}"
    echo -e "  * Documentation:    https://docs.qmk.fm"
    echo -e "  * Support:          https://discord.gg/qmk"
    echo -e "  * Quickstart:       Run '${YELLOW}qmk-admin${NC}'"
  fi

  timeout 3 qmk config user.ignore_update_check | grep 'user.ignore_update_check=True' &> /dev/null
  if [ "$?" != "0" ]; then
    local LATEST_CLI=$(timeout 3 wget -qO- https://api.github.com/repos/qmk/qmk_cli/tags | jq '.[0].name' -r)
    echo $LATEST_CLI | grep -q $(qmk --version)
    if [ "$?" != "0" ]; then
      echo -e "  * Updates:          QMK CLI ${RED}${LATEST_CLI}${NC} available!"
    fi
  fi
}

# Handle bootstrap install location
export PATH=/opt/qmk/bin:$PATH
export QMK_DISTRIB_DIR=/opt/qmk

maybe_qmk_welcome

# Fix initial directory on Windows Terminal
cd ~

# Ensure cron is running
sudo service cron start &> /dev/null
