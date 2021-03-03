Pod::Spec.new do |s|
  s.name = "YYCategories"
  s.version = "1.0.4"
  s.summary = "A manager to get iOS keyboard views, frames and transform."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"ibireme"=>"ibireme@gmail.com"}
  s.homepage = "https://github.com/ibireme/YYCategories"
  s.social_media_url = "http://blog.ibireme.com"
  s.frameworks = ["UIKit", "CoreFoundation", "QuartzCore", "CoreGraphics", "CoreImage", "CoreText", "ImageIO", "Accelerate"]
  s.libraries = "z"
  s.requires_arc = true
  s.source = { :git => 'https://github.com/HerenMA/YYCategories.git', :tag => s.version.to_s }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.deployment_target    = '6.0'
  s.ios.vendored_framework   = 'ios/YYCategories.framework'
end
