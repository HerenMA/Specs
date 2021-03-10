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
  
  s.ios.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking' }
  s.osx.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking' }
  s.watchos.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking-watchOS' }
  s.tvos.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking' }

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'AFNetworking/AFNetworking.h'
    
    ss.subspec 'Serialization' do |sss|
      sss.source_files = 'AFNetworking/AFURL{Request,Response}Serialization.{h,m}'
    end

    ss.subspec 'Security' do |sss|
      sss.source_files = 'AFNetworking/AFSecurityPolicy.{h,m}'
    end

    ss.subspec 'Reachability' do |sss|
      sss.ios.deployment_target = '9.0'
      sss.osx.deployment_target = '10.10'
      sss.tvos.deployment_target = '9.0'
    
      sss.source_files = 'AFNetworking/AFNetworkReachabilityManager.{h,m}'
    end

    ss.subspec 'NSURLSession' do |sss|
      sss.dependency 'AFNetworking/Core/Serialization'
      sss.ios.dependency 'AFNetworking/Core/Reachability'
      sss.osx.dependency 'AFNetworking/Core/Reachability'
      sss.tvos.dependency 'AFNetworking/Core/Reachability'
      sss.dependency 'AFNetworking/Core/Security'

      sss.source_files = 'AFNetworking/AF{URL,HTTP}SessionManager.{h,m}', 'AFNetworking/AFCompatibilityMacros.h'
    end

    ss.subspec 'UIKit' do |sss|
      sss.ios.deployment_target = '9.0'
      sss.tvos.deployment_target = '9.0'
      sss.dependency 'AFNetworking/Core/NSURLSession'

      sss.source_files = 'UIKit+AFNetworking'
    end
  end
  
  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework = 'ios/AFNetworking.framework'
    ss.osx.vendored_framework = 'osx/AFNetworking.framework'
    ss.watchos.vendored_framework = 'watchos/AFNetworking.framework'
    ss.tvos.vendored_framework = 'tvos/AFNetworking.framework'
  end
  
end
