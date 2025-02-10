
Pod::Spec.new do |spec|

  spec.name         = "ApTestLibrary"
  spec.version      = "1.0.11"
  spec.summary      = "This is just a library to test the logs."
  spec.description  = "This is just a library to test the logs. Whether there is any duplicity message in the logs"
  spec.homepage     = "https://github.com/rishh18/ApTestLib"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "rishh18" => "rishabh.tripathi@adpushup.com" }
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/rishh18/ApTestLib.git", :tag => "1.0.11" }
  spec.swift_version = "5.0"
  spec.vendored_frameworks = "Sources/ApTestLib/TestLibrary.xcframework"
  spec.dependency 'Google-Mobile-Ads-SDK'

end
