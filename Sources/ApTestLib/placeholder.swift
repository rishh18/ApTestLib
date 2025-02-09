// xcodebuild archive \
// -workspace TestLibrary.xcworkspace \
// -scheme TestLibrary \
// -configuration Release \
// -archivePath "./build/iOS" \
// -sdk iphoneos \
// SKIP_INSTALL=NO \
// BUILD_LIBRARY_FOR_DISTRIBUTION=YES

// xcodebuild archive \
// -workspace TestLibrary.xcworkspace \
// -scheme TestLibrary \
// -configuration Release \
// -archivePath "./build/iOSSimulator" \
// -sdk iphonesimulator \
// SKIP_INSTALL=NO \
// BUILD_LIBRARY_FOR_DISTRIBUTION=YES

// xcodebuild -create-xcframework \
//     -framework "./build/iOS.xcarchive/Products/Library/Frameworks/TestLibrary.framework" \
//     -framework "./build/iOSSimulator.xcarchive/Products/Library/Frameworks/TestLibrary.framework" \
//     -output "./build/TestLibrary.xcframework"

// zip -r "./build/TestLibrary.xcframework.zip" "./build/TestLibrary.xcframework"