# patched-cyclonedx-cli

## build steps

1. pull submodules

`git submodule update --init --recursive`

2. build `cyclonedx-dotnet-library/CycloneDX.Spdx.Interop` locally

```
cd cyclonedx-dotnet-library/src/CycloneDX.Spdx.Interop/
dotnet build
cd -
```

3. build cyclonedx-cli

```
cd cyclonedx-cli/src/cyclonedx
dotnet build
cd -
```

4. the built executable should now be present in `cyclonedx-cli/src/cyclonedx/bin/*/*/cyclonedx.exe`

```
cp cyclonedx-cli/src/cyclonedx/bin/*/*/cyclonedx.exe .
```
