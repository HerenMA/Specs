Pod::Spec.new do |s|
    s.name         = "HRIMFramework"
    s.summary      = "HerenMA IM framework for iOS."
    s.version      = "3.0.5"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/HerenMA/HRIMFramework"
    s.source       = { :http => "https://raw.githubusercontent.com/HerenMA/HRIMFramework/master/HRIMFramework_3.0.5.zip", :sha1 => "7321e4db1a7ddabd633d9c67275955a4e9102db5" }
    s.requires_arc = true
    s.platform     = :ios, "9.0"
    s.ios.deployment_target = "9.0"
    s.frameworks = "Foundation", "UIKit", "WebKit", "AVFoundation"
    s.vendored_frameworks = "HRIMFramework.framework"
    s.resources    = "HRIMSDK.bundle"

    s.dependency 'HRFramework', '~> 1.0.7'
    s.dependency 'HRMJPhotoBrowser', '~> 1.0.3'
    s.dependency 'HRTIMSDK', '~> 2.5.6'

    s.dependency 'KVOController', '~> 1.2.0'
    s.dependency 'HPGrowingTextView', '~> 1.1'
    s.dependency 'JSBadgeView', '~> 1.4.1'
    s.dependency 'MGSwipeTableCell', '~> 1.5.6'
    s.dependency 'MJRefresh', '~> 3.1.15'
    s.dependency 'SVProgressHUD', '~> 2.1.2'
    s.dependency 'SGQRCode', '~> 3.0.1'
    s.dependency 'HHRouter', '~> 0.1.9'
end
