Pod::Spec.new do |s|
    s.name         = "HRVoiceConvert"
    s.summary      = "iOS amr to wav, wav to amr convert."
    s.version      = "1.0.1"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/HerenMA/HRVoiceConvert"
    s.source       = { :git => "https://github.com/HerenMA/HRVoiceConvert.git", :tag => s.version }
    s.platform     = :ios, "9.0"
    s.ios.deployment_target = "9.0"
    s.frameworks = "Foundation", "UIKit"
    s.library      = "stdc++"

    s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
    s.requires_arc = true
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |ss|
      ss.source_files = "HRVoiceConvert/**/*.{h,m}"
      ss.public_header_files = "HRVoiceConvert/HRVoiceConvert.h"
    end
    
    s.subspec 'Framework' do |ss|
      ss.ios.vendored_framework   = 'ios/HRVoiceConvert.framework'
    end
    
    s.vendored_libraries = "HRVoiceConvert/**/*.a"
  
end
