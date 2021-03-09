Pod::Spec.new do |s|
  s.name         = "SPPageMenu"
  s.version      = "2.5.5"
  s.summary      = "分页菜单."
  s.description  = <<-DESC
			    这是一个分页菜单
                   DESC
  s.homepage     = "https://github.com/SPStore/SPPageMenu"
  s.license      = "MIT"
  s.author       = { "SPStore" => "lesp163@163.com" }
  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/HerenMA/SPPageMenu.git", :tag => s.version }
  
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'SPPageMenu/*.{h,m}'
  end

  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/SPPageMenu.framework'
  end
  
end
