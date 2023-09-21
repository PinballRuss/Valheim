#!/bin/bash

world_path=~/.config/unity3d/IronGate/Valheim/worlds_local/Crunchy*
zip_path=~/valheim_backups/worlds.backup.$(date "+%Y.%m.%d_%H.%M.%S").zip
echo world path = $world_path
echo zip_path = $zip_path
zip -r $zip_path $world_path
read -p "incremental backups will now be removed.  Ctrl+C to abort."
rm ${world_path}backup*
echo done.

