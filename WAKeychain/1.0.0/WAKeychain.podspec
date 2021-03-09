Pod::Spec.new do |s|
  s.name         = "WAKeychain"
  s.version      = "1.0.0"
  s.summary      = "A wrapper on top of SSKeychain which keeps the values in RAM"
  s.homepage     = "https://github.com/Wasappli/WAKeychain"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Marian Paul" => "marian@wasapp.li" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/HerenMA/WAKeychain.git", :tag => s.version.to_s }

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = "Files/*.{h,m}"
  end
  
  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/WAKeychain.framework'
  end
  
  s.dependency   "SSKeychain/Framework"
  
end
