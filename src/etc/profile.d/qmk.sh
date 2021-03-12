maybe_qmk_welcome () {
  local RED='\033[0;31m'
  local YELLOW='\033[1;33m'
  local GREEN='\033[0;32m'
  local NC='\033[0m' # No Color

  echo "Welcome to QMK WSL!"
  echo "  * Documentation:    https://docs.qmk.fm"
  echo "  * Support:          https://discord.gg/Uq7gcHh"

  if [ "$(qmk config user.hide_welcome | grep -c '=True')" == "0" ]; then
    echo ""
    echo "If you have not already done so,"
    echo -e "  run ${YELLOW}qmk setup${NC} to get started."
    echo -e "  run ${GREEN}qmk compile -kb <keyboard> -km default${NC} to start building."
    echo -e "  run ${RED}qmk config user.hide_welcome=True${NC} to hide this message."
  fi
}

maybe_qmk_welcome

# Fix initial directory on Windows Terminal
cd ~

# Ensure cron is running
sudo service cron start &> /dev/null
