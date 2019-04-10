#
# Be sure to run `pod lib lint CNLiveSDKs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CNLiveSDKs'
  s.version          = '0.2.9.2'
  s.summary          = 'CNLiveSDKs集合库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
CNLiveSDKs集合,用于内部或多团队集成时使用
                       DESC

  s.homepage         = 'https://github.com/oldSixMrZhang/CNLiveSDKs'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'oldSixMrZhang' => 'zhangxu@cnlive.com' }
  s.source           = { :git => 'https://github.com/oldSixMrZhang/CNLiveSDKs.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '9.0'


  s.subspec 'CNLiveStat' do |sp|
    sp.vendored_frameworks = 'CNLiveSDKs/Classes/CNLiveStat.framework'
  end

  s.subspec 'CNLiveUserSystemSDK' do |sp|
    sp.vendored_frameworks = 'CNLiveSDKs/Classes/CNLiveUserSystemSDK.framework'
  end

  s.subspec 'CNLiveEncryptSDK' do |sp|
    sp.vendored_frameworks = 'CNLiveSDKs/Classes/CNLiveEncryptSDK.framework'
  end
  
  s.subspec 'CNLivePaySDK' do |sp|
      sp.vendored_frameworks = 'CNLiveSDKs/Classes/CNLivePaySDK.framework'
  end

  s.subspec 'CNLiveMsgTools' do |sp|
    sp.vendored_frameworks = 'CNLiveSDKs/Classes/CNLiveMsgTools.framework'
  end

  s.subspec 'CNLivePlayerSDK' do |sp|
    sp.vendored_frameworks = 'CNLiveSDKs/Classes/CNLivePlayerSDK.framework'
    sp.dependency 'libksygpulive_ks3', '~> 3.0.4'
    sp.dependency 'Ks3SDK', '~> 2.1.2'
    sp.dependency 'CNLiveSDKs/CNLiveMsgTools'

  end


end
