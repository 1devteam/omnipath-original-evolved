#!/bin/bash

echo "⚙️ Cleaning Omnipath layout..."

# Move backend core files
mv ForkAlpha.py backend/core/
mv ForkBeta.py backend/core/
mv ForkFleetController.py backend/core/
mv ForkLink.py backend/core/
mv ForkMemory.py backend/core/
mv FleetLauncher.py backend/core/
mv CommandBridge.py backend/core/
mv CoreStatus.py backend/core/

# Merge additional core files into backend/core/
if [ -d core ]; then
  echo "📁 Merging root 'core/' into backend/core/"
  mv core/* backend/core/
  rm -r core/
fi

# Agents already good in backend/agents/, do not move them

echo "✅ Omnipath structure cleaned up."
