Pod::Spec.new do |s|
  s.name         = "UIInsetsLabel"
  s.version      = "1.0.0"
  s.summary      = "An UILabel with edge insets designed in storyboard."
  s.description  = "UIInsetsLabel is a UILabel with the edge property, and the edge can be designed in storyboard. Other more, Corner radius is supported"
  s.homepage     = "https://github.com/relayon/UIInsetsLabel"
  s.license      = "MIT"
  s.author       = { "Alek Ye" => "alekye@qq.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/HerenMA/UIInsetsLabel.git", :tag => s.version.to_s }
  
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files  = "UIInsetsLabel/*.{h,m}"
  end

  #s.subspec 'Framework' do |ss|
  #  ss.ios.vendored_framework   = 'ios/UIInsetsLabel.framework'
  #end
    
end
