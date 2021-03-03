Pod::Spec.new do |s|
  s.name = "YYText"
  s.version = "1.0.7"
  s.summary = "Powerful text framework for iOS to display and edit rich text."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"ibireme"=>"ibireme@gmail.com"}
  s.homepage = "https://github.com/ibireme/YYText"
  s.social_media_url = "http://blog.ibireme.com"
  s.frameworks = ["UIKit", "CoreFoundation", "CoreText", "QuartzCore", "Accelerate", "MobileCoreServices"]
  s.requires_arc = true
  s.source = { :git => 'https://github.com/HerenMA/YYText.git', :tag => s.version.to_s }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.deployment_target    = '6.0'
  s.ios.vendored_framework   = 'ios/YYText.framework'
end
