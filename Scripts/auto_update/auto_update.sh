#!/bin/bash
apt update && apt -y upgrade && apt -y autoremove
if [ $? -eq 0 ]; then
  # Check if a reboot is required
  if [ -f /var/run/reboot-required ]; then
    /sbin/shutdown -r +5 "System will reboot in 5 minutes after updates."
  fi
fi
