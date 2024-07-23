# patched-cyclonedx-cli

a patched version of cyclonedx-cli that uses a patched version of cyclonedx-dotnet-library

patches for cyclonedx-dotnet-library include:

- `creatorInfo.creator` has a default author email of `no-author@skov.com` if email is blank
- include first available CPE or log if no CPE was found

## build steps

can also be done by running `./build.sh`

1. pull submodules

```sh
git submodule update --init --recursive`
```

2. build `cyclonedx-dotnet-library/CycloneDX.Spdx.Interop` locally

```sh
cd cyclonedx-dotnet-library/src/CycloneDX.Spdx.Interop/
dotnet build
cd -
```

3. build cyclonedx-cli

```sh
cd cyclonedx-cli/src/cyclonedx
dotnet build
cd -
```

4. the built executable should now be present in `cyclonedx-cli/src/cyclonedx/bin/*/*/cyclonedx.exe` and can be ran

```sh
# either
./cyclonedx-cli/src/cyclonedx/bin/*/*/cyclonedx.exe (...args)
# or
./run.sh (...args)
```
