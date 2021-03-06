Pod::Spec.new do |s|
  s.name         = 'SSKeychain'
  s.version      = '1.3.1'
  s.summary      = 'Simple Cocoa wrapper for the keychain that works on Mac and iOS.'
  s.homepage     = 'https://github.com/soffes/sskeychain'
  s.author       = { 'Sam Soffes' => 'sam@soff.es' }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.source       = { :git => 'https://github.com/HerenMA/SSKeychain.git', :tag => s.version.to_s }
  s.description  = 'SSKeychain is a simple utility class for making the system keychain less sucky.'
  
  s.requires_arc = true
  s.default_subspec = 'Core'
      
  s.subspec 'Core' do |ss|
    ss.source_files = 'SSKeychain/*.{h,m}'
  end

  s.subspec 'Framework' do |ss|
    ss.osx.vendored_framework   = 'osx/SSKeychain.framework'
    ss.ios.vendored_framework   = 'ios/SSKeychain.framework'
    ss.tvos.vendored_framework   = 'tvos/SSKeychain.framework'
    ss.watchos.vendored_framework   = 'watchos/SSKeychain.framework'
  end
  
  s.frameworks = 'Security', 'Foundation'
  
end
