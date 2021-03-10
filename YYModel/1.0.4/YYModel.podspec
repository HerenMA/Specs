Pod::Spec.new do |s|
  s.name         = 'YYModel'
  s.summary      = 'High performance model framework for iOS/OSX.'
  s.version      = '1.0.4'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/ibireme/YYModel'
  s.source       = { :git => 'https://github.com/HerenMA/YYModel.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.7'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  
  #s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  #s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  #s.tvos.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  #s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'YYModel/*.{h,m}'
    ss.public_header_files = 'YYModel/*.{h}'
  end

  #s.subspec 'Framework' do |ss|
  #  ss.ios.vendored_framework   = 'ios/YYModel.framework'
  #  ss.osx.vendored_framework   = 'osx/YYModel.framework'
  #  ss.watchos.vendored_framework   = 'watchos/YYModel.framework'
  #  ss.tvos.vendored_framework   = 'tvos/YYModel.framework'
  #end
  
  s.frameworks = 'Foundation', 'CoreFoundation'

end
