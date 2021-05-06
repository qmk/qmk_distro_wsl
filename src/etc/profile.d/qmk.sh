maybe_qmk_welcome () {
  local RED='\033[0;31m'
  local YELLOW='\033[1;33m'
  local NC='\033[0m' # No Color

  timeout 3 qmk config user.hide_welcome | grep 'user.hide_welcome=True' &> /dev/null
  if [ "$?" != "0" ]; then
    echo -e "${RED}Welcome to QMK WSL!${NC}"
    echo -e "  * Documentation:    https://docs.qmk.fm"
    echo -e "  * Support:          https://discord.gg/Uq7gcHh"
    echo -e "  * Quickstart:       Run '${YELLOW}qmk-admin${NC}'"

  fi
}

maybe_qmk_welcome

# Fix initial directory on Windows Terminal
cd ~

# Ensure cron is running
sudo service cron start &> /dev/null
