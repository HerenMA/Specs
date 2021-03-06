Pod::Spec.new do |s|
  s.name     = 'AFNetworking'
  s.version  = '4.0.1'
  s.license  = 'MIT'
  s.summary  = 'A delightful networking framework for Apple platforms.'
  s.homepage = 'https://github.com/AFNetworking/AFNetworking'
  s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/HerenMA/AFNetworking.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.ios.frameworks = ["UIKit", "SystemConfiguration", "Security", "MobileCoreServices", "CoreGraphics", "WebKit"]
  s.osx.frameworks = ["SystemConfiguration", "Security", "CoreServices", "CoreGraphics"]
  s.watchos.frameworks = ["WatchKit", "Security", "MobileCoreServices", "CoreGraphics"]
  s.tvos.frameworks = ["UIKit", "SystemConfiguration", "Security", "MobileCoreServices", "CoreGraphics"]
  
  s.ios.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.osx.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking' }
  s.watchos.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking-watchOS' }
  s.tvos.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking', 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'AFNetworking/AFNetworking.h'
  end
  
  s.subspec 'Serialization' do |ss|
    ss.dependency 'AFNetworking/Core'
    
    ss.source_files = 'AFNetworking/AFURL{Request,Response}Serialization.{h,m}'
  end

  s.subspec 'Security' do |ss|
    ss.dependency 'AFNetworking/Core'
    
    ss.source_files = 'AFNetworking/AFSecurityPolicy.{h,m}'
  end

  s.subspec 'Reachability' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.osx.deployment_target = '10.10'
    ss.tvos.deployment_target = '9.0'
    ss.dependency 'AFNetworking/Core'
    
    ss.source_files = 'AFNetworking/AFNetworkReachabilityManager.{h,m}'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'AFNetworking/Core'
    ss.dependency 'AFNetworking/Serialization'
    ss.ios.dependency 'AFNetworking/Reachability'
    ss.osx.dependency 'AFNetworking/Reachability'
    ss.tvos.dependency 'AFNetworking/Reachability'
    ss.dependency 'AFNetworking/Security'

    ss.source_files = 'AFNetworking/AF{URL,HTTP}SessionManager.{h,m}', 'AFNetworking/AFCompatibilityMacros.h'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.tvos.deployment_target = '9.0'
    ss.dependency 'AFNetworking/Core'
    ss.dependency 'AFNetworking/NSURLSession'

    ss.source_files = 'UIKit+AFNetworking'
  end
  
  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework = 'ios/AFNetworking.framework'
    ss.osx.vendored_framework = 'osx/AFNetworking.framework'
    ss.watchos.vendored_framework = 'watchos/AFNetworking.framework'
    ss.tvos.vendored_framework = 'tvos/AFNetworking.framework'
  end
  
end
