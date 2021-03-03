Pod::Spec.new do |s|
  s.name = "YYModel"
  s.version = "1.0.4"
  s.summary = "High performance model framework for iOS/OSX."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"ibireme"=>"ibireme@gmail.com"}
  s.homepage = "https://github.com/ibireme/YYModel"
  s.social_media_url = "http://blog.ibireme.com"
  s.frameworks = ["Foundation", "CoreFoundation"]
  s.requires_arc = true
  s.source = { :git => "https://github.com/HerenMA/YYModel.git", :tag => s.version }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.deployment_target    = '6.0'
  s.ios.vendored_framework   = 'ios/YYModel.framework'
  s.osx.deployment_target    = '10.7'
  s.osx.vendored_framework   = 'osx/YYModel.framework'
  s.watchos.deployment_target    = '2.0'
  s.watchos.vendored_framework   = 'watchos/YYModel.framework'
  s.tvos.deployment_target    = '9.0'
  s.tvos.vendored_framework   = 'tvos/YYModel.framework'
end
