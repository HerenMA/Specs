Pod::Spec.new do |s|
  s.name         = 'IQKeyboardManagerSwift'
  s.summary      = 'Codeless drop-in universal library allows to prevent issues of keyboard sliding up and cover UITextField/UITextView.'
  s.version      = '6.2.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Iftekhar Qurashi' => 'hack.iftekhar@gmail.com' }
  s.homepage     = 'https://github.com/hackiftekhar/IQKeyboardManager'
  s.screenshots  = 'https://raw.githubusercontent.com/hackiftekhar/IQKeyboardManager/master/Screenshot/IQKeyboardManagerScreenshot.png',
  s.source       = { :git => 'https://github.com/HerenMA/IQKeyboardManager.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.swift_versions = ['3.0', '3.2', '4.0', '4.2', '5.0']
  
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.resource   = 'IQKeyboardManagerSwift/Resources/IQKeyboardManager.bundle'
    ss.source_files = 'IQKeyboardManagerSwift/**/*.{swift}'
  end

  #s.subspec 'Framework' do |ss|
  #  ss.resource   = 'IQKeyboardManagerSwift/Resources/IQKeyboardManager.bundle'
  #  ss.ios.vendored_framework   = 'ios/IQKeyboardManagerSwift.framework'
  #end
  
  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'QuartzCore'

end
