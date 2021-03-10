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
    s.requires_arc = true
  
    s.source_files = "HRVoiceConvert/**/*.{h,m}"
    s.public_header_files = "HRVoiceConvert/HRVoiceConvert.h"
    s.vendored_libraries = "HRVoiceConvert/**/*.a"
  
end
