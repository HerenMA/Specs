Pod::Spec.new do |s|
    s.name         = "HRMJPhotoBrowser"
    s.summary      = "The easiest lightest way to use PhotoBrowser, enhanced by Sunnyyoung."
    s.version      = "1.0.3"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/HerenMA/MJPhotoBrowser"
    s.source       = { :git => "https://github.com/HerenMA/MJPhotoBrowser.git", :tag => s.version }
    s.requires_arc = true
    s.platform     = :ios, "9.0"
    s.ios.deployment_target = "9.0"
    s.frameworks = "Foundation", "UIKit", "QuartzCore"
    s.source_files = "MJPhotoBrowser/Classes/*.{h,m}"

    s.dependency 'YYWebImage', '~> 1.0.6'
end
