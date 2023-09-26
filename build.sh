set -ex

west build -d build/left -b nice_nano_v2 -p -- -DSHIELD="corne_left nice_view_adapter nice_view" -DZMK_CONFIG="/miryoku/config"
west build -d build/right -b nice_nano_v2 -p -- -DSHIELD="corne_right nice_view_adapter nice_view" -DZMK_CONFIG="/miryoku/config"

mkdir -p /zmk-config/build
/bin/cp -rf build/left/zephyr/zmk.uf2 /zmk-config/build/left.uf2
/bin/cp -rf build/right/zephyr/zmk.uf2 /zmk-config/build/right.uf2
