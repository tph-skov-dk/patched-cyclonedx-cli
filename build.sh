#!/bin/sh
set -xe

git submodule update --init --recursive

cd cyclonedx-dotnet-library/src/CycloneDX.Spdx.Interop/
dotnet build
cd -

dotnet publish cyclonedx-cli/src/cyclonedx -o release -p:PublishSingleFile=true --self-contained true
cp release/cyclonedx.exe .
rm -r release

./cyclonedx.exe --help
