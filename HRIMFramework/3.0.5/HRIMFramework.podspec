Pod::Spec.new do |s|
    s.name         = "HRIMFramework"
    s.summary      = "HerenMA IM framework for iOS."
    s.version      = "3.0.5"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/HerenMA/HRIMFramework"
    s.source       = { :http => "https://raw.githubusercontent.com/HerenMA/HRIMFramework/master/HRIMFramework_3.0.5.zip", :sha1 => "bb4d685fd8da09ef7f26f2ddd9b47892db3ea027" }
    s.requires_arc = true
    s.platform     = :ios, "9.0"
    s.ios.deployment_target = "9.0"
    s.frameworks = "Foundation", "UIKit", "WebKit", "AVFoundation"
    s.vendored_frameworks = "HRIMFramework.framework"
    s.resources    = "HRIMSDK.bundle"

    s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.dependency 'HRFramework'
    s.dependency 'TIMSDK'
    s.dependency 'MJPhotoBrowser/Framework'

    s.dependency 'KVOController/Framework'
    s.dependency 'HPGrowingTextView/Framework'
    s.dependency 'JSBadgeView/Framework'
    s.dependency 'MGSwipeTableCell/Framework'
    s.dependency 'MJRefresh/Framework'
    s.dependency 'SVProgressHUD/Framework'
    s.dependency 'HHRouter/Framework'
    s.dependency 'SGQRCode/Framework'

end
