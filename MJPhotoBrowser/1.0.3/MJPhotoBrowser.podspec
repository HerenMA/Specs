Pod::Spec.new do |s|
    s.name         = "MJPhotoBrowser"
    s.summary      = "The easiest lightest way to use PhotoBrowser, enhanced by Sunnyyoung."
    s.version      = "1.0.3"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { 'azxfire' => 'https://github.com/azxfire' }
    s.homepage     = "https://github.com/Sunnyyoung/MJPhotoBrowser"
    s.source       = { :git => "https://github.com/HerenMA/MJPhotoBrowser.git", :tag => s.version }
    s.platform     = :ios, "9.0"
    s.ios.deployment_target = "9.0"

    s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
    s.requires_arc = true
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |ss|
      ss.source_files = "MJPhotoBrowser/*.{h,m}"
    end
    
    s.subspec 'Framework' do |ss|
      ss.ios.vendored_framework   = 'ios/MJPhotoBrowser.framework'
    end
    
    s.frameworks = "Foundation", "UIKit", "QuartzCore"
        
    s.dependency 'YYWebImage'
    
end
