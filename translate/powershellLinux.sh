#!/usr/bin/sh

while [[ true ]]; do

  #change en to desired language
  pwsh -NoProfile -ExecutionPolicy Bypass -File "translatetofilep2.ps1" -lang en

  echo "Script crashed or manually quit. CTRL-C to exit, otherwise restarting..."

  sleep 1

done

