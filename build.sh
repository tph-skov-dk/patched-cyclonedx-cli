#!/bin/sh
set -xe

git submodule update --init --recursive

cd cyclonedx-dotnet-library/src/CycloneDX.Spdx.Interop/
dotnet build
cd -

cd cyclonedx-cli/src/cyclonedx
dotnet build
cd -

cp cyclonedx-cli/src/cyclonedx/bin/*/*/cyclonedx.exe .
