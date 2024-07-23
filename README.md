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

3. build cyclonedx-cli as a self-contained exe

```sh
dotnet publish cyclonedx-cli/src/cyclonedx -o release -p:PublishSingleFile=true --self-contained true
cp release/cyclonedx.exe .
rm -r release
```

4. run cyclonedx

```sh
./cyclonedx.exe
```
