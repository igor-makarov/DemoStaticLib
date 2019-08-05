# DemoStaticLib
Demo for Apple bug https://openradar.appspot.com/6929466

 
When archiving a static library written in Swift, the .swiftmodule is missing.
Additionally, even if placed into the archive by a script after the fact, the `xcodebuild -create-xcframework` command also ignores the .swiftmodule and doesn't copy it over.

Run the `./test.sh`
Observe the difference betweem the plain build (has Swift module) and the archive (has not).
