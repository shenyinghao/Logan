#
# Be sure to run `pod lib lint Logan.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Logan'
  s.version          = '0.1.3'
  s.summary          = 'A short description of Logan.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/shenyinghao/Logan'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shenyinghao' => '191728786@qq.com' }
  s.source           = { :git => 'https://github.com/shenyinghao/Logan.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

    s.source_files = "MyLogan/iOS/*.{h,m}", "MyLogan/Clogan/*.{h,c}"
    s.public_header_files = "MyLogan/iOS/*.h"

    s.subspec 'mbedtls' do |mbedtls|
        mbedtls.source_files = "MyLogan/mbedtls/**/*.{h,c}"
        mbedtls.header_dir = 'mbedtls'
        mbedtls.private_header_files = "MyLogan/mbedtls/**/*.h"
        mbedtls.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/Logan/MyLogan/**"}
    end
end
