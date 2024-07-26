$ZmkDirectory = Join-Path $PSScriptRoot ".." | Resolve-Path

devcontainer exec --workspace-folder $ZmkDirectory west build --build-dir /workspaces/zmk/build/left --board nice_nano_v2 /workspaces/zmk/app -p `-- -DSHIELD='corne_left nice_view_adapter nice_view' -DZMK_CONFIG='/workspaces/zmk/zmk-config/config'
devcontainer exec --workspace-folder $ZmkDirectory west build --build-dir /workspaces/zmk/build/right --board nice_nano_v2 /workspaces/zmk/app -p `-- -DSHIELD='corne_right nice_view_adapter nice_view' -DZMK_CONFIG='/workspaces/zmk/zmk-config/config'

Copy-Item -Force "$ZmkDirectory/build/left/zephyr/zmk.uf2" "$ZmkDirectory/build/left.uf2"
Copy-Item -Force "$ZmkDirectory/build/right/zephyr/zmk.uf2" "$ZmkDirectory/build/right.uf2"
