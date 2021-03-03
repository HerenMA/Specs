Pod::Spec.new do |s|
  s.name = "YYWebImage"
  s.version = "1.0.5"
  s.summary = "Asynchronous image loading framework."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"ibireme"=>"ibireme@gmail.com"}
  s.homepage = "https://github.com/ibireme/YYWebImage"
  s.social_media_url = "http://blog.ibireme.com"
  s.frameworks = ["UIKit", "CoreFoundation", "QuartzCore", "AssetsLibrary", "ImageIO", "Accelerate", "MobileCoreServices"]
  s.requires_arc = true
  s.source = { :git => 'https://github.com/HerenMA/YYWebImage.git', :tag => s.version.to_s }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.deployment_target    = '6.0'
  s.ios.vendored_framework   = 'ios/YYWebImage.framework'

  s.dependency 'YYImage'
  s.dependency 'YYCache'

end
