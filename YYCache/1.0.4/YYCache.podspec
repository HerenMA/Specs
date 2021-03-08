Pod::Spec.new do |s|
  s.name         = 'YYCache'
  s.summary      = 'High performance cache framework for iOS.'
  s.version      = '1.0.4'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/ibireme/YYCache'
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source       = { :git => 'https://github.com/HerenMA/YYCache.git', :tag => s.version.to_s }

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'YYCache/*.{h,m}'
    ss.public_header_files = 'YYCache/*.{h}'
  end

  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/YYCache.framework'
  end
  
  s.libraries = 'sqlite3'
  s.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore' 

end
