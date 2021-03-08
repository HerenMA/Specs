Pod::Spec.new do |s|
  s.name         = "HPGrowingTextView"
  s.version      = "1.1"
  s.summary      = "Multi-line/Autoresizing UITextView similar to SMS-app."
  s.description  = "An UITextView which grows/shrinks with the text and starts scrolling when the content reaches a certain number of lines."
  s.homepage     = "https://github.com/HansPinckaers/GrowingTextView"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Hans Pinckaers" => "hans.pinckaers@gmail.com" }
  s.source       = { :git => "https://github.com/HerenMA/HPGrowingTextView.git", :tag => s.version.to_s }
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'Classes', 'class/**/*.{h,m}'
  end

  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/HPGrowingTextView.framework'
  end
  
  s.frameworks = 'UIKit'
  
end
