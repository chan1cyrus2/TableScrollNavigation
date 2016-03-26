#
# Be sure to run `pod lib lint TableScrollNavigation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TableScrollNavigation"
  s.version          = "0.1.1"
  s.summary          = "A subclass of UINavigationController that provides a table on top of navigation bar to show the stack of the navigations"

  s.description      = <<-DESC
This CocoaPod provides the ability to show a stack of navigation on your app through a table at the top of navigation bar. The table is scrolling to maximize the content view. It is similar to the navigation bar you can see in Explore tab of the App Store where users can see their navigation stacks of the categories and sub-categories that they select"
                        DESC

  s.homepage         = "https://github.com/chan1cyrus2/TableScrollNavigation"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Cyrus Chan" => "chan1cyrus2@gmail.com" }
  s.source           = { :git => "https://github.com/chan1cyrus2/TableScrollNavigation.git", :tag => "0.1.1" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'TableScrollNavigation' => ['Pod/Assets/*.png', 'Pod/Classes/**/*.xib']
  }
end
