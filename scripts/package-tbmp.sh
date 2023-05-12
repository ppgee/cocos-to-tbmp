#!/bin/bash
set -e

PROJECT_NAME="cocos-taobao-adapter"

PLUGIN_NAME="taobao-builder"

PLUGIN_DIST="./dist"

echo "Packaging build-templates"

zip -r -v -9 build-templates.zip ./build-templates

echo "Packaged build-templates"

echo "Remove finished."

echo "Package taobao-builder"

pnpm build

cd dist

zip -r -v -9 taobao-builder.zip ./taobao-builder

echo "Package taobao-builder finished."
