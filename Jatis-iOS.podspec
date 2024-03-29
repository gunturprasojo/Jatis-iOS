#
# Be sure to run `pod lib lint Jatis-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Jatis-iOS'
  s.version          = '0.2.5.5'
  s.summary          = 'A library for iOS project with Jatis Configuration'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A library iOS project with Jatis standard development guides.
                       DESC

  s.homepage         = 'https://github.com/gunturprasojo/Jatis-iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Guntur Budi' => 'guntur.prasojo@jatis.com' , 'Tirta AR' => 'tirta.rivaldi@jatis.com'}
  s.source           = { :git => 'https://github.com/gunturprasojo/Jatis-iOS.git', :tag => s.version.to_s }
  
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  
  s.platform = :ios, '10.2'
  
  s.source_files =  'JatisView/**/*.{h,m,swift}', 'JatisBanner/**/*.{h,m,swift}' , 'JatisTextField/**/*.{h,m,swift}' , 'JatisTextView/**/*.{h,m,swift}' , 'JatisPopUp/**/*.{h,m,swift}', 'JatisDatePicker/**/*.{h,m,swift}'
  
  s.swift_version = '4.2'
  
  #s.source_files  = 'Jatis-iOS/Classes/*.{h,m}'
  
  #   s.resource_bundles = {
  #  'Jatis-iOS' => ['Jatis-iOS/JatisTextField/AssetTextField/peek.png']
  # }
  
  s.resources = 'JatisTextField/AssetTextField/*.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
