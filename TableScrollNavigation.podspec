#
# Be sure to run `pod lib lint TableScrollNavigation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TableScrollNavigation"
  s.version          = "0.1.0"
  s.summary          = "A subclass of UINavigationController that provides a table on top of navigation bar to show the stack of the navigations"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "This CocoaPod provides the ability to show a stack of navigation on your app through a table at the top of navigation bar. The table is scrolling to maximize the content view. It is similar to the navigation bar you can see in Explore tab of the App Store where users can see their navigation stacks of the categories and sub-categories that they select"

  s.homepage         = "https://github.com/chan1cyrus2/TableScrollNavigation"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Cyrus Chan" => "chan1cyrus2@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/TableScrollNavigation.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'TableScrollNavigation' => ['Pod/Assets/*.png', 'Pod/Classes/**/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
