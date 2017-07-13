Pod::Spec.new do |s|
    s.name         = "HRVoiceConvert"
    s.summary      = "iOS amr to wav, wav to amr convert."
    s.version      = "1.0.0"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/HerenMA/HRVoiceConvert"
    s.source       = { :git => "https://github.com/HerenMA/HRVoiceConvert.git", :tag => s.version }
    s.requires_arc = true
    s.platform     = :ios, "7.0"
    s.ios.deployment_target = "7.0"
    s.frameworks = "Foundation", "UIKit"
    s.library      = "stdc++"

    s.source_files = "HRVoiceConvert/**/*.{h,m,mm}"
    s.vendored_libraries = 'HRVoiceConvert/**/*.a'
    s.public_header_files = 'HRVoiceConvert/Classes/HRVoiceConvert.h'
end
