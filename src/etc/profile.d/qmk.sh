maybe_qmk_welcome () {
  local YELLOW='\033[1;33m'
  local GREEN='\033[0;32m'
  local NC='\033[0m' # No Color

  if [ "$(qmk config user.hide_welcome | grep -c '=True')" == "0" ]; then
    echo -e "${GREEN}Welcome to QMK WSL!${NC}"
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
