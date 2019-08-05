#!/bin/sh

# build regular - has Swift module!
xcodebuild build \
  -project DemoStaticLib.xcodeproj \
  -scheme DemoStaticLib \
  -destination "generic/platform=iOS" \
  -derivedDataPath derivedData \
  SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# build archive - no Swift module!
xcodebuild archive \
  -project DemoStaticLib.xcodeproj \
  -scheme DemoStaticLib \
  -destination "generic/platform=iOS" \
  -archivePath archive \
  SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
