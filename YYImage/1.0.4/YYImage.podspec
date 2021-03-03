Pod::Spec.new do |s|
  s.name = "YYImage"
  s.version = "1.0.4"
  s.summary = "Image framework for iOS to display/encode/decode animated WebP, APNG, GIF, and more."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"ibireme"=>"ibireme@gmail.com"}
  s.homepage = "https://github.com/ibireme/YYImage"
  s.social_media_url = "http://blog.ibireme.com"
  s.requires_arc = true
  s.source = { :git => 'https://github.com/HerenMA/YYImage.git', :tag => s.version.to_s }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.deployment_target    = '6.0'
  s.ios.vendored_framework   = 'ios/YYImage.framework'
end
