Pod::Spec.new do |s|
  s.name     = 'Masonry'
  s.version  = '1.1.0'
  s.license  = 'MIT'
  s.summary  = 'Harness the power of Auto Layout NSLayoutConstraints with a simplified, chainable and expressive syntax.'
  s.homepage = 'https://github.com/cloudkite/Masonry'
  s.author   = { 'Jonas Budelmann' => 'jonas.budelmann@gmail.com' }
  s.social_media_url = "http://twitter.com/cloudkite"
  s.source   = { :git => 'https://github.com/HerenMA/Masonry.git', :tag => s.version.to_s }
  s.description = %{
    Masonry is a light-weight layout framework which wraps AutoLayout with a nicer syntax.
	Masonry has its own layout DSL which provides a chainable way of describing your
	NSLayoutConstraints which results in layout code which is more concise and readable.
    Masonry supports iOS and Mac OSX.
  }

  pch_AF = <<-EOS
    #ifndef TARGET_OS_IOS
        #define TARGET_OS_IOS TARGET_OS_IPHONE
    #endif
    #ifndef TARGET_OS_TV
        #define TARGET_OS_TV 0
    #endif
  EOS

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.tvos.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.frameworks = 'Foundation', 'UIKit'
  s.tvos.frameworks = 'Foundation', 'UIKit'
  s.osx.frameworks = 'Foundation', 'AppKit'

  s.ios.deployment_target = '6.0' # minimum SDK with autolayout
  s.osx.deployment_target = '10.7' # minimum SDK with autolayout
  s.tvos.deployment_target = '9.0' # minimum SDK with autolayout
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'Masonry/*.{h,m}'
  end
  
  #s.subspec 'Framework' do |ss|
  #  ss.ios.vendored_framework    = 'ios/Masonry.framework'
  #  ss.osx.vendored_framework    = 'osx/Masonry.framework'
  #  ss.tvos.vendored_framework   = 'tvos/Masonry.framework'
  #end
  
end
