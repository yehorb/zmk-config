docker run `
    -it `
    --name zmk-dev `
    --mount "type=volume,source=zmk-dev,target=/zmk" `
    --mount "type=volume,source=zmk-dev-pip-cache,target=/root/.cache/pip" `
    --mount "type=volume,source=zmk-dev-python-lib,target=/usr/local/lib/python3.8" `
    --mount "type=bind,source=$Env:USERPROFILE\Projects\zmk-config,target=/zmk-config" `
    --rm `
    --workdir /zmk `
    zmk-dev-arm:main `
    bash
