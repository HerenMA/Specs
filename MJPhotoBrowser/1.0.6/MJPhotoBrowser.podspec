Pod::Spec.new do |s|
    s.name         = "MJPhotoBrowser"
    s.summary      = "The easiest lightest way to use PhotoBrowser, enhanced by Sunnyyoung."
    s.version      = "1.0.6"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { 'azxfire' => 'https://github.com/azxfire' }
    s.homepage     = "https://github.com/Sunnyyoung/MJPhotoBrowser"
    s.source       = { :git => "https://github.com/HerenMA/MJPhotoBrowser.git", :tag => s.version }
    s.platform     = :ios, "9.0"
    s.ios.deployment_target = "9.0"
  
    s.requires_arc = true
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |ss|
      ss.source_files = "MJPhotoBrowser/*.{h,m}"
    end
    
    s.subspec 'Framework' do |ss|
      ss.ios.vendored_framework   = 'ios/MJPhotoBrowser.framework'
    end
    
    s.frameworks = "Foundation", "UIKit", "QuartzCore", "AVFoundation", "AVKit", "Photos"
    s.pod_target_xcconfig = {'VALID_ARCHS' => 'x86_64 armv7 arm64'}
        
    s.dependency 'YYWebImage'
    s.dependency 'SVProgressHUD/Framework'
end
