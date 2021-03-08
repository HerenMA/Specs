Pod::Spec.new do |s|
  version        = "0.1.9"
  s.name         = "HHRouter"
  s.version      = version
  s.summary      = "Yet another URL Router for iOS."
  s.homepage     = "https://github.com/Huohua/HHRouter/"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Light" => "lightory@gmail.com" }
  s.platform     = :ios, '5.0'
  s.source       = { :git => "https://github.com/HerenMA/HHRouter.git", :tag => version }

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'HHRouter/**/*.{h,m}'
    ss.public_header_files = 'HHRouter/**/*.{h}'
  end
  
  #s.subspec 'Framework' do |ss|
  #  ss.ios.vendored_framework   = 'ios/HHRouter.framework'
  #end
  
end
