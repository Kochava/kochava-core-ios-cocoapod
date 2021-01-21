#
# Be sure to run `pod lib lint KochavaCoreiOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KochavaCoreiOS'
  s.version          = '4.3.1'
  s.summary          = 'The KochavaCore module of the Kochava iOS SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description  = <<-DESC
  The KochavaCore module provides core support for all modules within the Kochava SDK for the Apple iOS platform.
  DESC

  s.homepage         = 'http://www.kochava.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Kochava' => 'support@kochava.com' }
  s.source           = { :git => 'https://github.com/Kochava/kochava-core-ios-cocoapod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.3'

  s.source_files = 'KochavaCoreiOS/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KochavaCoreiOS' => ['KochavaCoreiOS/Assets/*.png']
  # }

  s.public_header_files = 'KochavaCoreiOS/Classes/**/*.h'
  s.frameworks   = 'Foundation', 'UIKit', 'CoreGraphics', 'CoreLocation'

  s.platform     = :ios, '10.3'
  s.vendored_libraries = 'KochavaCoreiOS/Libraries/libKochavaCoreiOS.a', 'KochavaCoreiOS/Libraries/libKochavaCoreiOS.a'
  s.preserve_paths = 'KochavaCoreiOS/Libraries/libKochavaCoreiOS.a', 'KochavaCoreiOS/Libraries/libKochavaCoreiOS.a'
  # s.library = 'KochavaCoreiOS'
  
  s.swift_versions = '5.0'
  
  # Xcode 12 Bug Fix:  https://github.com/CocoaPods/CocoaPods/issues/10065#issuecomment-694268918
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
