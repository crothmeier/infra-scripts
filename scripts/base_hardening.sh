#!/usr/bin/env bash
# base_hardening.sh — idempotent patch & prep for DL360 Gen10
set -euo pipefail
log() { printf '[%s] %s\n' "$(date -Iseconds)" "$*"; }

# 1) Bring OS current, then prompt user to reboot once.
log "Updating packages …"
sudo DEBIAN_FRONTEND=noninteractive apt update -y
sudo DEBIAN_FRONTEND=noninteractive apt full-upgrade -y
log "==> Reboot now, rerun this script afterwards"; exit 0
