Pod::Spec.new do |s|
    s.name         = "HRIMFramework"
    s.summary      = "HerenMA IM framework for iOS."
    s.version      = "3.0.0"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/herenMA/HRIMFramework"
    s.source       = { :http => "https://raw.githubusercontent.com/HerenMA/HRIMFramework/master/HRIMFramework_3.0.0.zip", :sha1 => "b0426f5b218eab7097ea6a2509ab1a4f8f34f4ac" }
    s.requires_arc = true
    s.platform     = :ios, "8.0"
    s.ios.deployment_target = "8.0"
    s.frameworks = "Foundation", "UIKit", "AddressBook", "AVFoundation"
    s.vendored_frameworks = "HRIMFramework.framework"
    s.resources    = "HRIMSDK.bundle"

    s.dependency 'HRFramework', '~> 1.0.0'
    s.dependency 'HRMJPhotoBrowser', '~> 1.0.2'
    s.dependency 'HRTIMSDK', '~> 2.5.6'

    s.dependency 'NIMSDK', '~> 3.3.0'
    s.dependency 'KVOController', '~> 1.2.0'
    s.dependency 'HPGrowingTextView', '~> 1.1'
    s.dependency 'JSBadgeView', '~> 1.4.1'
    s.dependency 'MGSwipeTableCell', '~> 1.5.6'
    s.dependency 'MJRefresh', '~> 3.1.12'
    s.dependency 'SVProgressHUD', '~> 2.1.2'
    s.dependency 'LBXScan/LBXNative','~> 2.2'
    s.dependency 'LBXScan/UI','~> 2.2'
end
