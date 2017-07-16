Pod::Spec.new do |s|
    s.name         = "HR-MJPhotoBrowser"
    s.summary      = "The easiest lightest way to use PhotoBrowser, enhanced by Sunnyyoung."
    s.version      = "1.0.2"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/herenMA/MJPhotoBrowser"
    s.source       = { :git => "https://github.com/herenMA/MJPhotoBrowser.git", :tag => s.version }
    s.requires_arc = true
    s.platform     = :ios, "7.0"
    s.ios.deployment_target = "7.0"
    s.frameworks = "Foundation", "UIKit", "QuartzCore"
    s.source_files = "MJPhotoBrowser/Classes/*.{h,m}"

    s.dependency 'YYWebImage', '~> 1.0.5'
end
